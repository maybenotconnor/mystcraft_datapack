#Linking Book
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run loot spawn ~ ~ ~ loot mystcraft:linkbookloot

#Skull Book
execute as @e[type=item,nbt={Item:{id:"minecraft:bone",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],PickupDelay:50,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Death Book","italic":false,"color":"gray"}',Lore:['{"text":"Visit Last Death - One Time Use","italic":false}']},HideFlags:6,Unbreakable:1b,CustomModelData:487487,skullbook:1b}}}

#Player Book
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run summon item ~ ~0.1 ~ {PickupDelay:50,Tags:["fresh_playerbook"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Player Book","color":"red","italic":false}'},HideFlags:6,Unbreakable:1b,CustomModelData:789689,playerbook:1b}}}
