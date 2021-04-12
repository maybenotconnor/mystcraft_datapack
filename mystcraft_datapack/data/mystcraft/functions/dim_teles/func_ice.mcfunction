#drops book 
function mystcraft:dim_teles/drop_book

#entity tp if holding lead
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:lead"}]}] at @s run execute as @e[limit=1,sort=nearest,distance=..6,type=!player,type=!item] at @s in mystworlds:ice run tp @s ~ ~ ~

#run tp
execute as @s at @s in mystworlds:ice run tp @p ~ ~ ~
scoreboard players add @s teleporting 1
scoreboard players remove @s icetele 1
