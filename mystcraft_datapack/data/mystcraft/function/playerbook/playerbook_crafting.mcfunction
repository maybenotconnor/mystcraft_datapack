#store uuid into fresh_playerbook

data modify entity @s Item.tag.playername set from entity @e[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b}},limit=1,sort=nearest,distance=0..1] Item.tag.SkullOwner.Name

data modify entity @s Item.tag.playeruuid set from entity @e[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b}},limit=1,sort=nearest,distance=0..1] Item.tag.SkullOwner.Id

#loot table to set lore
execute run loot spawn ~ ~ ~ loot mystcraft:playerbookloot

execute at @s run function mystcraft:crafting/crafting_remove

kill @s