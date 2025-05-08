execute as @s store result score @s uuid_leash_0 run data get entity @s leash.UUID[0]
execute as @s store result score @s uuid_leash_1 run data get entity @s leash.UUID[1]
execute as @s store result score @s uuid_leash_2 run data get entity @s leash.UUID[2]
execute as @s store result score @s uuid_leash_3 run data get entity @s leash.UUID[3]

$execute as @s if score @s uuid_leash_0 = $leashplayertp uuid_leashplayer_0 if score @s uuid_leash_1 = $leashplayertp uuid_leashplayer_1 if score @s uuid_leash_2 = $leashplayertp uuid_leashplayer_2 if score @s uuid_leash_3 = $leashplayertp uuid_leashplayer_3 run tag @s add $(tag)