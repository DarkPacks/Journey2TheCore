#Reset
execute run bossbar set minecraft:completion_timer value 0

cyclic scoreboard random @s 600 6000 completion_timer

title @a title {"text":"","color":"red"}
title @a subtitle {"text":"You feel a bit stronger!","color":"red"}


#Start Timer
function sbt:quest_completion_timer/test
bossbar set minecraft:completion_timer visible true


scoreboard players set @a effect_resistance 1