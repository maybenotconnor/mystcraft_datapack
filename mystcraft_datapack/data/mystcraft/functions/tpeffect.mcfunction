execute at @p[distance=0..15] run playsound minecraft:item.book.page_turn master @a[distance=0..15] ~ ~ ~ 1.2 1 1
execute at @p[distance=0..15] run playsound mystcraft:mysttele block @a[distance=0..15] ~ ~ ~ 1 1 1
execute at @p[distance=0..15] run particle minecraft:enchanted_hit ~ ~ ~ .4 .4 .4 1 100 normal @a
execute at @p[distance=0..15] run particle minecraft:nautilus ~ ~ ~ .4 .4 .4 1 100 normal @a

execute at @p[distance=0..15] run effect give @p resistance 10 10 true

#clear blocks
execute at @p[distance=0..15] unless block ~ ~ ~ #mystcraft:non-solid run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
execute at @p[distance=0..15] unless block ~ ~1 ~ #mystcraft:non-solid run fill ~ ~1 ~ ~ ~1 ~ minecraft:air destroy

#clear triggers
execute as @a[scores={teleporting=1..}] run function mystcraft:triggers/disabletriggers

#Clear Teleporting Tag
scoreboard players remove @a[scores={teleporting=1..}] teleporting 1
