#store uuid into fresh_playerbook

data modify entity @s Item.components.minecraft:profile.id set from entity @e[type=item,nbt={Item:{id:"minecraft:player_head",count:1}},limit=1,sort=nearest,distance=0..1] Item.components.minecraft:profile.id

#loot table to set lore
execute run loot spawn ~ ~ ~ loot mystcraft:playerbook_loot

#remove crafting item head and do effect
execute at @s run kill @e[type=item,nbt={Item:{id:"minecraft:player_head",count:1}},sort=nearest,limit=1]
execute at @s run playsound minecraft:item.book.page_turn master @p
execute at @s run particle enchanted_hit ~ ~ ~ 1 1 1 .05 10 normal

kill @s
