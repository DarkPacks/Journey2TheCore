title @s title ""
title @s subtitle {"text":"Quest 3 Completed","color":"white"}

#Remove tag and set stage to 0
tag @s remove stage_3
scoreboard players set @s stage 0

#Reset Quest Timer
scoreboard players reset @s timer

function bossbar:bossbar/quest_completion
