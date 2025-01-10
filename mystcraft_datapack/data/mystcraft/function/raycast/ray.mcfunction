#have to check each direction
execute if block ~ ~ ~ minecraft:lectern[facing=north] run function mystcraft:raycast/hit_block {facing:north}
execute if block ~ ~ ~ minecraft:lectern[facing=east] run function mystcraft:raycast/hit_block {facing:east}
execute if block ~ ~ ~ minecraft:lectern[facing=south] run function mystcraft:raycast/hit_block {facing:south}
execute if block ~ ~ ~ minecraft:lectern[facing=west] run function mystcraft:raycast/hit_block {facing:west}
scoreboard players add #distance raycasttemp 1
execute if score #hit raycasttemp matches 0 if score #distance raycasttemp matches ..20 positioned ^ ^ ^0.5 run function mystcraft:raycast/ray