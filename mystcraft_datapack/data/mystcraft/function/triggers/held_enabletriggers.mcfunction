execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{archipelagobook:1}}}}] run scoreboard players enable @s archipelagotele
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{cavebook:1}}}}] run scoreboard players enable @s cavetele
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{icebook:1}}}}] run scoreboard players enable @s icetele
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{overworldbook:1}}}}] run scoreboard players enable @s overworldtele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{sanctuarybook:1}}}}] run scoreboard players enable @s sanctuarytele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{smallbook:1}}}}] run scoreboard players enable @s smalltele
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{twilightbook:1}}}}] run scoreboard players enable @s twilighttele
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{villagebook:1}}}}] run scoreboard players enable @s villagetele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{volcanobook:1}}}}] run scoreboard players enable @s volcanotele
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{rockbook:1}}}}] run scoreboard players enable @s rocktele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{warrenbook:1}}}}] run scoreboard players enable @s warrentele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{skylandbook:1}}}}] run scoreboard players enable @s skylandtele

scoreboard players set @s walking 0
scoreboard players set @s hastriggers 1

scoreboard players set @s lecternuse 0
scoreboard players set @s bookuse 0