title @a title ""
title @a subtitle {"text":"Quest 6 Completed","color":"white"}

#Remove tag and set stage to 0
tag @s remove stage_6
scoreboard players set @p stage 0

#Reset Quest Timer
scoreboard players reset @p timer

function bossbar:bossbar/quest_completion