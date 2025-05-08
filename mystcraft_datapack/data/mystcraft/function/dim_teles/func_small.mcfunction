#drops book 
function mystcraft:dim_teles/drop_book

#LEASHED TO PLAYER
execute as @s run function mystcraft:mobs/player_score
#LEASHED ENTITY
execute at @s as @e[distance=..10,type=!player,type=!item] if data entity @s leash run function mystcraft:mobs/leashed_score {tag: myst.mob.tping}

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

#tp leashed mob to player
tp @e[tag=myst.mob.tping] @s

#clean up leashed scoreboard and tag
function mystcraft:mobs/clear