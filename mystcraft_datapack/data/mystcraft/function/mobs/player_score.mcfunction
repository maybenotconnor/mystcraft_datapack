execute store result score @s uuid_leashplayer_0 run data get entity @s UUID[0]
execute store result score @s uuid_leashplayer_1 run data get entity @s UUID[1]
execute store result score @s uuid_leashplayer_2 run data get entity @s UUID[2]
execute store result score @s uuid_leashplayer_3 run data get entity @s UUID[3]

scoreboard players operation $leashplayertp uuid_leashplayer_0 = @s uuid_leashplayer_0
scoreboard players operation $leashplayertp uuid_leashplayer_1 = @s uuid_leashplayer_1
scoreboard players operation $leashplayertp uuid_leashplayer_2 = @s uuid_leashplayer_2
scoreboard players operation $leashplayertp uuid_leashplayer_3 = @s uuid_leashplayer_3