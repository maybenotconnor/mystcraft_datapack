
#transfer dim data to marker
data modify entity @s data.Dimension set from block ~ ~ ~ Book.components.minecraft:custom_data.WarpDim
data modify entity @s Pos[0] set from block ~ ~ ~ Book.components.minecraft:custom_data.Warp[0]
data modify entity @s Pos[1] set from block ~ ~ ~ Book.components.minecraft:custom_data.Warp[1]
data modify entity @s Pos[2] set from block ~ ~ ~ Book.components.minecraft:custom_data.Warp[2]

#tp player to marker in dim
function mystcraft:linkbook/marker_dimension with entity @s data