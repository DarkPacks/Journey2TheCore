scoreboard players add @s random_number 0
scoreboard players add @s timer 0
scoreboard players add @s fail_timer 0
scoreboard players add @s completion_timer 0
scoreboard players add @s teleport_timer 0
bossbar set minecraft:test2 players @s
bossbar set minecraft:fail_timer players @s
bossbar set minecraft:completion_timer players @s
bossbar set minecraft:teleport_timer players @s
gamerule doInsomnia false
gamerule doWeatherCycle false
#gamerule sendCommandFeedback false

#Set Stage Objective Scores
scoreboard players set @s quest_0 1
