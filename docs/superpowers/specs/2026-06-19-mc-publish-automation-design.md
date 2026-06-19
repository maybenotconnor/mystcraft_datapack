# Automated publishing (GitHub Releases + Modrinth) — design

**Date:** 2026-06-19
**Status:** Approved

## Goal

Automate packaging and publishing of the Mystcraft data pack and resource pack
to GitHub Releases and Modrinth, replacing the manual "zip two folders, upload
to a release, then re-upload to Modrinth" process.

## Current process (baseline)

- Repo has two top-level folders: `mystcraft_datapack/` and `mystcraft_resources/`,
  each containing `pack.mcmeta`, `pack.png`, and content (`data/` or `assets/`).
- A GitHub Release (tag `vX.Y.Z`, hand-written changelog in the body) carries two
  zip assets: `mystcraft_datapack_vX.Y.Z.zip` and `mystcraft_resources_vX.Y.Z.zip`.
  Each zip is built from the folder's **contents**, so `pack.mcmeta` is at the zip
  root (required for Minecraft to load it).
- Modrinth project `mystcraft-data-pack` (id `c70X558N`). Each version uses loader
  `datapack`, version number `X.Y.Z` (no `v`), the datapack zip as the **primary**
  file and the resources zip as a **secondary** file, plus a manually-set list of
  compatible game versions (e.g. `26.1, 26.1.1, 26.1.2`).

## Design

### Trigger
`on: release: published`. The maintainer still creates the GitHub Release by hand
(tag + title + changelog body) but does **not** attach zips. The workflow does the
rest. The release is the single source of truth for version (tag) and changelog (body).

### Tool
[`Kir-Antipov/mc-publish@v3.3.0`](https://github.com/marketplace/actions/mc-publish),
pinned to the latest stable tag.

### Workflow steps (`.github/workflows/publish.yml`)
1. Checkout.
2. Compute metadata: `tag` (`vX.Y.Z`), `version` (`X.Y.Z`, leading `v` stripped to
   match Modrinth history), and the game-version list read from the config file.
3. Build both zips from each folder's contents (`zip -r -X`, excluding `.DS_Store`
   and `__MACOSX`). Filenames keep the `v` prefix to match existing assets.
4. `mc-publish` with:
   - `modrinth-id: c70X558N`, `modrinth-token: ${{ secrets.MODRINTH_TOKEN }}`,
     `github-token: ${{ secrets.GITHUB_TOKEN }}`
   - `files:` datapack zip first (→ Modrinth **primary**), resources zip second
     (→ **secondary**)
   - `version` = stripped version, `name` = release name, `changelog` = release body
   - `loaders: datapack`, `game-versions` from config
   - version type auto-detected from the tag (`-alpha`/`-beta` → alpha/beta)

`permissions: contents: write` so the action can upload assets to the release.

### Config
`.github/mc-game-versions.txt` — the compatible Minecraft versions, edited in the
same commit as the `pack.mcmeta` `pack_format` bump each MC update. Initialized to
`26.2`.

### Secrets (one-time)
- `MODRINTH_TOKEN` — a Modrinth PAT with version-write scope. **Already set.**
- `GITHUB_TOKEN` — provided automatically by Actions.

## Artifact contract (must not regress)
Each zip must contain `pack.mcmeta` + `pack.png` + content dir at its **root**, with
no `__MACOSX`/`.DS_Store` entries. Verified by diffing generated zips against the
published v1.7.10 assets (structure identical).

## Verification
- Local: built candidate zips and diffed entry lists against published v1.7.10
  assets — identical. (Done.)
- Live: validated on the next real release. A bad Modrinth version or release asset
  set is deletable and the release can be re-published to re-run.

## Out of scope
- CurseForge (project not published there).
- Auto-generating the changelog (maintainer writes it in the release body).
- Publishing the resource pack as a separate Modrinth project (kept bundled as a
  secondary file, matching current layout).

## Maintenance notes
Each MC update: bump `pack.mcmeta` in both packs, update
`.github/mc-game-versions.txt`, commit, then create a GitHub Release. The pinned
`mc-publish@v3.3.0` can be bumped if/when a newer stable release is needed.
