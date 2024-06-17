
#Recipe Book - NBT NOT UPDATED
#scoreboard players enable @a mystguide
#execute as @a[scores={mystguide=1..}] at @s run give @s written_book{display:{Name:'{"text":"Mystcraft Guide Book","bold":true,"italic":false}'},CustomModelData:681,title:"Mystcraft Guide Book",author:"MaybeNotConnor",generation:0,pages:['{"text":"Welcome to Mystcraft!\\n\\nThese books can help you travel quickly.\\nTo craft books, drop the required items on the ground together.\\n\\nThis is the \'lite\' version, which does not include dimensions. Compatible MC v1.18"}','{"text":"When used, books are dropped at their current location.\\n\\nThis book describes the books and how to craft them."}','{"text":"Linking Book:\\nBook + Ender Pearl\\n\\nThe most powerful of all books. When used, each link book will teleport back to where it was crafted. These cannot be placed on lecterns. Link books can be renamed in an anvil (remember where they go!)"}','{"text":"Death Book:\\nBook + Bone\\n\\nThis book is a one-way ticket back to where the player last died. It is consumed on use and can only be used once per death."}','{"text":"Player Book:\\nBook + Player Head\\n\\nIf you manage to obtain the head of a player, this powerful book will teleport you directly to them. \\nA player head can be obtained if the player is killed by a charged creeper."}','[{"text":"Torn Book:\\nBook + Shears\\n\\n"},{"text":"This","obfuscated":true},{"text":" Why would"},{"text":" you do this","obfuscated":true},{"text":"? \\n"},{"text":"This book is ","obfuscated":true},{"text":"very dangerous"},{"text":" and teleports the player to","obfuscated":true},{"text":" a random"},{"text":" dimension.\\n\\n Do not use this!","obfuscated":true}]']} 1
#scoreboard players remove @a[scores={mystguide=1..}] mystguide 1

#Link Book Teleport
execute as @a[scores={carrotbookuse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{linkbook:1}}}}] at @s run function mystcraft:linkbook/link_teleport

#Skull Book Teleport
execute as @a[scores={carrotbookuse=1..,mystdeath_uses=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{skullbook:1}}}}] at @s run function mystcraft:deathbook/death_teleport

#PlayerBook Teleport
execute as @a[scores={carrotbookuse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{playerbook:1}}}}] at @s run function mystcraft:playerbook/playerbook_tp

#Torn Book Teleport
execute as @a[scores={carrotbookuse=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{tornbook:1}}}}] at @s run function mystcraft:tornbook/tornbook_tp
scoreboard players remove @a[scores={carrotbookuse=1..}] carrotbookuse 1