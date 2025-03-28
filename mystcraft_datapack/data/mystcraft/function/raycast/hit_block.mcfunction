scoreboard players set #hit raycasttemp 1

# THIS FUNCTION CAN BE RUN FOR MULTIPLE REASONS

#if the lectern has no book, then make it have one, make sure facing right direction
$execute if block ~ ~ ~ minecraft:lectern[has_book=false] run setblock ~ ~ ~ lectern[has_book=true,facing=$(facing)]
#if not using to teleport then copy data
execute if score @s linklecternuse matches 0 run data modify block ~ ~ ~ Book merge from entity @s SelectedItem
#delete the book from the player now that it is on the lectern
execute if score @s linklecternuse matches 0 run item replace entity @s weapon.mainhand with minecraft:air

#if using trigger then initiate teleport
execute as @s[scores={linklecternuse=1..}] run function mystcraft:linklectern/link_teleport

#(the trigger is reset after tp)