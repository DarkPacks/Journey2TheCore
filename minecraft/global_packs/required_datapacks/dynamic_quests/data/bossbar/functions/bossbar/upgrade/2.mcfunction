title @s title ""
title @s subtitle {"text":"Quest Completed","color":"white"}

#Remove tag and set stage to 0
scoreboard players set @p stage 0

#Reset Quest Timer
scoreboard players reset @p timer

function bossbar:bossbar/quest_completion
