#add tag to player and schedule
tag @s add link_crafting

#run delay
schedule function mystcraft:linkbook/link_crafting 3t append

execute at @s run playsound minecraft:item.book.page_turn block @a[distance=0..15] ~ ~ ~ 1.2 1 1
execute at @s run particle enchanted_hit ~ ~1 ~ 1 1 1 .05 10 normal
