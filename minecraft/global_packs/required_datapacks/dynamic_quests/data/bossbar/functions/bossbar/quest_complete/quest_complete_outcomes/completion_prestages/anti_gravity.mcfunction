#Reset
#Might need to do this. I didn't want to remove it because if it does work
#I might forget what I needed to do. So I'm leaving it. I also could
#Have just left it on with the new system and it would have taken
#less time than to write this all out. 
#Addendum: I later found out that I did need this line
#or else new quests show up with a filled bar visually...
#Actually, maybe not. I might not need. Keeping it anyways!
#execute run bossbar set minecraft:completion_timer value 0
##
##
#P.S. This might actually be important to keep, so for safety let's keep it!
se action @s playerbossbar set completion_timer value 0

cyclic scoreboard random @s 600 6000 completion_timer

title @s title {"text":"","color":"red"}
title @s subtitle {"text":"You feel a bit lighter!","color":"red"}


#Start Timer
function sbt:quest_completion_timer/test
se action @s playerbossbar set completion_timer visible true

scoreboard players set @s effect_resistance 1
