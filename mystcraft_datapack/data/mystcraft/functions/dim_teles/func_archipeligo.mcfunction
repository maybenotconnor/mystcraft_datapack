#drops book 
function mystcraft:dim_teles/drop_book

#entity tp if holding lead
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:lead"}]}] at @s run execute as @e[limit=1,sort=nearest,distance=..6,type=!player,type=!item] at @s in mystworlds:archipeligo run tp @s ~ ~ ~

#run tpW
execute at @s in mystworlds:archipeligo run tp @s ~ ~ ~
execute run function mystcraft:tpeffect
scoreboard players remove @s archipeligotele 1
