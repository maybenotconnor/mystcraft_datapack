#add linking tag
tag @s add myst.link.tping

#summon marker
summon marker ~ ~ ~ {Tags:["myst.link.marker"]}

execute as @e[type=marker,tag=myst.link.marker,sort=nearest,limit=1] run function mystcraft:linkbook/pre_marker