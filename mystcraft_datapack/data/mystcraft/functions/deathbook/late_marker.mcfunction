#debug
#tellraw @a {"nbt":"Pos","entity":"@s"}

#move to center of block
execute at @s run tp @s ~0.5 ~ ~0.5

#tp player to stand
execute at @s run tp @p[tag=myst.death.tping] @s

#tpeffect after teleport
execute as @p[tag=myst.death.tping] run function mystcraft:tpeffect

#remove player tag
tag @p remove myst.death.tping

#delete self
kill @s