#add death tp tag
tag @s add myst.death.tping

#summon marker
summon marker ~ ~ ~ {Tags:["myst.death.marker"]}

#move marker
execute as @e[type=marker,tag=myst.death.marker,limit=1] run function mystcraft:deathbook/move_marker

#using player score teleport to marker in dim
execute if score @s deathDim matches 20 run execute in minecraft:the_nether positioned as @e[type=marker,tag=myst.death.marker,limit=1] run tp @s ~0.5 ~ ~0.5
execute if score @s deathDim matches 19 run execute in minecraft:overworld positioned as @e[type=marker,tag=myst.death.marker,limit=1] run tp @s ~0.5 ~ ~0.5
execute if score @s deathDim matches 17 run execute in minecraft:the_end positioned as @e[type=marker,tag=myst.death.marker,limit=1] run tp @s ~0.5 ~ ~0.5

#delete marker
kill @e[type=marker,tag=myst.death.marker,sort=nearest,limit=1]

#tpeffect after teleport
function mystcraft:tpeffect

#Removes Book on Use
item replace entity @s weapon.mainhand with minecraft:air

#Disables until next death
scoreboard players add @s death_lastUsed 1

#remove player tag
tag @s remove myst.death.tping