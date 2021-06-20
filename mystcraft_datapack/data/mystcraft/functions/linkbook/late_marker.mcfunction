#debug
#tellraw @a {"nbt":"Pos","entity":"@s"}

#tp player to stand
execute at @s run tp @p[tag=myst.link.tping] @s

#tpeffect after teleport
execute as @p[tag=myst.link.tping] run function mystcraft:tpeffect

#remove player tag
tag @p remove myst.link.tping

#delete self
kill @s