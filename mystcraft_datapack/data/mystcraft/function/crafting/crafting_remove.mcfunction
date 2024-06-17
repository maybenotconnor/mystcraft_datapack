kill @e[type=item,nbt={Item:{id:"minecraft:book",count:1}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:writable_book",count:1}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",count:1}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:bone",count:1}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:cobblestone",count:1}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:emerald",count:1}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:coal",count:1}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:clock",count:1}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds",count:1}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:potion",count:1}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:apple",count:1}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:snowball",count:1}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:crying_obsidian",count:1}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:player_head",count:1}},sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:shears",count:1}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:iron_bars",count:1}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:stone",count:1}},sort=nearest,limit=1]
#kill @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",count:1}},sort=nearest,limit=1]

playsound minecraft:item.book.page_turn master @p
particle enchanted_hit ~ ~ ~ 1 1 1 .05 10 normal
tag @s remove fresh_craft