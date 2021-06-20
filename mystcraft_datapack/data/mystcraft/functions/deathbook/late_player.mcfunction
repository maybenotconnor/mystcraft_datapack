#Removes Book on Use
item replace entity @s weapon.mainhand with minecraft:air

#unforce chunks
schedule function mystcraft:removeforceload 10t

#Disables until next death
scoreboard players add @s death_lastUsed 1