title @a title ""
title @a subtitle {"text":"Quest 3 Completed","color":"white"}

#Remove tag and set stage to 0
tag @s remove stage_3
scoreboard players set @p stage 0

#Reset Quest Timer
scoreboard players reset @p timer

function bossbar:bossbar/quest_completion