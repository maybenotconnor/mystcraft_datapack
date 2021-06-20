#clear blocks
execute at @a[tag=teleporting] unless block ~ ~ ~ #mystcraft:non-solid run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
execute at @a[tag=teleporting] unless block ~ ~1 ~ #mystcraft:non-solid run fill ~ ~1 ~ ~ ~1 ~ minecraft:air destroy

tag @a remove teleporting