function mystcraft:teleports
function mystcraft:vertical/vertical_detect

#run link craft as dropped book
execute as @e[type=item,nbt={Item:{id:"minecraft:book",count:1}}] at @s run function mystcraft:crafting/crafting

#run dim craft as dropped book quill
execute as @e[type=item,nbt={Item:{id:"minecraft:writable_book",count:1}}] at @s run function mystcraft:crafting/dimcrafting

#functions for crafted link book
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fresh_link:1}}}}] at @s run function mystcraft:linkbook/link_crafting

#functions for crafted player book
execute as @e[type=item,tag=fresh_playerbook] at @s run function mystcraft:playerbook/playerbook_crafting

#remove fresh crafts
execute as @e[type=item,tag=fresh_craft] at @s run function mystcraft:crafting/crafting_remove

#comment out this line if in multiplayer/LAN: (not required but slightly better performance)
#IN SINGLEPLAYER THIS MUST BE UNCOMENTED OR ELSE IT WONT WORK
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book"}}] run function mystcraft:triggers/held_enabletriggers

execute as @a[scores={bookuse=1..}] run function mystcraft:triggers/enabletriggers
execute as @a[scores={lecternuse=1..}] run function mystcraft:triggers/enabletriggers
execute as @a[scores={walking=50..,hastriggers=1..}] run function mystcraft:triggers/disabletriggers

#store player death point - OLD
#execute as @a[scores={mystdeaths=1..}] at @s run function mystcraft:deathbook/get_death_point
#scoreboard players set @a mystdeath_uses 0