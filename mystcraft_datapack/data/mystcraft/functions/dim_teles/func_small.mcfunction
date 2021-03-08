#drops dummy item
execute at @s[nbt={SelectedItem:{tag:{smallbook:1b}}}] run summon minecraft:item ~ ~0.1 ~ {Age:-32750,Tags:["droppedbook"],PickupDelay:50,Item:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"WorldBook","color":"Black","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:7,CustomModelData:691}}}

#copies held nbt data to dropped dummy
data modify entity @e[type=item,limit=1,distance=..5,tag=droppedbook] Item set from entity @s[nbt={SelectedItem:{tag:{smallbook:1b}}}] SelectedItem

#Removes Book on Use
replaceitem entity @s[nbt={SelectedItem:{tag:{smallbook:1b}}}] weapon air


#entity tp if holding lead
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:lead"}]}] at @s run execute as @e[limit=1,sort=nearest,distance=..6,type=!player,type=!item] at @s in mystworlds:small run tp @s ~ 70 ~
#run tp
execute as @s at @s in mystworlds:small run tp @s ~ 70 ~
scoreboard players add @s teleporting 1
scoreboard players remove @s smalltele 1
