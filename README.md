# Minecraft Mystcraft Datapack
Datapack addon for Minecraft Java Edition 1.16 based on the popular game MYST, adding interdimensional book travel.

##Installation
To install, move the mystcraft_datapack folder into .minecraft/saves/YOURSAVE/datapacks
Then add the mystcraft_resources.zip into .minecraft/resourcepacks

##How to play
Mystcraft adds 8 new dimensions to explore! These dimensions can be opened with relative coordinate dimension books you can craft.
You can also craft link books to teleport you to where they were crafted. 
####Current Dimensions:
-Caves Dimension
-Village World
-Archipeligo
-Wasteland
-Nightmare
-Sanctuary
-Ice Age
-Pocket Dimension
(descriptions can be found in the in-game guide)
####In-Game Guide:
>/trigger mystguide

##Contributing
I designed Mystcraft to run on a light server, therefore there is no custom structures or features in the dimensions. If someone who better understands them would like to fork and add some, please do! I will likely merge to main and add credits.
Also please report any bugs and I will fix them asap.

##Technical Notes
-If running on a server, you can comment out a line dealing with teleport trigger permissions in data/mystcraft/loop.mcfunction 
This will protect against teleporting to a dimension without the proper book, but does not work in singleplayer due to the game pausing when a book is opened
-This is not compatible with spigot servers, as custom dimensions are stored differently
-Designed on Java version 1.16.5, probably works with all of 1.16, but is untested with 1.17 snapshots. I will update on release.

Thanks to Vanilla Tweaks and the Minecraft Commands subreddit/discord for helping this datapack become a reality.
