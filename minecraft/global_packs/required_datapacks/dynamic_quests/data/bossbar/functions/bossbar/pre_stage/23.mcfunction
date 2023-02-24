#Reset
scoreboard players reset @s quest_reward_number
scoreboard players reset @s dig_down
scoreboard players reset @s player_y_level
scoreboard players reset @s quest_quantity
scoreboard players reset @s progress
scoreboard players set @s quest_active 1
se action @s playerbossbar set quest_tracker value 0

cyclic scoreboard random @s 50 201 quest_quantity
se action @s playerbossbar storescore max quest_tracker quest_quantity

se action @s playerbossbar set quest_tracker name [{"text":"Jump "},{"score":{"objective":"quest_quantity","name":"@s"}},{"text":" Times"}]


#set stage
scoreboard players set @s stage 23

#set bossbar display
function bossbar:bossbar/stage/upgrade

#set timer min/max
scoreboard players set @s min_time 6000
scoreboard players set @s max_time 8400

#Start Timer
function sbt:test
se action @s playerbossbar set quest_timer visible true

#Color
se action @s playerbossbar set quest_tracker color blue
function bossbar:bossbar/stage/23
se action @s playerbossbar set quest_tracker visible true

title @s title ""
title @s subtitle {"text":"Quest Start","color":"white"}
