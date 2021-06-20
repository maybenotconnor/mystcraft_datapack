#add death tp tag
tag @s add myst.death.tping

#summon marker
summon marker ~ ~ ~ {Tags:["myst.death.marker"]}

execute as @e[type=marker,tag=myst.death.marker,sort=nearest,limit=1] run function mystcraft:deathbook/pre_marker