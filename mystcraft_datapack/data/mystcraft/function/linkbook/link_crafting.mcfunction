#store into fresh_link
data modify entity @s Item.components.minecraft:custom_data.WarpDim set from entity @p Dimension

#legacy
#execute store result entity @s Item.components.minecraft:custom_data.WarpDim short 1 run data get entity @p Dimension

execute at @s run function mystcraft:crafting/crafting_remove

data modify entity @s PickupDelay set value 50

data remove entity @s Item.components.minecraft:custom_data.fresh_link