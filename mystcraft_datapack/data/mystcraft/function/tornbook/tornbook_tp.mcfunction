
#Removes Book on Use
item replace entity @s weapon.mainhand with minecraft:air

execute at @s run spreadplayers 0 0 50 10000 false @s

execute run function mystcraft:tpeffect

execute at @s run summon lightning_bolt ~ ~ ~