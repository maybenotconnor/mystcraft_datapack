
#Recipe Book
scoreboard players enable @a mystguide
execute as @a[scores={mystguide=1..}] at @s run give @s written_book{display:{Name:'{"text":"Mystcraft Guide Book","bold":true,"italic":false}'},CustomModelData:681,title:"Mystcraft Guide Book",author:"MaybeNotConnor",generation:0,pages:['{"text":"Welcome to Mystcraft!\\n\\n There are many world waiting to be explored.\\nTo create the teleport books, drop the items listed on the ground together.\\nClicking in the book will bring you to your relative coordinates in that dimension."}','{"text":"Books can be opened and clicked in to teleport into their dimension. \\n\\n When used, books are dropped at their current location.\\n\\nThis book describes the books and dimensions."}','{"text":"Moving entities:\\n\\nIf you would like to move an animal or mob across dimensions, hold a lead in your offhand when using a dimensional book. The nearest entity within 6 blocks will teleport with you. This does not teleport players or dropped items."}','{"text":"Important!\\n\\nSince books are dropped on use, always bring a way out! This can be in the form of an overworld or linking book.\\nIt is recommended to use lecterns which can be crafted with a T of slabs in a crafting table."}','{"text":"Linking Book:\\nBook + Ender Pearl\\n\\nThe most powerful of all books. When used, each link book will teleport back to where it was crafted. These cannot be placed on lecterns. Link books can be renamed in an anvil (remember where they go!)"}','{"text":"Overworld:\\nBook&Quill + Wheat Seeds\\n\\nThis book is very important! Using this book brings you to the relative coordinates in the overworld."}','{"text":"Cave World:\\nBook&Quill + Cobblestone\\n\\nThis world contains endless caves and many ores without gold or redstone. \\n Remember to ascend before returning to the overworld.\\nThis world is easy to get trapped in - bring a way out!"}','{"text":"Sanctuary:\\nBook&Quill + Apple\\n\\nSanctuary is a beautiful peaceful world without mobs, night, or ores. Very nice for building and living in."}','{"text":"Archipeligo:\\nBook&Quill + Water Bottle\\n\\nThis is an island world with dark oak forests. Good for ocean monuments and wood! Or water bases!\\nAn underwater iceberg contains a chest with the Ice World book."}','{"text":"Ice World:\\nFound in Archipeligo\\n\\nThis ice sheet contains frozen oceans, glaciers, and  mountains. There are also forests forming around hot magma lakes.\\nOn the glaciers you may find an igloo with the Wasteland Book."}','{"text":"Wasteland:\\nFound in Ice World\\n\\nThis world is hot and burned, mostly covered in mesa and lava deltas. Among these biomes one can find desert temples, mineshafts, and a dark tower with the Nightmare Book. This world is filled with gold and redstone."}','{"text":"Nightmare:\\nFound in Wasteland\\n\\nThis deadly world has many witches, endermen, and phantoms. If you survive you will find nether fortresses, bastions, and the Village Book. \\nDo not enter unless prepared!"}','{"text":"The Village:\\nFound in Nightmare\\n\\nThe superflat village dimension is the go-to for trading. The surface (at y=70) is covered in villages that continue endlessly."}','{"text":"Pocket Dimension:\\nBook&Quill + Crying Obsidian\\n\\nThis dark world has the unique feature of one block in this world being 32 blocks in the overworld, similar to the nether. This makes it easy to travel long distances."}','{"text":"Death Book:\\nBook + Bone\\n\\nThis book is a one-way ticket back to where the player last died. It is consumed on use and can only be used once per death."}','{"text":"Player Book:\\nBook + Player Head\\n\\nIf you manage to obtain the head of a player, this powerful book will teleport you directly to them. \\nA player head can be obtained if the player is killed by a charged creeper."}','[{"text":"Torn Book:\\nBook + Shears\\n\\n"},{"text":"This","obfuscated":true},{"text":" Why would"},{"text":" you do this","obfuscated":true},{"text":"? \\n"},{"text":"This book is ","obfuscated":true},{"text":"very dangerous"},{"text":" and teleports the player to","obfuscated":true},{"text":" a random"},{"text":" dimension.\\n\\n Do not use this!","obfuscated":true}]']} 1
scoreboard players remove @a[scores={mystguide=1..}] mystguide 1

#Link Book Teleport
execute as @a[scores={linkbookuse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{linkbook:1b}}}] at @s run function mystcraft:linkbook/link_tp_player
scoreboard players remove @a[scores={linkbookuse=1..}] linkbookuse 1

#Skull Book Teleport
scoreboard players add @a deathY 0
execute as @a[scores={skullbookuse=1..,death_lastUsed=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{skullbook:1b}}}] in overworld at @s unless score @s deathY matches 0 run function mystcraft:deathbook/player_death_tp
scoreboard players remove @a[scores={skullbookuse=1..}] skullbookuse 1

#PlayerBook Teleport
execute as @a[scores={playerbookuse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{playerbook:1b}}}] at @s run function mystcraft:playerbook/playerbook_tp
scoreboard players remove @a[scores={playerbookuse=1..}] playerbookuse 1

#Torn Book Teleport
execute as @a[scores={tornbookuse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{tornbook:1b}}}] at @s run function mystcraft:tornbook/tornbook_tp
scoreboard players remove @a[scores={tornbookuse=1..}] tornbookuse 1

#Cave Dimension Teleport
execute as @a[scores={cavetele=1..}] at @s run function mystcraft:dim_teles/func_cave

#Village Dimension Teleport
execute as @a[scores={villagetele=1..}] at @s run function mystcraft:dim_teles/func_village

#Volcano Dimension Teleport
execute as @a[scores={volcanotele=1..}] at @s run function mystcraft:dim_teles/func_volcano

#Twilight Dimension Teleport
execute as @a[scores={twilighttele=1..}] at @s run function mystcraft:dim_teles/func_twilight

#Overworld Teleport
execute as @a[scores={overworldtele=1..}] at @s run function mystcraft:dim_teles/func_overworld

#Archipeligo Dimension Teleport
execute as @a[scores={archipeligotele=1..}] at @s run function mystcraft:dim_teles/func_archipeligo

#Sanctuary Dimension Teleport
execute as @a[scores={sanctuarytele=1..}] at @s run function mystcraft:dim_teles/func_sanctuary

#Ice Dimension Teleport
execute as @a[scores={icetele=1..}] at @s run function mystcraft:dim_teles/func_ice

#Small Dimension Teleport
execute as @a[scores={smalltele=1..}] at @s run function mystcraft:dim_teles/func_small
