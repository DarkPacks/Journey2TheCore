#Reset
scoreboard players reset @s jump
execute run bossbar set minecraft:fail_timer value 0

cyclic scoreboard random @s 1200 6000 fail_timer

title @a title ""
title @a subtitle {"text":"Jumping Will Now Randomize Your Inventory","color":"red"}


#set timer min/max
#scoreboard players set @a fail_min_time 1200
#scoreboard players set @a fail_max_time 4800

#Start Timer
function sbt:quest_fail_timer/test
bossbar set minecraft:fail_timer visible true


scoreboard players set @a inventory_randomize 1