#Reset
scoreboard players reset @s quest_reward_number
scoreboard players reset @s punched_animal_1
scoreboard players reset @s punched_animal_2
scoreboard players reset @s punched_animal_3
scoreboard players reset @s punched_animal_5
scoreboard players reset @s punched_animal_6
scoreboard players reset @s punched_animal_7
scoreboard players reset @s punched_animal_8
scoreboard players reset @s punched_animal_9
scoreboard players reset @s punched_animal_10
scoreboard players reset @s punched_animal_11
scoreboard players reset @s punched_animal_12
scoreboard players reset @s punched_animal_13
scoreboard players reset @s punched_animal_14
scoreboard players reset @s punched_animal_15
scoreboard players reset @s punched_animal_16
scoreboard players reset @s punched_animal_17
scoreboard players reset @s punched_animal_18
scoreboard players reset @s punched_animal_19
scoreboard players reset @s punched_animal_20
scoreboard players reset @s punched_animal_21
scoreboard players reset @s punched_animal_22
scoreboard players reset @s punched_animal_23
scoreboard players reset @s punched_animal_24
scoreboard players reset @s punched_animal_25
scoreboard players reset @s punched_animal_26
scoreboard players reset @s quest_quantity
scoreboard players reset @s progress
scoreboard players set @s quest_active 1
se action @s playerbossbar set quest_tracker value 0


cyclic scoreboard random @s 3 16 quest_quantity
se action @s playerbossbar storescore max quest_tracker quest_quantity

se action @s playerbossbar set quest_tracker name [{"text":"Hunt "},{"score":{"objective":"quest_quantity","name":"@s"}},{"text":" Animals"}]


#set stage
scoreboard players set @s stage 3

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
function bossbar:bossbar/stage/3
se action @s playerbossbar set quest_tracker visible true

title @s title ""
title @s subtitle {"text":"Quest Start","color":"white"}
