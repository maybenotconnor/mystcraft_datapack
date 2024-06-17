#drops book 
function mystcraft:dim_teles/drop_book

#entity tp if holding lead
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:lead"}]}] at @s run execute as @e[limit=1,sort=nearest,distance=..6,type=!player,type=!item] at @s in minecraft:overworld run tp @s ~ ~ ~

#run tp, if in dimension that is smaller use spreadplayers to find air, yes this teleports you twice, currently has no fail checking
execute at @s[nbt={Dimension:"mystworlds:small"}] in minecraft:overworld run spreadplayers ~ ~ 0 16 false @s
execute at @s[nbt={Dimension:"minecraft:nether"}] in minecraft:overworld run spreadplayers ~ ~ 0 16 false @s
execute at @s in minecraft:overworld run tp @s ~ ~ ~
execute run function mystcraft:tpeffect
scoreboard players remove @s overworldtele 1
