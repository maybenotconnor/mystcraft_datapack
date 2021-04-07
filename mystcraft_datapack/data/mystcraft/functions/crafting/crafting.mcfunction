#Linking Book
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run loot spawn ~ ~ ~ loot mystcraft:linkbookloot

#Skull Book
execute as @e[type=item,nbt={Item:{id:"minecraft:bone",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run summon minecraft:item ~ ~0.1 ~ {Tags:["fresh_craft"],PickupDelay:50,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Death Book","italic":false,"color":"gray"}',Lore:['{"text":"Visit Last Death - One Time Use"}']},HideFlags:6,Unbreakable:1b,CustomModelData:4874875,skullbook:1b}}}
