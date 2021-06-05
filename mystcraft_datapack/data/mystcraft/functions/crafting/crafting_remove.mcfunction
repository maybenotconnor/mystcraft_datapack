kill @e[type=item,nbt={Item:{id:"minecraft:book",Count:1b}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:writable_book",Count:1b}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:bone",Count:1b}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",Count:1b}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:coal",Count:1b}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:clock",Count:1b}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds",Count:1b}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:potion",Count:1b}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:apple",Count:1b}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:snowball",Count:1b}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:crying_obsidian",Count:1b}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:player_head",Count:1b}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:shears",Count:1b}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:iron_bars",Count:1b}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:stone",Count:1b}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}},sort=nearest,limit=1]

playsound minecraft:item.book.page_turn master @p
particle enchanted_hit ~ ~ ~ 1 1 1 .05 10 normal
tag @s remove fresh_craft