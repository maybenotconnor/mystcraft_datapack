
#Recipe Book - NBT NOT UPDATED
#scoreboard players enable @a mystguide
#execute as @a[scores={mystguide=1..}] at @s run give @s written_book{display:{Name:'{"text":"Mystcraft Guide Book","bold":true,"italic":false}'},CustomModelData:681,title:"Mystcraft Guide Book",author:"MaybeNotConnor",generation:0,pages:['{"text":"Welcome to Mystcraft!\\n\\nThese books can help you travel quickly.\\nTo craft books, drop the required items on the ground together.\\n\\nThis is the \'lite\' version, which does not include dimensions. Compatible MC v1.18"}','{"text":"When used, books are dropped at their current location.\\n\\nThis book describes the books and how to craft them."}','{"text":"Linking Book:\\nBook + Ender Pearl\\n\\nThe most powerful of all books. When used, each link book will teleport back to where it was crafted. These cannot be placed on lecterns. Link books can be renamed in an anvil (remember where they go!)"}','{"text":"Death Book:\\nBook + Bone\\n\\nThis book is a one-way ticket back to where the player last died. It is consumed on use and can only be used once per death."}','{"text":"Player Book:\\nBook + Player Head\\n\\nIf you manage to obtain the head of a player, this powerful book will teleport you directly to them. \\nA player head can be obtained if the player is killed by a charged creeper."}','[{"text":"Torn Book:\\nBook + Shears\\n\\n"},{"text":"This","obfuscated":true},{"text":" Why would"},{"text":" you do this","obfuscated":true},{"text":"? \\n"},{"text":"This book is ","obfuscated":true},{"text":"very dangerous"},{"text":" and teleports the player to","obfuscated":true},{"text":" a random"},{"text":" dimension.\\n\\n Do not use this!","obfuscated":true}]']} 1
#scoreboard players remove @a[scores={mystguide=1..}] mystguide 1

#Link Book Teleport
execute as @a[scores={carrotbookuse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{linkbook:1}}}}] at @s run function mystcraft:linkbook/link_teleport

#Skull Book Teleport
execute as @a[scores={carrotbookuse=1..,mystdeath_uses=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{skullbook:1}}}}] at @s run function mystcraft:deathbook/death_teleport

#PlayerBook Teleport
execute as @a[scores={carrotbookuse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{playerbook:1}}}}] at @s run function mystcraft:playerbook/playerbook_tp

#Torn Book Teleport
execute as @a[scores={carrotbookuse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tornbook:1}}}}] at @s run function mystcraft:tornbook/tornbook_tp
scoreboard players remove @a[scores={carrotbookuse=1..}] carrotbookuse 1

#Dimenional teleports
#execute as @a[scores={cavetele=1..}] at @s run function mystcraft:dim_teles/func_cave
#execute as @a[scores={villagetele=1..}] at @s run function mystcraft:dim_teles/func_village
execute as @a[scores={volcanotele=1..}] at @s run function mystcraft:dim_teles/func_wasteland
#execute as @a[scores={twilighttele=1..}] at @s run function mystcraft:dim_teles/func_twilight
execute as @a[scores={overworldtele=1..}] at @s run function mystcraft:dim_teles/func_overworld
execute as @a[scores={archipelagotele=1..}] at @s run function mystcraft:dim_teles/func_archipelago
execute as @a[scores={sanctuarytele=1..}] at @s run function mystcraft:dim_teles/func_sanctuary
#execute as @a[scores={icetele=1..}] at @s run function mystcraft:dim_teles/func_ice
execute as @a[scores={smalltele=1..}] at @s run function mystcraft:dim_teles/func_small
#execute as @a[scores={rocktele=1..}] at @s run function mystcraft:dim_teles/func_rock
execute as @a[scores={warrentele=1..}] at @s run function mystcraft:dim_teles/func_warrens
#execute as @a[scores={skylandtele=1..}] at @s run function mystcraft:dim_teles/func_skyland
