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
scoreboard objectives add icetele trigger
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

#Random Time Init
scoreboard objectives add time dummy
scoreboard objectives add time_div dummy

#Death Usage Init
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

#leash uuids
scoreboard objectives add uuid_leash_0 dummy
scoreboard objectives add uuid_leash_1 dummy
scoreboard objectives add uuid_leash_2 dummy
scoreboard objectives add uuid_leash_3 dummy

scoreboard objectives add uuid_leashplayer_0 dummy
scoreboard objectives add uuid_leashplayer_1 dummy
scoreboard objectives add uuid_leashplayer_2 dummy
scoreboard objectives add uuid_leashplayer_3 dummy

#for lectern raycasting 
scoreboard objectives add raycasttemp dummy
scoreboard objectives add linklecternuse trigger

#say Mystcraft Initialized!