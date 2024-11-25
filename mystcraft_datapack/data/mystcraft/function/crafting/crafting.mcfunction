#Linking Book
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1}},limit=1,sort=nearest,distance=0..1] at @s run loot spawn ~ ~ ~ loot mystcraft:linkbook_loot

#Skull Book
execute as @e[type=item,nbt={Item:{id:"minecraft:bone",count:1}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],PickupDelay:50,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":'{"color":"gray","italic":false,"text":"Death Book"}',"minecraft:lore":['{"italic":false,"text":"Visit Last Death - One Time Use"}'],"minecraft:custom_model_data":4874875,"minecraft:custom_data":{HideFlags:6,Unbreakable:1,CustomModelData:4874875,skullbook:1}}}}

#Player Book
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",count:1}},limit=1,sort=nearest,distance=0..1] at @s run summon item ~ ~0.1 ~ {PickupDelay:50,Tags:["fresh_playerbook"],Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":'{"text":"Player Book","color":"red","italic":false}',"minecraft:custom_data":{HideFlags:6,Unbreakable:1,CustomModelData:789689,playerbook:1}}}}

#Torn Book
execute as @e[type=item,nbt={Item:{id:"minecraft:shears",count:1}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],PickupDelay:50,Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_name":'{"text":"Torn Book","italic":false,"color":"yellow"}',"minecraft:lore":['{"text":"Random Teleport","italic":false,"obfuscated": true}'],"minecraft:custom_data":{HideFlags:6,Unbreakable:1,CustomModelData:145353,tornbook:1}}}}