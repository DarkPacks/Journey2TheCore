#Reset
scoreboard players reset @s quest_reward_number
scoreboard players reset @s dig_down
scoreboard players reset @s number
scoreboard players reset @s player_y_level
scoreboard players reset @s quest_quantity
scoreboard players reset @s progress
scoreboard players set @s quest_active 1
se action @s playerbossbar set quest_tracker value 0


cyclic scoreboard random @s 50 201 quest_quantity
se action @s playerbossbar storescore max quest_tracker quest_quantity

se action @s playerbossbar set quest_tracker name [{"text":"Go Down "},{"score":{"objective":"quest_quantity","name":"@s"}},{"text":" Blocks"}]


#set stage
scoreboard players set @s stage 17

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
function bossbar:bossbar/stage/17
se action @s playerbossbar set quest_tracker visible true

scoreboard players operation @s number = @s quest_quantity
#scoreboard players set @s number 150
execute as @s store result score @s dig_down run data get entity @s Pos[1] 1
scoreboard players operation @s dig_down -= @s number


title @s title ""
title @s subtitle {"text":"Quest Start","color":"white"}
