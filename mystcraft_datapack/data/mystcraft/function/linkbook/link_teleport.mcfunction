#add tag
tag @s add myst.link.tping

#LEASHED TO PLAYER
execute as @s run function mystcraft:mobs/player_score
#LEASHED ENTITY
execute at @s as @e[distance=..10,type=!player,type=!item] if data entity @s leash run function mystcraft:mobs/leashed_score {tag: myst.link.tping}

#drops dummy item
execute at @s run summon minecraft:item ~ ~0.1 ~ {Age:-32750,Tags:["myst.link.dropped"],PickupDelay:50,Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:custom_name":'{"text":"Linking Book","italic":false,"color":"green"}',"minecraft:lore":['{"text":"Unobtainable"}'],"minecraft:custom_model_data":{strings:["linkbook"]}}}}

#copies held nbt data to dropped dummy
execute at @s run data modify entity @e[type=item,distance=..5,tag=myst.link.dropped,limit=1,sort=nearest] Item set from entity @s SelectedItem

#summon marker
summon marker ~ ~ ~ {Tags:["myst.link.marker"]}

#send to coords and tp player
execute as @e[type=marker,tag=myst.link.marker,limit=1] run function mystcraft:linkbook/move_marker

#Removes Book on Use
item replace entity @s weapon.mainhand with minecraft:air

#kill marker
kill @e[type=marker,tag=myst.link.marker]

#tpeffect
function mystcraft:tpeffect

#remove tag from all entities
tag @e remove myst.link.tping

#clean up leashed scoreboard and tag
function mystcraft:mobs/clear

#allow advancement to trigger again
advancement revoke @s only mystcraft:linkbook_use