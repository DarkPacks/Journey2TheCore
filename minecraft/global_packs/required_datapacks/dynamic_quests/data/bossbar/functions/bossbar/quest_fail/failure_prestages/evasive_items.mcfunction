#Reset
execute run bossbar set minecraft:fail_timer value 0

cyclic scoreboard random @s 1200 12000 fail_timer

title @s title ""
title @s subtitle {"text":"You Stink!","color":"red"}


#Start Timer
function sbt:quest_fail_timer/test
bossbar set minecraft:fail_timer visible true


scoreboard players set @s evasive_items 1
