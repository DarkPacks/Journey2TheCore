#All Quests that are completed are routed here
title @a title ""
title @a subtitle {"text":"Quest Completed","color":"green"}

#Remove tag and set stage to 0
scoreboard players set @p stage 0

#Reset Quest Timer
scoreboard players reset @p timer

function bossbar:bossbar/quest_completion