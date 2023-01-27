#Reset
scoreboard players reset @s collect_glowberries_1
scoreboard players reset @s track_glowberries_click
scoreboard players reset @s collect_glowberries_2
scoreboard players reset @s track_glowberries
scoreboard players reset @s quest_reward_number
scoreboard players reset @s quest_quantity
scoreboard players reset @s progress
scoreboard players set @s quest_active 1
se action @s playerbossbar set quest_tracker value 0


cyclic scoreboard random @s 5 26 quest_quantity
se action @s playerbossbar storescore max quest_tracker quest_quantity

se action @s playerbossbar set quest_tracker name [{"text":"Collect "},{"score":{"objective":"quest_quantity","name":"@s"}},{"text":" Glowberries"}]


#set stage
scoreboard players set @s stage 20

#set timer min/max
scoreboard players set @s min_time 12000
scoreboard players set @s max_time 21600

#Start Timer
function sbt:test
se action @s playerbossbar set quest_timer visible true

#Color
se action @s playerbossbar set quest_tracker color blue
function bossbar:bossbar/stage/20
se action @s playerbossbar set quest_tracker visible true

title @s title ""
title @s subtitle {"text":"Quest Start","color":"white"}
