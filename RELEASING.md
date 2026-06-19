# Releasing

Releases are **automated**. Publishing a GitHub Release builds the data pack and
resource pack zips, attaches them to the release, and publishes a matching version
to Modrinth — no manual zipping or uploading.

- Workflow: [`.github/workflows/publish.yml`](.github/workflows/publish.yml)
- Action used: [`Kir-Antipov/mc-publish@v3.3.0`](https://github.com/Kir-Antipov/mc-publish)
- Modrinth project: [`mystcraft-data-pack`](https://modrinth.com/datapack/mystcraft-data-pack) (id `c70X558N`)
- Design rationale: [`docs/superpowers/specs/2026-06-19-mc-publish-automation-design.md`](docs/superpowers/specs/2026-06-19-mc-publish-automation-design.md)

## How to cut a release

1. **Make your pack changes** on `main` (or merge them in).
2. **If the Minecraft version changed**, update the pack formats and the game-version list:
   - `mystcraft_datapack/pack.mcmeta` → `min_format`/`max_format` (data pack format)
   - `mystcraft_resources/pack.mcmeta` → `min_format`/`max_format` (resource pack format)
   - `.github/mc-game-versions.txt` → the compatible Minecraft version(s) for Modrinth
     (one per line or comma-separated, e.g. `26.2` or `26.2, 26.2.1`)

   The current pack formats and Minecraft versions are published in Mojang's release
   changelog under "Technical Changes" (look for "The Data Pack version is now X" and
   "The Resource Pack version is now Y").
3. **Commit and push** to `main`.

   > ⚠️ Push **before** publishing the release. For `release` events, GitHub Actions
   > runs the workflow from the **default branch's latest commit**, not from the
   > tagged commit. If the workflow or config isn't on `main` yet, the release won't
   > publish correctly.
4. **Publish a GitHub Release**:
   - Tag: `vX.Y.Z` (e.g. `v1.7.11`)
   - Title: e.g. `Mystcraft Datapack v1.7.11`
   - Notes: the changelog. **This body becomes the Modrinth changelog**, so write it
     for players.
   - **Do not** attach any files — the workflow uploads them.

   Via the GitHub UI, or the CLI:
   ```sh
   gh release create v1.7.11 \
     --title "Mystcraft Datapack v1.7.11" \
     --notes-file notes.md \
     --target main
   ```
5. **Watch the run** and confirm it succeeded:
   ```sh
   gh run watch "$(gh run list --workflow=publish.yml --limit 1 --json databaseId --jq '.[0].databaseId')" --exit-status
   ```

## What the workflow produces

Two zip assets, on both the GitHub Release and the Modrinth version:

| File | Built from | Role on Modrinth |
| --- | --- | --- |
| `mystcraft_datapack_vX.Y.Z.zip` | contents of `mystcraft_datapack/` | **primary** |
| `mystcraft_resources_vX.Y.Z.zip` | contents of `mystcraft_resources/` | secondary |

Each zip is built from the folder's **contents** (not the folder itself), so
`pack.mcmeta` sits at the zip root — required for Minecraft to load the pack.

The Modrinth version is created with:
- `version_number` = the tag with the leading `v` stripped (e.g. `1.7.11`)
- `loaders` = `datapack`
- `game-versions` = contents of `.github/mc-game-versions.txt`
- `version_type` = auto-detected from the tag: `-alpha`/`-beta`/`-rc` in the tag
  publish to that channel; otherwise `release`

## Secrets

Configured under **repo Settings → Secrets and variables → Actions**:

- `MODRINTH_TOKEN` — a Modrinth Personal Access Token with **Create versions**
  (write) scope. Create/rotate at <https://modrinth.com/settings/pats>.
- `GITHUB_TOKEN` — provided automatically by Actions; no setup needed.

To rotate the Modrinth token, create a new PAT and update the secret in the UI, or:
```sh
printf '%s' '<new-token>' | gh secret set MODRINTH_TOKEN --app actions
```

## Versioning

Tags follow `vMAJOR.MINOR.PATCH`. Recent convention: bump the **patch** for routine
Minecraft-version compatibility updates; bump the **minor** when adding new in-game
content (dimensions, features). Pre-release tags (`v1.5-alpha`) publish to Modrinth's
alpha channel automatically.

## Troubleshooting

- **Run failed** — open the failed run (`gh run view --log-failed`). Most failures are
  an expired/invalid `MODRINTH_TOKEN` or malformed `.github/mc-game-versions.txt`.
- **Need to redo a release** — delete the bad Modrinth version (on the project's
  Versions page) and the GitHub Release assets, then re-publish the release (or
  re-run the workflow from the Actions tab) to regenerate everything.
- **Modrinth rejects a game version** — the value in `.github/mc-game-versions.txt`
  must exactly match a version Modrinth recognizes (e.g. `26.2`, not `1.26.2`).
