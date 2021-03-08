#store into fresh_link
execute store result entity @s Item.tag.WarpDim short 1 run data get entity @p Dimension
#data modify entity @s Item.tag.WarpDim set from entity @p Dimension

execute at @s run function mystcraft:crafting_remove

data modify entity @s PickupDelay set value 50

data remove entity @s Item.tag.fresh_link