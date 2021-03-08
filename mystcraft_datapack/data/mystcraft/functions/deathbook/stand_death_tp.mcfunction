execute store result entity @s Pos[0] double 1 run scoreboard players get @p deathX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p deathY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p deathZ

execute at @s run tp @s ~0.5 ~ ~0.5
execute at @s run tp @a[tag=death_player_tp] @s

tag @a remove death_player_tp

kill @s