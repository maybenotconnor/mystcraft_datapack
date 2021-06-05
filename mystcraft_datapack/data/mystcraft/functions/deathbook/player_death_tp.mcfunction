# Teleports the player to their death

scoreboard players add @s teleporting 1

execute if score @s deathDim matches 20 in minecraft:the_nether run tp @s ~ ~ ~
execute if score @s deathDim matches 19 in minecraft:overworld run tp @s ~ ~ ~
execute if score @s deathDim matches 17 in minecraft:the_end run tp @s ~ ~ ~
execute if score @s deathDim matches 24 in mystworlds:twilightworld run tp @s ~ ~ ~
execute if score @s deathDim matches 21 in mystworlds:cavesworld run tp @s ~ ~ ~
execute if score @s deathDim matches 22 in mystworlds:archipeligo run tp @s ~ ~ ~
execute if score @s deathDim matches 25 in mystworlds:sanctuaryworld run tp @s ~ ~ ~
execute if score @s deathDim matches 23 in mystworlds:volcanoworld run tp @s ~ ~ ~
execute if score @s deathDim matches 14 in mystworlds:ice run tp @s ~ ~ ~
execute if score @s deathDim matches 18 in mystworlds:village run tp @s ~ ~ ~
execute if score @s deathDim matches 16 in mystworlds:small run tp @s ~ ~ ~
execute if score @s deathDim matches 15 in mystworlds:rock run tp @s ~ ~ ~
execute if score @s deathDim matches 26 in mystworlds:warrendimension run tp @s ~ ~ ~
execute if score @s deathDim matches 27 in mystworlds:skylanddimension run tp @s ~ ~ ~

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["death_stand"],NoGravity:1b,Invisible:1b,Marker:1b}
tag @s add death_player_tp

execute as @e[tag=death_stand,sort=nearest,limit=1] at @s run function mystcraft:deathbook/stand_death_tp

#Removes Book on Use
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{skullbook:1b}}}] run clear @s minecraft:carrot_on_a_stick{skullbook:1b} 1

#Disables until next death
scoreboard players add @s death_lastUsed 1
