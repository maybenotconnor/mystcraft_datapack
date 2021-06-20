
#transfer dim data to marker
data modify entity @s data.Dimension set from entity @p[tag=myst.link.tping] SelectedItem.tag.WarpDim
data modify entity @s Pos[0] set from entity @p[tag=myst.link.tping] SelectedItem.tag.Warp[0]
data modify entity @s Pos[1] set from entity @p[tag=myst.link.tping] SelectedItem.tag.Warp[1]
data modify entity @s Pos[2] set from entity @p[tag=myst.link.tping] SelectedItem.tag.Warp[2]

#new version
execute if data entity @s {data:{Dimension:"minecraft:the_nether"}} positioned as @s run execute in minecraft:the_nether run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"minecraft:overworld"}} positioned as @s run execute in minecraft:overworld run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"minecraft:the_end"}} positioned as @s run execute in minecraft:the_end run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"mystworlds:twilightworld"}} positioned as @s run execute in mystworlds:twilightworld run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"mystworlds:cavesworld"}} positioned as @s run execute in mystworlds:cavesworld run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"mystworlds:archipeligo"}} positioned as @s run execute in mystworlds:archipeligo run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"mystworlds:sanctuaryworld"}} positioned as @s run execute in mystworlds:sanctuaryworld run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"mystworlds:volcanoworld"}} positioned as @s run execute in mystworlds:volcanoworld run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"mystworlds:ice"}} positioned as @s run execute in mystworlds:ice run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"mystworlds:village"}} positioned as @s run execute in mystworlds:village run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"mystworlds:small"}} positioned as @s run execute in mystworlds:small run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"mystworlds:rock"}} positioned as @s run execute in mystworlds:rock run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"mystworlds:warrendimension"}} positioned as @s run execute in mystworlds:warrendimension run function mystcraft:linkbook/sub_marker
execute if data entity @s {data:{Dimension:"mystworlds:skylanddimension"}} positioned as @s run execute in mystworlds:skylanddimension run function mystcraft:linkbook/sub_marker

# positioned as @s run  recursive search function
execute at @s run function mystcraft:linkbook/search