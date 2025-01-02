scoreboard players set #hit raycasttemp 1

# THIS FUNCTION CAN BE RUN FOR MULTIPLE REASONS

#if the lectern has no book, then make it have one
execute if block ~ ~ ~ minecraft:lectern[has_book=false] run setblock ~ ~ ~ lectern[has_book=true]
#if not using to teleport then copy data
execute if score @s linklecternuse matches 0 run data modify block ~ ~ ~ Book merge from entity @s SelectedItem


#if using trigger then initiate teleport
execute as @s[scores={linklecternuse=1..}] run function mystcraft:linklectern/link_teleport

#allow advancement to trigger again
advancement revoke @s only mystcraft:use_link_on_lectern

#(the trigger is reset after tp)