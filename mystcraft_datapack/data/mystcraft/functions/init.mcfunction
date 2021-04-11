#Give Crafting Book Init
scoreboard objectives add mystguide trigger

#Cave Dimension Init
scoreboard objectives add cavetele trigger

#Village Dimension Init
scoreboard objectives add villagetele trigger

#Volcano Dimension Init
scoreboard objectives add volcanotele trigger

#Twilight Dimension Init
scoreboard objectives add twilighttele trigger

#Overworld Init
scoreboard objectives add overworldtele trigger

#Archipeligo Dimension Init
scoreboard objectives add archipeligotele trigger

#Sanctuary Dimension Init
scoreboard objectives add sanctuarytele trigger

#Ice Dimension Init
scoreboard objectives add icetele trigger

#Small Dimension Init
scoreboard objectives add smalltele trigger

#In Lectern Init
scoreboard objectives add lecternuse minecraft.custom:minecraft.interact_with_lectern

#In Book Init
scoreboard objectives add bookuse minecraft.used:written_book

#Linking Book Init
scoreboard objectives add linkbookuse minecraft.used:minecraft.carrot_on_a_stick

#Skull Book Init
scoreboard objectives add skullbookuse minecraft.used:minecraft.carrot_on_a_stick

#PlayerBook Init
scoreboard objectives add playerbookuse minecraft.used:minecraft.carrot_on_a_stick

#Player Walking Init
scoreboard objectives add walking minecraft.custom:minecraft.walk_one_cm

#Has Triggers Init
scoreboard objectives add hastriggers dummy

#Teleport Effect Init
scoreboard objectives add teleporting dummy

#Death Book Init
scoreboard objectives add deathX dummy
scoreboard objectives add deathY dummy
scoreboard objectives add deathZ dummy
scoreboard objectives add deathDim dummy
scoreboard objectives add death_lastUsed dummy
scoreboard objectives add mystdeaths deathCount

#playerbook uuids
scoreboard objectives add uuid_self_0 dummy
scoreboard objectives add uuid_self_1 dummy
scoreboard objectives add uuid_self_2 dummy
scoreboard objectives add uuid_self_3 dummy

scoreboard objectives add uuid_tp_0 dummy
scoreboard objectives add uuid_tp_1 dummy
scoreboard objectives add uuid_tp_2 dummy
scoreboard objectives add uuid_tp_3 dummy

#when player leaves (unused)
scoreboard objectives add offline minecraft.custom:minecraft.leave_game

say Mystcraft Initialized!