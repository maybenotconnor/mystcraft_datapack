#Give Crafting Book Init
scoreboard objectives add mystguide trigger

#Carrot Book Init
scoreboard objectives add carrotbookuse minecraft.used:minecraft.carrot_on_a_stick

#Random Time Init
scoreboard objectives add time dummy
scoreboard objectives add time_div dummy

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
#scoreboard objectives add offline minecraft.custom:minecraft.leave_game

say Mystcraft Lite Initialized!