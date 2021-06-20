
#transfer data to marker, dim not currently used
execute store result entity @s data.Dimension double 1 run scoreboard players get @p[tag=myst.death.tping] deathDim 
execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=myst.death.tping] deathX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=myst.death.tping] deathY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=myst.death.tping] deathZ

#using player score
execute if score @p[tag=myst.death.tping] deathDim matches 20 positioned as @s run execute in minecraft:the_nether run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 19 positioned as @s run execute in minecraft:overworld run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 17 positioned as @s run execute in minecraft:the_end run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 24 positioned as @s run execute in mystworlds:twilightworld run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 21 positioned as @s run execute in mystworlds:cavesworld run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 22 positioned as @s run execute in mystworlds:archipeligo run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 25 positioned as @s run execute in mystworlds:sanctuaryworld run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 23 positioned as @s run execute in mystworlds:volcanoworld run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 14 positioned as @s run execute in mystworlds:ice run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 18 positioned as @s run execute in mystworlds:village run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 16 positioned as @s run execute in mystworlds:small run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 15 positioned as @s run execute in mystworlds:rock run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 26 positioned as @s run execute in mystworlds:warrendimension run function mystcraft:deathbook/sub_marker
execute if score @p[tag=myst.death.tping] deathDim matches 27 positioned as @s run execute in mystworlds:skylanddimension run function mystcraft:deathbook/sub_marker

#run recursive search function
execute at @s run function mystcraft:deathbook/search