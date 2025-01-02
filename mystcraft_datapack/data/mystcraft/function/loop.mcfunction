function mystcraft:teleports
function mystcraft:vertical/vertical_detect

#run player craft as dropped player head
execute as @e[type=item,nbt={Item:{id:"minecraft:player_head",count:1}}] at @s run function mystcraft:playerbook/playerbook_crafting_check
#functions for crafted player book
execute as @e[type=item,tag=fresh_playerbook] at @s run function mystcraft:playerbook/playerbook_crafting_copydata

#run small dim craft as dropped book quill
execute as @e[type=item,nbt={Item:{id:"minecraft:writable_book",count:1}}] at @s run function mystcraft:small_crafting/small_crafting_summon
#functions for crafted small book
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fresh_small:true}}}}] at @s run function mystcraft:small_crafting/small_crafting_effect

#any player holding a written link book will have it converted
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{writtenlink:true}}}}] run loot replace entity @s weapon.mainhand loot mystcraft:written_to_link
#same for offhand - THERE IS A MAJOR BUG
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:written_book",components:{"minecraft:custom_data":{writtenlink:true}}}]}] run loot replace entity @s weapon.offhand loot mystcraft:written_to_link

#free Recipe Book trigger
scoreboard players enable @a mystguide
execute as @a[scores={mystguide=1..}] at @s run loot give @s loot mystcraft:guidebook_loot
scoreboard players remove @a[scores={mystguide=1..}] mystguide 1

#reset deathbook advancement when deathcounter >1 (is reset to 0 on use)
advancement revoke @a[scores={mystdeath_uses=1..}] only mystcraft:deathbook_use

#comment out this line if in multiplayer/LAN: (not required but improves performance slightly)
#IN SINGLEPLAYER THIS MUST BE UNCOMENTED OR ELSE IT WONT WORK
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book"}}] run function mystcraft:triggers/held_enabletriggers

execute as @a[scores={bookuse=1..}] run function mystcraft:triggers/enabletriggers
execute as @a[scores={lecternuse=1..}] run function mystcraft:triggers/enabletriggers
execute as @a[scores={walking=50..,hastriggers=1..}] run function mystcraft:triggers/disabletriggers