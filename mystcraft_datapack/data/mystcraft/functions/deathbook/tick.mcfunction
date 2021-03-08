	# Controls everything to do with sethome

	# Stores player's death point
execute as @a[scores={mystdeaths=1..}] at @s run function mystcraft:deathbook/get_death_point
scoreboard players set @a mystdeaths 0