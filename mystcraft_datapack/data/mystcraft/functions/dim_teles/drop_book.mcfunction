#drops dummy item
execute at @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] run summon minecraft:item ~ ~0.1 ~ {Age:-32750,Tags:["droppedbook"],PickupDelay:50,Item:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"WorldBook","color":"Black","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},HideFlags:7,CustomModelData:691}}}

#copies held nbt data to dropped dummy
data modify entity @e[type=item,limit=1,distance=..5,tag=droppedbook] Item set from entity @s[nbt={SelectedItem:{tag:{cavebook:1b}}}] SelectedItem

#Removes Book on Use
replaceitem entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] weapon air