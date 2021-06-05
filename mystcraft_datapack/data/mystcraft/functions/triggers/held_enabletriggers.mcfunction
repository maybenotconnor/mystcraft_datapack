execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{archipeligobook:1b}}}] run scoreboard players enable @s archipeligotele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{cavebook:1b}}}] run scoreboard players enable @s cavetele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{icebook:1b}}}] run scoreboard players enable @s icetele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{overworldbook:1b}}}] run scoreboard players enable @s overworldtele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{sanctuarybook:1b}}}] run scoreboard players enable @s sanctuarytele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{smallbook:1b}}}] run scoreboard players enable @s smalltele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{twilightbook:1b}}}] run scoreboard players enable @s twilighttele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{villagebook:1b}}}] run scoreboard players enable @s villagetele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{volcanobook:1b}}}] run scoreboard players enable @s volcanotele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{rockbook:1b}}}] run scoreboard players enable @s rocktele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{warrenbook:1b}}}] run scoreboard players enable @s warrentele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",tag:{skylandbook:1b}}}] run scoreboard players enable @s skylandtele

scoreboard players set @s walking 0
scoreboard players set @s hastriggers 1

scoreboard players set @s lecternuse 0
scoreboard players set @s bookuse 0