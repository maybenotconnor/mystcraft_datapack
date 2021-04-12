scoreboard players add @s teleporting 1

#drops dummy item
execute at @s run summon minecraft:item ~ ~0.1 ~ {Age:-32750,Tags:["droppedlink"],PickupDelay:50,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Linking Book","italic":false,"color":"green"}',Lore:['{"text":"Go Home"}']},HideFlags:6,Unbreakable:1b,CustomModelData:196312,linkbook:1b}}}

#copies held nbt data to dropped dummy
data modify entity @e[type=item,limit=1,distance=..5,tag=droppedlink] Item set from entity @s SelectedItem

#teleport player to dimension
execute if data entity @s {SelectedItem:{tag:{WarpDim:20s}}} in minecraft:the_nether run tp @s ~ ~ ~
execute if data entity @s {SelectedItem:{tag:{WarpDim:19s}}} in minecraft:overworld run tp @s ~ ~ ~
execute if data entity @s {SelectedItem:{tag:{WarpDim:17s}}} in minecraft:the_end run tp @s ~ ~ ~
execute if data entity @s {SelectedItem:{tag:{WarpDim:24s}}} in mystworlds:twilightworld run tp @s ~ ~ ~
execute if data entity @s {SelectedItem:{tag:{WarpDim:21s}}} in mystworlds:cavesworld run tp @s ~ ~ ~
execute if data entity @s {SelectedItem:{tag:{WarpDim:22s}}} in mystworlds:archipeligo run tp @s ~ ~ ~
execute if data entity @s {SelectedItem:{tag:{WarpDim:25s}}} in mystworlds:sanctuaryworld run tp @s ~ ~ ~
execute if data entity @s {SelectedItem:{tag:{WarpDim:23s}}} in mystworlds:volcanoworld run tp @s ~ ~ ~
execute if data entity @s {SelectedItem:{tag:{WarpDim:14s}}} in mystworlds:ice run tp @s ~ ~ ~
execute if data entity @s {SelectedItem:{tag:{WarpDim:18s}}} in mystworlds:village run tp @s ~ ~ ~
execute if data entity @s {SelectedItem:{tag:{WarpDim:16s}}} in mystworlds:small run tp @s ~ ~ ~

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["link_stand"],NoGravity:1b,Invisible:1b,Marker:1b}
tag @s add link_teleporting

execute as @e[tag=link_stand,sort=nearest,limit=1] at @s run function mystcraft:linkbook/link_tp_stand

#Removes Book on Use
replaceitem entity @s weapon air