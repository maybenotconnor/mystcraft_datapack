#drops book 
function mystcraft:dim_teles/drop_book

#LEASHED TO PLAYER
execute as @s run function mystcraft:mobs/player_score
#LEASHED ENTITY
execute at @s as @e[distance=..10,type=!player,type=!item] if data entity @s leash run function mystcraft:mobs/leashed_score {tag: myst.mob.tping}

#run tp
execute at @s[nbt=!{Dimension:"mystworlds:ice"}] in mystworlds:ice run spreadplayers ~ ~ 0 16 false @s
execute at @s in mystworlds:ice run tp @s ~ ~ ~
execute run function mystcraft:tpeffect
scoreboard players remove @s icetele 1

#tp leashed mob to player
tp @e[tag=myst.mob.tping] @s

#clean up leashed scoreboard and tag
function mystcraft:mobs/clear