execute store result entity @s Pos[0] double 1 run data get entity @p SelectedItem.tag.Warp[0]
execute store result entity @s Pos[1] double 1 run data get entity @p SelectedItem.tag.Warp[1]
execute store result entity @s Pos[2] double 1 run data get entity @p SelectedItem.tag.Warp[2]

execute at @s run tp @s ~0.5 ~ ~0.5
execute at @s run tp @a[tag=link_teleporting] @s

tag @a remove link_teleporting

kill @s