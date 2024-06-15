
#transfer data to marker
data modify entity @s data.Dimension set from entity @p[tag=myst.death.tping] LastDeathLocation.dimension
execute store result entity @s Pos[0] double 1 run data get entity @p[tag=myst.death.tping] LastDeathLocation.pos[0]
execute store result entity @s Pos[1] double 1 run data get entity @p[tag=myst.death.tping] LastDeathLocation.pos[1]
execute store result entity @s Pos[2] double 1 run data get entity @p[tag=myst.death.tping] LastDeathLocation.pos[2]

#tp player to marker in dim
execute if data entity @s {data:{Dimension:"minecraft:overworld"}} run execute in minecraft:overworld positioned as @s run tp @p[tag=myst.death.tping] ~ ~ ~
execute if data entity @s {data:{Dimension:"minecraft:the_nether"}} run execute in minecraft:the_nether positioned as @s run tp @p[tag=myst.death.tping] ~ ~ ~
execute if data entity @s {data:{Dimension:"minecraft:the_end"}} run execute in minecraft:the_end positioned as @s run tp @p[tag=myst.death.tping] ~ ~ ~