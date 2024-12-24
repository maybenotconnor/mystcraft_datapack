#Player Book
execute as @e[type=item,nbt={Item:{id:"minecraft:book",count:1}},limit=1,sort=nearest,distance=0..1] at @s run function mystcraft:playerbook/playerbook_crafting_summon