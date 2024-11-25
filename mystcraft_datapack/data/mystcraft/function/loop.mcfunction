function mystcraft:teleports
function mystcraft:vertical/vertical_detect

#run link craft as dropped book
execute as @e[type=item,nbt={Item:{id:"minecraft:book",count:1}}] at @s run function mystcraft:crafting/crafting

#run dim craft as dropped book quill
execute as @e[type=item,nbt={Item:{id:"minecraft:writable_book",count:1}}] at @s run function mystcraft:crafting/dimcrafting

#functions for crafted small book
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fresh_small:1}}}}] at @s run function mystcraft:crafting/small_crafting

#functions for crafted link book
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fresh_link:1}}}}] at @s run function mystcraft:linkbook/link_crafting

#functions for crafted player book
execute as @e[type=item,tag=fresh_playerbook] at @s run function mystcraft:playerbook/playerbook_crafting

#remove fresh crafts
execute as @e[type=item,tag=fresh_craft] at @s run function mystcraft:crafting/crafting_remove

#free Recipe Book trigger
scoreboard players enable @a mystguide
execute as @a[scores={mystguide=1..}] at @s run loot give @s loot mystcraft:guidebook_loot
scoreboard players remove @a[scores={mystguide=1..}] mystguide 1

#comment out this line if in multiplayer/LAN: (not required but improves performance slightly)
#IN SINGLEPLAYER THIS MUST BE UNCOMENTED OR ELSE IT WONT WORK
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book"}}] run function mystcraft:triggers/held_enabletriggers

execute as @a[scores={bookuse=1..}] run function mystcraft:triggers/enabletriggers
execute as @a[scores={lecternuse=1..}] run function mystcraft:triggers/enabletriggers
execute as @a[scores={walking=50..,hastriggers=1..}] run function mystcraft:triggers/disabletriggers