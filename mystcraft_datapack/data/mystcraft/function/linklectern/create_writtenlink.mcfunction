#use loot table to convert link book to written book
loot replace entity @s weapon.mainhand loot mystcraft:link_to_written

#start the raycast
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function mystcraft:raycast/start_ray

#allow advancement to trigger again after raycast end
advancement revoke @s only mystcraft:use_link_on_lectern