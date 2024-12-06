#Give Crafting Book Init
scoreboard objectives add mystguide trigger

#Dimension teleport triggers:
#Cave Dimension Init
#scoreboard objectives add cavetele trigger
#Village Dimension Init
#scoreboard objectives add villagetele trigger
#Volcano Dimension Init
scoreboard objectives add volcanotele trigger
#Twilight Dimension Init
#scoreboard objectives add twilighttele trigger
#Overworld Init
#scoreboard objectives add overworldtele trigger
#Archipeligo Dimension Init
scoreboard objectives add archipelagotele trigger
#Sanctuary Dimension Init
scoreboard objectives add sanctuarytele trigger
#Ice Dimension Init
#scoreboard objectives add icetele trigger
#Small Dimension Init
scoreboard objectives add smalltele trigger
#Stone Age Init
#scoreboard objectives add rocktele trigger
#Warren Dimension Init
scoreboard objectives add warrentele trigger
#Skylands Init
scoreboard objectives add skylandtele trigger

#for dimension triggers:
#Player Walking Init
scoreboard objectives add walking minecraft.custom:minecraft.walk_one_cm
#Has Triggers Init
scoreboard objectives add hastriggers dummy
#In Lectern Init
scoreboard objectives add lecternuse minecraft.custom:minecraft.interact_with_lectern
#In Book Init
scoreboard objectives add bookuse minecraft.used:written_book

#Carrot Book Init
scoreboard objectives add carrotbookuse minecraft.used:minecraft.carrot_on_a_stick

#Random Time Init
scoreboard objectives add time dummy
scoreboard objectives add time_div dummy

#Death Book Init
#scoreboard objectives add deathX dummy
#scoreboard objectives add deathY dummy
#scoreboard objectives add deathZ dummy
#scoreboard objectives add deathDim dummy
#scoreboard objectives add death_lastUsed dummy
scoreboard objectives add mystdeath_uses deathCount

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
#scoreboard objectives add offline minecraft.custom:minecraft.leave_game

#say Mystcraft Initialized!