#Play Quest Fail Sound
execute at @s run playsound cyclic:explosm master @s ~ ~ ~ 1.0 1.3


#On Screen Text telling you that you are a failure
title @a title ""
title @a subtitle {"text":"Quest Failed","color":"red"}

#Set stage to 0
scoreboard players set @p stage 0
execute if score @s timer matches 1 run scoreboard players reset @p timer

#Remove Bossbar
schedule function bossbar:bossbar/clear_visibility 5s

#Outcome
function bossbar:bossbar/quest_fail/quest_failure_outcomes/lower_max_health