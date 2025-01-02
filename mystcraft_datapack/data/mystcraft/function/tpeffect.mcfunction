execute at @s run playsound minecraft:item.book.page_turn block @a[distance=0..15] ~ ~ ~ 1.2 1
execute at @s run playsound mystcraft:mysttele block @a[distance=0..15] ~ ~ ~ 1 1
execute at @s run particle minecraft:enchanted_hit ~ ~ ~ .4 .4 .4 1 100 normal @a
execute at @s run particle minecraft:nautilus ~ ~ ~ .4 .4 .4 1 100 normal @a

execute at @s run effect give @s resistance 5 4 true

#clear triggers
function mystcraft:triggers/disabletriggers

#add tag to player
tag @s add teleporting

#run delay
schedule function mystcraft:tpeffect_delay 10t append
