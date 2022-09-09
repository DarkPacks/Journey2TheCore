scoreboard players add @a random_number 0
scoreboard players add @a timer 0
scoreboard players add @a fail_timer 0
scoreboard players add @a completion_timer 0
bossbar set minecraft:test2 players @a
bossbar set minecraft:fail_timer players @a
bossbar set minecraft:completion_timer players @a
gamerule doInsomnia false
gamerule doWeatherCycle false