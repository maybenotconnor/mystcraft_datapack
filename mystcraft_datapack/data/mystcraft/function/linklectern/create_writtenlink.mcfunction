#use loot table to convert link book to written book
loot replace entity @s weapon.mainhand loot mystcraft:link_to_written

#start the raycast
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function mystcraft:raycast/start_ray

#remove item from player hand
item replace entity @s weapon.mainhand with minecraft:air