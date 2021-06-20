# Minecraft Mystcraft Datapack
Datapack addon for Minecraft Java Edition 1.17 based on the popular game MYST, adding interdimensional book travel.

## Installation
To install, move the mystcraft_datapack folder into .minecraft/saves/YOURSAVE/datapacks

Then add the mystcraft_resources.zip into .minecraft/resourcepacks and activate it in the GUI

## How to play
Mystcraft adds 8 new dimensions to explore! These dimensions can be opened with relative coordinate dimension books you can craft.
You can also craft link books to teleport you to where they were crafted. 
#### Current Dimensions:
- Caves Dimension
- Village World
- Archipeligo
- Wasteland
- Nightmare
- Sanctuary
- Ice Age
- Pocket Dimension
- Skylands
- Rock Age
- Warrens

(descriptions can be found in the in-game guide)
#### In-Game Guide:
>/trigger mystguide

## Contributing
If anyone wants to add features go ahead and fork and I will most likely merge pull requests. Anything on the future plans list is up for grabs.

Also, please report any bugs and I will fix them asap.

### Future Plans
If other datapack developers are interested, feel free to implement these below:
- Better structures
- Custom features for new biomes

## Technical Notes
- Datapack version 1.4 and up are for mc 1.17 and are incompatible with 1.16 worlds. If you are planning to update from a 1.16 world, you must re-craft all link books as any from 1.16 will not function.
- If running on a server, you can comment out a line dealing with teleport trigger permissions in data/mystcraft/loop.mcfunction 
This will protect against teleporting to a dimension without the proper book, but does not work in singleplayer due to the game pausing when a book is opened
- This is not compatible with spigot servers, as custom dimensions are stored differently

Thanks to Vanilla Tweaks and the Minecraft Commands subreddit/discord for helping this datapack become a reality.
