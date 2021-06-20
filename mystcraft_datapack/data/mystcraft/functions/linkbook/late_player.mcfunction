#drops dummy item
execute at @s run summon minecraft:item ~ ~0.1 ~ {Age:-32750,Tags:["myst.link.dropped"],PickupDelay:50,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Linking Book","italic":false,"color":"green"}',Lore:['{"text":"Unobtainable"}']},HideFlags:6,Unbreakable:1b,CustomModelData:696312,linkbook:1b}}}

#copies held nbt data to dropped dummy
execute at @s as @e[type=item,distance=..5,tag=myst.link.dropped] run data modify entity @s Item set from entity @p[tag=myst.link.tping] SelectedItem

#Removes Book on Use
item replace entity @s weapon.mainhand with minecraft:air

#unforce chunks
schedule function mystcraft:removeforceload 10t