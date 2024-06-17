#store uuid into fresh_playerbook

data modify entity @s Item.components.minecraft:profile.id set from entity @e[type=item,nbt={Item:{id:"minecraft:player_head",count:1}},limit=1,sort=nearest,distance=0..1] Item.components.minecraft:profile.id

#loot table to set lore
execute run loot spawn ~ ~ ~ loot mystcraft:playerbookloot

execute at @s run function mystcraft:crafting/crafting_remove

kill @s
