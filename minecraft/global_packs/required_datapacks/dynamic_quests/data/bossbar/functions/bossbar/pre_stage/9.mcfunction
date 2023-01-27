#Reset
scoreboard players reset @s quest_reward_number
scoreboard players reset @s climb
scoreboard players reset @s quest_quantity
scoreboard players set @s quest_quantity_converted 100
scoreboard players reset @s progress
scoreboard players set @s quest_active 1
se action @s playerbossbar set quest_tracker value 0

cyclic scoreboard random @s 50 201 quest_quantity
scoreboard players operation @s quest_quantity_converted *= @s quest_quantity


se action @s playerbossbar storescore max quest_tracker quest_quantity_converted
se action @s playerbossbar set quest_tracker name [{"text":"Climb "},{"score":{"objective":"quest_quantity","name":"@s"}},{"text":" Ladders"}]


#set stage
scoreboard players set @s stage 9

#set bossbar display
function bossbar:bossbar/stage/upgrade

#set timer min/max
scoreboard players set @s min_time 12000
scoreboard players set @s max_time 21600

#Start Timer
function sbt:test
se action @s playerbossbar set quest_timer visible true

#Color
se action @s playerbossbar set quest_tracker color blue
function bossbar:bossbar/stage/9
se action @s playerbossbar set quest_tracker visible true

title @s title ""
title @s subtitle {"text":"Quest Start","color":"white"}
