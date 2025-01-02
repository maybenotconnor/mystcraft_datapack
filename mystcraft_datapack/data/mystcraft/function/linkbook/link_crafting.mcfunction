#loot table replace unlinkbook
execute as @a[tag=link_crafting] at @s run loot replace entity @s weapon.mainhand loot mystcraft:linkbook_loot

#allow advancement to trigger again
execute as @a[tag=link_crafting] run advancement revoke @s only mystcraft:linkbook_write

tag @a remove link_crafting