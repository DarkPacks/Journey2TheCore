#Reset
scoreboard players reset @s quest_reward_number
scoreboard players reset @s activate_waystone1
scoreboard players reset @s activate_waystone2
scoreboard players reset @s activate_waystone3
scoreboard players reset @s quest_quantity
scoreboard players reset @s progress
scoreboard players set @s quest_active 1
se action @s playerbossbar set quest_tracker value 0


cyclic scoreboard random @s 1 4 quest_quantity
se action @s playerbossbar storescore max quest_tracker quest_quantity

se action @s playerbossbar set quest_tracker name [{"text":"Activate "},{"score":{"objective":"quest_quantity","name":"@s"}},{"text":" New Waystones"}]

#set stage
scoreboard players set @s stage 26

#set bossbar display
function bossbar:bossbar/stage/upgrade

#set timer min/max
scoreboard players set @s min_time 12000
scoreboard players set @s max_time 24000

#Start Timer
function sbt:test
se action @s playerbossbar set quest_timer visible true

#Color
se action @s playerbossbar set quest_tracker color blue
function bossbar:bossbar/stage/26
se action @s playerbossbar set quest_tracker visible true

title @s title ""
title @s subtitle {"text":"Quest Start","color":"white"}
