#drops book 
function mystcraft:dim_teles/drop_book

#entity tp if holding lead
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:lead"}]}] at @s run execute as @e[limit=1,sort=nearest,distance=..6,type=!player,type=!item] at @s in mystworlds:warrens run tp @s ~ 64 ~
#run tp
execute at @s[nbt=!{Dimension:"mystworlds:warrens"}] in mystworlds:warrens run tp @s ~ 64 ~
execute run function mystcraft:tpeffect
scoreboard players remove @s warrentele 1
