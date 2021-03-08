# Sets the death point of the player to teleport to

scoreboard players set @s death_lastUsed 0

# Store location
execute store result score @s deathX run data get entity @s Pos[0]
execute store result score @s deathY run data get entity @s Pos[1]
execute store result score @s deathZ run data get entity @s Pos[2]
execute store result score @s deathDim run data get entity @s Dimension

# Reset scores
scoreboard players set @s mystdeaths 0