#drops book 
function mystcraft:dim_teles/drop_book

#entity tp if holding lead
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:lead"}]}] at @s run execute as @e[limit=1,sort=nearest,distance=..6,type=!player,type=!item] at @s in mystworlds:sanctuaryworld run tp @s ~ ~ ~

#run tp
execute at @s[nbt={Dimension:"mystworlds:small"}] in mystworlds:sanctuary run spreadplayers ~ ~ 0 16 false @s
execute at @s[nbt={Dimension:"minecraft:nether"}] in mystworlds:sanctuary run spreadplayers ~ ~ 0 16 false @s
execute at @s in mystworlds:sanctuary run tp @s ~ ~ ~
execute run function mystcraft:tpeffect
scoreboard players remove @s sanctuarytele 1
