#add tag
tag @s add myst.link.tping

#summon marker
summon marker ~ ~ ~ {Tags:["myst.link.marker"]}

#send to coords
execute as @e[type=marker,tag=myst.link.marker,limit=1] run function mystcraft:linkbook/move_marker

#drops dummy item
execute at @s run summon minecraft:item ~ ~0.1 ~ {Age:-32750,Tags:["myst.link.dropped"],PickupDelay:50,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Linking Book","italic":false,"color":"green"}',Lore:['{"text":"Unobtainable"}']},HideFlags:6,Unbreakable:1b,CustomModelData:696312,linkbook:1b}}}

#copies held nbt data to dropped dummy
execute at @s run data modify entity @e[type=item,distance=..5,tag=myst.link.dropped,limit=1,sort=nearest] Item set from entity @s SelectedItem

#Removes Book on Use
item replace entity @s weapon.mainhand with minecraft:air

#tp to marker in dimension
execute if data entity @e[type=marker,tag=myst.link.marker,limit=1] {data:{Dimension:"minecraft:the_nether"}} run execute in minecraft:the_nether positioned as @e[type=marker,tag=myst.link.marker,limit=1] run tp @s ~ ~ ~
execute if data entity @e[type=marker,tag=myst.link.marker,limit=1] {data:{Dimension:"minecraft:overworld"}} run execute in minecraft:overworld positioned as @e[type=marker,tag=myst.link.marker,limit=1] run tp @s ~ ~ ~
execute if data entity @e[type=marker,tag=myst.link.marker,limit=1] {data:{Dimension:"minecraft:the_end"}} run execute in minecraft:the_end positioned as @e[type=marker,tag=myst.link.marker,limit=1] run tp @s ~ ~ ~

#kill marker
kill @e[type=marker,tag=myst.link.marker,limit=1]

#tpeffect
function mystcraft:tpeffect

#remove tag
tag @s remove myst.link.tping