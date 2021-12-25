
#transfer data to marker, dim not currently used
execute store result entity @s data.Dimension double 1 run scoreboard players get @p[tag=myst.death.tping] deathDim 
execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=myst.death.tping] deathX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=myst.death.tping] deathY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=myst.death.tping] deathZ

#using player score
execute if score @p[tag=myst.death.tping] deathDim matches 20 positioned as @s run execute in minecraft:the_nether run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 19 positioned as @s run execute in minecraft:overworld run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 17 positioned as @s run execute in minecraft:the_end run function mystcraft:deathbook/sub_marker

#run recursive search function
execute at @s run function mystcraft:deathbook/search