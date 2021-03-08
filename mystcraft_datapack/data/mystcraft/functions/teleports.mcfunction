
#Recipe Book
scoreboard players enable @a mystguide
execute as @a[scores={mystguide=1..}] at @s run give @s written_book{display:{Name:'{"text":"Mystcraft Guide Book","bold":true,"italic":false}'},CustomModelData:691,title:"Mystcraft Guide Book",author:"MaybeNotConnor",generation:0,pages:['{"text":"Welcome to Mystcraft!\\n\\n There are many world waiting to be explored.\\nTo create the teleport books, drop the items listed on the ground together.\\nClicking in the book will bring you to your relative coordinates in that dimension."}','{"text":"Books can be opened and clicked in to teleport into their dimension. \\n\\n When used, books are dropped at their current location.\\n\\nThis book describes the books you can make."}','{"text":"Moving entities:\\n\\nIf you would like to move an animal or mob across dimensions, hold a lead in your offhand when using a dimensional book. The nearest entity within 6 blocks will teleport with you. This does not teleport players or dropped items."}','{"text":"Important!\\n\\nSince books are dropped on use, always bring a way out! This can be in the form of an overworld or linking book.\\nIt is recommended to use lecturns which can be crafted with a T of slabs in a crafting table."}','{"text":"Linking Book:\\nBook + Ender Pearl\\n\\nThe most powerful of all books. When used, each link book will teleport back to where it was crafted. These cannot be placed on lecterns. Link books can be renamed in an anvil (remember where they go!)"}','{"text":"Overworld:\\nBook + Wheat Seeds\\n\\nThis book is very important! Using this book brings you to the relative coordinates in the overworld."}','{"text":"Cave World:\\nBook + Cobblestone\\n\\nThis world contains endless caves and increased ore spawns. \\n Remember to ascend before returning to the overworld.\\nThis world is easy to get trapped in - bring a way out!"}','{"text":"Sanctuary:\\nBook + Apple\\n\\nSanctuary is a beautiful peaceful world without mobs or ores. Very nice for building in."}','{"text":"Ice World:\\nBook + Snowball\\n\\nThis ice sheet contains frozen oceans, glaciers, and  mountains. There are also forests forming around hot magma lakes."}','{"text":"Archipeligo:\\nBook + Oak Boat\\n\\nThis is an island world with dark oak forests. Good for ocean monuments and wood! Or water bases!"}','{"text":"Nightmare:\\nBook + Clock\\n\\nThis deadly world has many witches, endermen, and phantoms. If you survive you will find nether fortresses and bastions. \\nDo not enter unless prepared!"}','{"text":"Wasteland:\\nBook + Coal\\n\\nFrom Mesa to Desert to Volcano, this world is hot. Among these biomes one can find desert temples, mineshafts, and lots of gold."}','{"text":"The Village:\\nBook + Emerald\\n\\nThe superflat village dimension is the go-to for trading. The surface (at y=70) is covered in villages that continue endlessly."}','{"text":"Pocket Dimension:\\nBook + Diamond\\n\\nThis dark world has the unique feature of one block in this world being 32 blocks in the overworld. This is like the nether on steroids! This makes it easy to travel long distances."}','{"text":"Death Book:\\nBook + Bone\\n\\nThis book is a one-way ticket back to where the player last died. It is consumed on use and can only be used once per death."}']} 1
scoreboard players remove @a[scores={mystguide=1..}] mystguide 1

#Link Book Teleport
execute as @a[scores={linkbookuse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{linkbook:1b}}}] at @s run function mystcraft:linkbook/link_tp_player
scoreboard players remove @a[scores={linkbookuse=1..}] linkbookuse 1

#Skull Book Teleport
scoreboard players add @a deathY 0
execute as @a[scores={skullbookuse=1..,death_lastUsed=..0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{skullbook:1b}}}] in overworld at @s unless score @s deathY matches 0 run function mystcraft:deathbook/player_death_tp
scoreboard players remove @a[scores={skullbookuse=1..}] skullbookuse 1

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
