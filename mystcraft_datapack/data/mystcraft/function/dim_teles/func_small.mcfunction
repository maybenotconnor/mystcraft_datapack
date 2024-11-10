#drops book 
function mystcraft:dim_teles/drop_book

#entity tp if holding lead
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:lead"}]},nbt=!{Dimension:"minecraft:overworld"}] at @s run execute as @e[limit=1,sort=nearest,distance=..6,type=!player,type=!item] in mystworlds:small positioned as @s run tp @s ~ 100 ~
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:lead"}]}] at @s run execute as @e[limit=1,sort=nearest,distance=..6,type=!player,type=!item] in mystworlds:small at @s run tp @s ~ 100 ~

#if already in pocket dim
execute as @s[nbt={Dimension:"mystworlds:small",Inventory:[{Slot:-106b,id:"minecraft:lead"}]}] at @s run execute as @e[limit=1,sort=nearest,distance=..6,type=!player,type=!item] at @s in minecraft:overworld run spreadplayers ~ ~ 0 16 false @s 

#if already in pocket, then tp to overworld
execute at @s[nbt={Dimension:"mystworlds:small"}] run tag @s add myst.pocket.exit

execute at @s[nbt={Dimension:"mystworlds:small"},tag=myst.pocket.exit] in minecraft:overworld run spreadplayers ~ ~ 0 16 false @s 
execute at @s[nbt={Dimension:"mystworlds:small"},tag=myst.pocket.exit] in minecraft:overworld run tp @s ~ ~ ~

#if coming from dim other than overworld, put at non-scaled coordinates
execute at @s[nbt=!{Dimension:"mystworlds:small"},nbt=!{Dimension:"minecraft:overworld"},tag=!myst.pocket.exit] in mystworlds:small positioned as @s run tp @s ~ 100 ~

#run tp
execute at @s[nbt=!{Dimension:"mystworlds:small"},tag=!myst.pocket.exit] in mystworlds:small run tp @s ~ 100 ~

tag @s remove myst.pocket.exit

execute run function mystcraft:tpeffect
scoreboard players remove @s smalltele 1
