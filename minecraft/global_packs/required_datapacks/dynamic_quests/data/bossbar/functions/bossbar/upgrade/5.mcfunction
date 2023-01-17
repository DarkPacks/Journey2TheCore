title @s title ""
title @s subtitle {"text":"Quest 5 Completed","color":"white"}

#Remove tag and set stage to 0
tag @s remove stage_5
scoreboard players set @p stage 0

#Reset Quest Timer
scoreboard players reset @p timer

function bossbar:bossbar/quest_completion
