
#Removes Book on Use
item replace entity @s weapon.mainhand with minecraft:air

# #psuedo-random dimension based on time of day
# execute store result score $random time run time query daytime
# scoreboard players set $random time_div 3400
# scoreboard players operation $random time /= $random time_div

#use the random command
execute store result score $random time run random value 0..7

#spread player in dimension
execute if score $random time matches 0..1 in minecraft:overworld run spreadplayers 0 0 100 3000 false @s
execute if score $random time matches 1..2 in mystworlds:skyland run spreadplayers 0 0 50 1200 false @s
execute if score $random time matches 2..3 in mystworlds:sanctuary run spreadplayers 0 0 30 500 false @s
execute if score $random time matches 3..4 in mystworlds:archipelago run spreadplayers 0 0 30 500 false @s
execute if score $random time matches 4..5 in mystworlds:warrens run tp @s ~ 64 ~
execute if score $random time matches 5..6 in mystworlds:wasteland run spreadplayers 0 0 30 500 false @s
execute if score $random time matches 6.. in mystworlds:ice run spreadplayers 0 0 30 500 false @s

execute run function mystcraft:tpeffect

execute at @s run summon lightning_bolt ~ ~ ~

#allow advancement to trigger again
advancement revoke @s only mystcraft:tornbook_use
