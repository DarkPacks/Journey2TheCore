#All Quests that are completed are routed here
title @s title ""
title @s subtitle {"text":"Quest Completed","color":"green"}

#Remove tag and set stage to 0
scoreboard players set @s stage 0

#Reset Quest Timer
scoreboard players reset @s timer

function bossbar:bossbar/quest_completion
