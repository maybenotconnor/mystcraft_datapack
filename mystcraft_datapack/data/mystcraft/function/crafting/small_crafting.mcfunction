execute at @s run function mystcraft:crafting/crafting_remove

#explode end crystal
execute as @e[type=end_crystal,sort=nearest,limit=1] run playsound entity.generic.explode ambient @a
execute as @e[type=end_crystal,sort=nearest,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 0.5 1 0.5 1 10
kill @e[type=end_crystal,sort=nearest,limit=1]

data modify entity @s PickupDelay set value 50

data remove entity @s Item.components.minecraft:custom_data.fresh_small