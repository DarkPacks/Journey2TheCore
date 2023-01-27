#Play Quest Fail Sound
execute at @s run playsound cyclic:explosm master @s ~ ~ ~ 1.0 1.3


#On Screen Text telling you that you are a failure
title @s title ""
title @s subtitle {"text":"Quest Failed","color":"red"}

#Set stage to 0
scoreboard players set @p stage 0
execute if score @s timer matches 1 run scoreboard players reset @p timer

#Remove Bossbar
function bossbar:bossbar/clear_visibility

#Outcome
function bossbar:bossbar/quest_fail/quest_failure_outcomes/lower_max_health
