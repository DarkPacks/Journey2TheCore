#Reset
scoreboard players reset @s quest_reward_number
scoreboard players reset @s swim
scoreboard players reset @s quest_quantity
scoreboard players set @s quest_quantity_converted 100
scoreboard players reset @s progress
scoreboard players set @s quest_active 1
execute run bossbar set bar value 0


cyclic scoreboard random @s 50 201 quest_quantity
scoreboard players operation @s quest_quantity_converted *= @s quest_quantity


execute store result bossbar minecraft:bar max run scoreboard players get @s quest_quantity_converted 
bossbar set minecraft:bar name [{"text":"Swim "},{"score":{"objective":"quest_quantity","name":"@s"}},{"text":" Blocks"}]

#set stage
scoreboard players set @s stage 7

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
function bossbar:bossbar/stage/7
bossbar set bar visible true

title @a title ""
title @a subtitle {"text":"Quest Start","color":"white"}