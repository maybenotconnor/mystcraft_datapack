
#transfer dim data to marker
data modify entity @s data.Dimension set from entity @p[tag=myst.link.tping] SelectedItem.components.minecraft:custom_data.WarpDim
data modify entity @s Pos[0] set from entity @p[tag=myst.link.tping] SelectedItem.components.minecraft:custom_data.Warp[0]
data modify entity @s Pos[1] set from entity @p[tag=myst.link.tping] SelectedItem.components.minecraft:custom_data.Warp[1]
data modify entity @s Pos[2] set from entity @p[tag=myst.link.tping] SelectedItem.components.minecraft:custom_data.Warp[2]

#tp player to marker in dim
execute if data entity @s {data:{Dimension:"minecraft:overworld"}} run execute in minecraft:overworld positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~
execute if data entity @s {data:{Dimension:"minecraft:the_nether"}} run execute in minecraft:the_nether positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~
execute if data entity @s {data:{Dimension:"minecraft:the_end"}} run execute in minecraft:the_end positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~

execute if data entity @s {data:{Dimension:"mystworlds:archipelago"}} run execute in mystworlds:archipelago positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~
execute if data entity @s {data:{Dimension:"mystworlds:sanctuary"}} run execute in mystworlds:sanctuary positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~
execute if data entity @s {data:{Dimension:"mystworlds:skyland"}} run execute in mystworlds:skyland positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~
execute if data entity @s {data:{Dimension:"mystworlds:small"}} run execute in mystworlds:small positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~
execute if data entity @s {data:{Dimension:"mystworlds:warrens"}} run execute in mystworlds:warrens positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~
execute if data entity @s {data:{Dimension:"mystworlds:wasteland"}} run execute in mystworlds:wasteland positioned as @s run tp @p[tag=myst.link.tping] ~ ~ ~
