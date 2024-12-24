#set uuids to scores

execute as @a store result score @s uuid_self_0 run data get entity @s UUID[0]
execute as @a store result score @s uuid_self_1 run data get entity @s UUID[1]
execute as @a store result score @s uuid_self_2 run data get entity @s UUID[2]
execute as @a store result score @s uuid_self_3 run data get entity @s UUID[3]

execute store result score @s uuid_tp_0 run data get entity @s SelectedItem.components.minecraft:custom_data.playeruuid[0]
execute store result score @s uuid_tp_1 run data get entity @s SelectedItem.components.minecraft:custom_data.playeruuid[1]
execute store result score @s uuid_tp_2 run data get entity @s SelectedItem.components.minecraft:custom_data.playeruuid[2]
execute store result score @s uuid_tp_3 run data get entity @s SelectedItem.components.minecraft:custom_data.playeruuid[3]

scoreboard players operation $playertp uuid_tp_0 = @s uuid_tp_0
scoreboard players operation $playertp uuid_tp_1 = @s uuid_tp_1
scoreboard players operation $playertp uuid_tp_2 = @s uuid_tp_2
scoreboard players operation $playertp uuid_tp_3 = @s uuid_tp_3

execute as @a if score @s uuid_self_0 = $playertp uuid_tp_0 if score @s uuid_self_1 = $playertp uuid_tp_1 if score @s uuid_self_2 = $playertp uuid_tp_2 if score @s uuid_self_3 = $playertp uuid_tp_3 run tag @s add playerbook_target

execute run function mystcraft:tpeffect

#drops dummy item
execute at @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{playerbook:true}}}}] run summon minecraft:item ~ ~0.1 ~ {Age:-32750,Tags:["droppedbook"],PickupDelay:50,Item:{id:"minecraft:book",count:1,components:{"minecraft:custom_name":'{"text":"PlayerBook","color":"black","bold":true,"italic":false}',"minecraft:custom_model_data":{strings:["playerbook"]}}}}

#copies held nbt data to dropped dummy
data modify entity @e[type=item,limit=1,distance=..5,tag=droppedbook] Item set from entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{playerbook:true}}}}] SelectedItem

#tp player
tp @s @a[tag=playerbook_target, limit=1]

#Removes Book on Use
item replace entity @s weapon.mainhand with minecraft:air

scoreboard players set $playertp uuid_tp_0 0
scoreboard players set $playertp uuid_tp_1 0
scoreboard players set $playertp uuid_tp_2 0
scoreboard players set $playertp uuid_tp_3 0

tag @a remove playerbook_target

#allow advancement to trigger again
advancement revoke @s only mystcraft:playerbook_use