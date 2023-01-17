#Reset
scoreboard players reset @s fail_take_damage
execute run bossbar set minecraft:fail_timer value 0

cyclic scoreboard random @s 600 12000 fail_timer

title @s title {"text":"When is a joke, a dad joke?","color":"red"}
title @s subtitle {"text":"When it becomes apparent","color":"red"}


#Start Timer
function sbt:quest_fail_timer/test
bossbar set minecraft:fail_timer visible true


scoreboard players set @s damage_dad_joke 1
