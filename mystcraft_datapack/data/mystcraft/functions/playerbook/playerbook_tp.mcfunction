#set uuids to scores

execute as @a store result score @s uuid_self_0 run data get entity @s UUID[0]
execute as @a store result score @s uuid_self_1 run data get entity @s UUID[1]
execute as @a store result score @s uuid_self_2 run data get entity @s UUID[2]
execute as @a store result score @s uuid_self_3 run data get entity @s UUID[3]

execute store result score @s uuid_tp_0 run data get entity @s SelectedItem.tag.playeruuid[0]
execute store result score @s uuid_tp_1 run data get entity @s SelectedItem.tag.playeruuid[1]
execute store result score @s uuid_tp_2 run data get entity @s SelectedItem.tag.playeruuid[2]
execute store result score @s uuid_tp_3 run data get entity @s SelectedItem.tag.playeruuid[3]

scoreboard players operation $playertp uuid_tp_0 = @s uuid_tp_0
scoreboard players operation $playertp uuid_tp_1 = @s uuid_tp_1
scoreboard players operation $playertp uuid_tp_2 = @s uuid_tp_2
scoreboard players operation $playertp uuid_tp_3 = @s uuid_tp_3

execute as @a if score @s uuid_self_0 = $playertp uuid_tp_0 if score @s uuid_self_1 = $playertp uuid_tp_1 if score @s uuid_self_2 = $playertp uuid_tp_2 if score @s uuid_self_3 = $playertp uuid_tp_3 run tag @s add playerbook_target

scoreboard players add @s teleporting 1

#drops dummy item
execute at @s[nbt={SelectedItem:{tag:{playerbook:1b}}}] run summon minecraft:item ~ ~0.1 ~ {Age:-32750,Tags:["droppedbook"],PickupDelay:50,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"PlayerBook","color":"Black","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:7,CustomModelData:789689}}}

#copies held nbt data to dropped dummy
data modify entity @e[type=item,limit=1,distance=..5,tag=droppedbook] Item set from entity @s[nbt={SelectedItem:{tag:{playerbook:1b}}}] SelectedItem

#tp player
tp @s @a[tag=playerbook_target, limit=1]

#Removes Book on Use
replaceitem entity @s[nbt={SelectedItem:{tag:{playerbook:1b}}}] weapon air

scoreboard players set $playertp uuid_tp_0 0
scoreboard players set $playertp uuid_tp_1 0
scoreboard players set $playertp uuid_tp_2 0
scoreboard players set $playertp uuid_tp_3 0

tag @a remove playerbook_target