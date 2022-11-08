#Player
bossbar set minecraft:bar players @p
execute as @p at @s run function bossbar:bossbar/player
#Quest Timer
function sbt:rng
execute if score @p timer matches 1.. run scoreboard players remove @p timer 1
execute if score @p timer matches 1.. store result bossbar minecraft:test2 value run scoreboard players get @p timer
execute if score @p timer matches 0 run bossbar set minecraft:test2 visible false
#Failure Timer
function sbt:quest_fail_timer/rng
execute if score @p fail_timer matches 1.. run scoreboard players remove @p fail_timer 1
execute if score @p fail_timer matches 1.. store result bossbar minecraft:fail_timer value run scoreboard players get @p fail_timer
execute if score @p fail_timer matches 0 run bossbar set minecraft:fail_timer visible false
#Completion Timer
function sbt:quest_completion_timer/rng
execute if score @p completion_timer matches 1.. run scoreboard players remove @p completion_timer 1
execute if score @p completion_timer matches 1.. store result bossbar minecraft:completion_timer value run scoreboard players get @p completion_timer
execute if score @p completion_timer matches 0 run bossbar set minecraft:completion_timer visible false