#drops book 
function mystcraft:dim_teles/drop_book

#entity tp if holding lead
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:lead"}]}] at @s run execute as @e[limit=1,sort=nearest,distance=..6,type=!player,type=!item] at @s in mystworlds:village run tp @s ~ 70 ~

#run tp
execute as @s at @s in mystworlds:village run tp @s ~ 70 ~
scoreboard players add @s teleporting 1
scoreboard players remove @s villagetele 1
