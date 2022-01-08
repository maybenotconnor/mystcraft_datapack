
#transfer data to marker, dim not currently used
execute store result entity @s data.Dimension double 1 run scoreboard players get @p[tag=myst.death.tping] deathDim 
execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=myst.death.tping] deathX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=myst.death.tping] deathY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=myst.death.tping] deathZ