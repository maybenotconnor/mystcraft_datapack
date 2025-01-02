#add tag
tag @s add myst.link.tping

#summon marker
summon marker ~ ~ ~ {Tags:["myst.link.marker"]}

#send to coords and tp player
execute as @e[type=marker,tag=myst.link.marker,limit=1] run function mystcraft:linklectern/move_marker

#kill marker
kill @e[type=marker,tag=myst.link.marker]

#tpeffect
function mystcraft:tpeffect

#remove tag
tag @s remove myst.link.tping

#reset scoreboard trigger
scoreboard players set @s linklecternuse 0