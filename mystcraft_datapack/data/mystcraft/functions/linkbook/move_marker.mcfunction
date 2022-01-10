
#transfer dim data to marker
data modify entity @s data.Dimension set from entity @p[tag=myst.link.tping] SelectedItem.tag.WarpDim
data modify entity @s Pos[0] set from entity @p[tag=myst.link.tping] SelectedItem.tag.Warp[0]
data modify entity @s Pos[1] set from entity @p[tag=myst.link.tping] SelectedItem.tag.Warp[1]
data modify entity @s Pos[2] set from entity @p[tag=myst.link.tping] SelectedItem.tag.Warp[2]

#tp player to marker in dim
execute if data entity @s {data:{Dimension:"minecraft:overworld"}} run execute in minecraft:overworld positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~
execute if data entity @s {data:{Dimension:"minecraft:the_nether"}} run execute in minecraft:the_nether positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~
execute if data entity @s {data:{Dimension:"minecraft:the_end"}} run execute in minecraft:the_end positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~