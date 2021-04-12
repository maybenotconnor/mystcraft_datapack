#dimension based on time
execute store result score $random time run time query daytime
scoreboard players set $random time_div 3000
scoreboard players operation $random time /= $random time_div

#drop book
summon minecraft:item ~ ~0.1 ~ {Age:-32750,Tags:["droppedbook"],PickupDelay:50,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Torn Book","italic":false,"color":"yellow"}',Lore:['{"text":"Random Teleport","italic":false,"obfuscated": true}']},HideFlags:6,Unbreakable:1b,CustomModelData:145353,tornbook:1b}}}

#copies held nbt data to dropped dummy
data modify entity @e[type=item,limit=1,distance=..5,tag=droppedbook] Item set from entity @s[nbt={SelectedItem:{tag:{tornbook:1b}}}] SelectedItem

#Removes Book on Use
replaceitem entity @s[nbt={SelectedItem:{tag:{tornbook:1b}}}] weapon air

#spread player in dimension
execute if score $random time matches ..1 in overworld run tp @s ~ 300 ~
execute if score $random time matches 1..2 in the_nether run tp @s ~ 300 ~
execute if score $random time matches 2..3 in mystworlds:cavesworld run tp @s ~ 300 ~
execute if score $random time matches 3..4 in mystworlds:archipeligo run tp @s ~ 300 ~
execute if score $random time matches 4..5 in mystworlds:ice run tp @s ~ 300 ~
execute if score $random time matches 5..6 in mystworlds:volcanoworld run tp @s ~ 300 ~
execute if score $random time matches 6..7 in mystworlds:twilightworld run tp @s ~ 300 ~
execute if score $random time matches 7.. in the_end run tp @s ~ 300 ~

execute at @s run spreadplayers 0 0 50 10000 false @s

scoreboard players add @s teleporting 1

execute at @s run summon lightning_bolt ~ ~ ~