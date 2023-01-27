#Reset
scoreboard players reset @s jump
#execute run bossbar set minecraft:fail_timer value 0

cyclic scoreboard random @s 1200 12000 fail_timer

title @s title ""
title @s subtitle {"text":"Jumping Will Now Randomize Your Inventory","color":"red"}


#set timer min/max
#scoreboard players set @s fail_min_time 1200
#scoreboard players set @s fail_max_time 4800

#Start Timer
function sbt:quest_fail_timer/test
se action @s playerbossbar set fail_timer visible true


scoreboard players set @s inventory_randomize 1
