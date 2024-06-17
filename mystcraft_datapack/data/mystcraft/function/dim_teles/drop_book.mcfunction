#drops dummy item
execute at @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] run summon minecraft:item ~ ~0.1 ~ {Age:-32750,Tags:["droppedbook"],PickupDelay:50,Item:{id:"minecraft:written_book",count:1,components:{custom_name:'{"text":"WorldBook","color":"Black","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'},custom_data:{HideFlags:7,CustomModelData:691}}}

#copies held nbt data to dropped dummy
data modify entity @e[type=item,limit=1,distance=..5,tag=droppedbook] Item set from entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] SelectedItem

#Removes Book on Use
item replace entity @s[nbt={SelectedItem:{id:"minecraft:written_book"}}] weapon.mainhand with minecraft:air
