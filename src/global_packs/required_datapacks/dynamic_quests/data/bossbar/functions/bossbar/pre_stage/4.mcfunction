#Reset
scoreboard players reset @s quest_reward_number
scoreboard players reset @s block_with_shield
scoreboard players reset @s quest_quantity
scoreboard players reset @s progress
scoreboard players set @s quest_active 1
execute run bossbar set bar value 0


cyclic scoreboard random @s 100 1001 quest_quantity
execute store result bossbar minecraft:bar max run scoreboard players get @s quest_quantity 
bossbar set minecraft:bar name [{"text":"Block "},{"score":{"objective":"quest_quantity","name":"@s"}},{"text":" Damage with a Shield"}]

#set stage
scoreboard players set @s stage 4

#set bossbar display
function bossbar:bossbar/stage/upgrade

#set timer min/max
scoreboard players set @a min_time 9600
scoreboard players set @a max_time 14400

#Start Timer
function sbt:test
bossbar set minecraft:test2 visible true

#Color
execute run bossbar set bar color blue
function bossbar:bossbar/stage/4
bossbar set bar visible true

title @a title ""
title @a subtitle {"text":"Quest Start","color":"white"}