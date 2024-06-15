#add death tp tag
tag @s add myst.death.tping

#summon marker
summon marker ~ ~ ~ {Tags:["myst.death.marker"]}

#move marker & tp player
execute as @e[type=marker,tag=myst.death.marker,limit=1] run function mystcraft:deathbook/move_marker

#delete marker
kill @e[type=marker,tag=myst.death.marker,sort=nearest,limit=1]

#tpeffect after teleport
function mystcraft:tpeffect

#Removes Book on Use
item replace entity @s weapon.mainhand with minecraft:air

#Disables until next death
scoreboard players set @s mystdeath_uses 0

#remove player tag
tag @s remove myst.death.tping