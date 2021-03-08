
function mystcraft:teleports

#run craft as dropped book
execute as @e[type=item,nbt={Item:{id:"minecraft:book",Count:1b}}] at @s run function mystcraft:crafting

#functions for crafted link book
execute as @e[type=item,nbt={Item:{tag:{fresh_link:1b}}}] at @s run function mystcraft:linkbook/link_crafting

#remove fresh crafts
execute as @e[tag=fresh_craft] at @s run function mystcraft:crafting_remove

#comment out this line if in multiplayer/LAN:
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book"}}] run function mystcraft:enabletriggers

execute as @a[scores={bookuse=1..}] run function mystcraft:enabletriggers
execute as @a[scores={lecternuse=1..}] run function mystcraft:enabletriggers
execute as @a[scores={walking=50..,hastriggers=1..}] run function mystcraft:disabletriggers

#store player death point
execute as @a[scores={mystdeaths=1..}] at @s run function mystcraft:deathbook/get_death_point
scoreboard players set @a mystdeaths 0


execute as @a[scores={teleporting=1..}] at @s run function mystcraft:tpeffect