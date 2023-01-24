title @s title ""
title @s subtitle {"text":"Quest 6 Completed","color":"white"}

#Remove tag and set stage to 0
tag @s remove stage_6
scoreboard players set @2 stage 0

#Reset Quest Timer
scoreboard players reset @2 timer

function bossbar:bossbar/quest_completion
