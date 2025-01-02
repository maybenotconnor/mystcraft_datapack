execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{archipelagobook:true}}}}] run scoreboard players enable @s archipelagotele
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{cavebook:1}}}}] run scoreboard players enable @s cavetele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{icebook:true}}}}] run scoreboard players enable @s icetele
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{overworldbook:1}}}}] run scoreboard players enable @s overworldtele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{sanctuarybook:true}}}}] run scoreboard players enable @s sanctuarytele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{smallbook:true}}}}] run scoreboard players enable @s smalltele
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{twilightbook:1}}}}] run scoreboard players enable @s twilighttele
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{villagebook:1}}}}] run scoreboard players enable @s villagetele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{volcanobook:true}}}}] run scoreboard players enable @s volcanotele
#execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{rockbook:1}}}}] run scoreboard players enable @s rocktele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{warrenbook:true}}}}] run scoreboard players enable @s warrentele
execute as @a[nbt={SelectedItem:{id:"minecraft:written_book",components:{"minecraft:custom_data":{skylandbook:true}}}}] run scoreboard players enable @s skylandtele

scoreboard players set @s walking 0
scoreboard players set @s hastriggers 1

scoreboard players set @s lecternuse 0
scoreboard players set @s bookuse 0