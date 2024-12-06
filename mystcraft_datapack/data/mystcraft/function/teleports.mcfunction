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
#execute as @a[scores={overworldtele=1..}] at @s run function mystcraft:dim_teles/func_overworld
execute as @a[scores={archipelagotele=1..}] at @s run function mystcraft:dim_teles/func_archipelago
execute as @a[scores={sanctuarytele=1..}] at @s run function mystcraft:dim_teles/func_sanctuary
#execute as @a[scores={icetele=1..}] at @s run function mystcraft:dim_teles/func_ice
execute as @a[scores={smalltele=1..}] at @s run function mystcraft:dim_teles/func_small
#execute as @a[scores={rocktele=1..}] at @s run function mystcraft:dim_teles/func_rock
execute as @a[scores={warrentele=1..}] at @s run function mystcraft:dim_teles/func_warrens
execute as @a[scores={skylandtele=1..}] at @s run function mystcraft:dim_teles/func_skyland
