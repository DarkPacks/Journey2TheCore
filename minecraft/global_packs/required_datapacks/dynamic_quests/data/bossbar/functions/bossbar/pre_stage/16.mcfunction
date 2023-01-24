#Reset
scoreboard players reset @s quest_reward_number
scoreboard players reset @s kill_spider_1
scoreboard players reset @s kill_spider_2
scoreboard players reset @s quest_quantity
scoreboard players reset @s progress
scoreboard players set @s quest_active 1
bossbar set minecraft:bar players @a[scores={quest_active=1}]


cyclic scoreboard random @s 3 16 quest_quantity
execute store result bossbar minecraft:bar max run scoreboard players get @s quest_quantity 

bossbar set minecraft:bar name [{"text":"Hunt "},{"score":{"objective":"quest_quantity","name":"@s"}},{"text":" Spiders"}]



#set stage
scoreboard players set @s stage 16

#set bossbar display
function bossbar:bossbar/stage/upgrade

#set timer min/max
scoreboard players set @s min_time 12000
scoreboard players set @s max_time 21600

#Start Timer
function sbt:test
bossbar set minecraft:test2 visible true

#Color
execute run bossbar set bar color blue
function bossbar:bossbar/stage/16
bossbar set bar visible true

title @s title ""
title @s subtitle {"text":"Quest Start","color":"white"}
