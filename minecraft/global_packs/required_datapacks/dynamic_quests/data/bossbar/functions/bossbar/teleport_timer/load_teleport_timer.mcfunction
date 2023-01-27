#execute run bossbar set minecraft:teleport_timer value 0

cyclic scoreboard random @s 8400 18000 teleport_timer

title @s title {"text":"","color":"red"}
title @s subtitle {"text":"Blame Chat!","color":"red"}


#Start Timer
function sbt:quest_completion_timer/teleport_timer
se action @s playerbossbar set teleport_timer visible true
