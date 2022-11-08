#Reset
scoreboard players reset @s fail_take_damage
execute run bossbar set minecraft:fail_timer value 0

cyclic scoreboard random @s 600 6000 fail_timer

title @a title {"text":"When is a joke, a dad joke?","color":"red"}
title @a subtitle {"text":"When it becomes apparent","color":"red"}


#Start Timer
function sbt:quest_fail_timer/test
bossbar set minecraft:fail_timer visible true


scoreboard players set @a damage_dad_joke 1