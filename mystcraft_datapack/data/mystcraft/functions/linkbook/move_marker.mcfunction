
#transfer dim data to marker
data modify entity @s data.Dimension set from entity @p[tag=myst.link.tping] SelectedItem.tag.WarpDim
data modify entity @s Pos[0] set from entity @p[tag=myst.link.tping] SelectedItem.tag.Warp[0]
data modify entity @s Pos[1] set from entity @p[tag=myst.link.tping] SelectedItem.tag.Warp[1]
data modify entity @s Pos[2] set from entity @p[tag=myst.link.tping] SelectedItem.tag.Warp[2]