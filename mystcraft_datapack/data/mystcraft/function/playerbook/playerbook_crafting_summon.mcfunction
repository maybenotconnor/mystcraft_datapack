#summon book to be copied into
execute at @s run summon item ~ ~0.1 ~ {PickupDelay:50,Tags:["fresh_playerbook"],Item:{id:"minecraft:book",count:1,components:{"minecraft:custom_name":'{"text":"Player Book","color":"red","italic":false}',"minecraft:custom_data":{playerbook:true},"minecraft:custom_model_data":{strings:["playerbook"]}}}}

#remove crafting material here
kill @s