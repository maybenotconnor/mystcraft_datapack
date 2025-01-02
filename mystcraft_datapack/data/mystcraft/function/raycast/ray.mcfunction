execute if block ~ ~ ~ minecraft:lectern run function mystcraft:raycast/hit_block
scoreboard players add #distance raycasttemp 1
execute if score #hit raycasttemp matches 0 if score #distance raycasttemp matches ..20 positioned ^ ^ ^0.5 run function mystcraft:raycast/ray