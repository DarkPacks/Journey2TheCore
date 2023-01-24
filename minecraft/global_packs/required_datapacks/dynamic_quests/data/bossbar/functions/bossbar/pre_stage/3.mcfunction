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
bossbar set minecraft:bar players @a[scores={quest_active=1}]
execute run bossbar set bar value 0


cyclic scoreboard random @s 3 16 quest_quantity
execute store result bossbar minecraft:bar max run scoreboard players get @s quest_quantity 

bossbar set minecraft:bar name [{"text":"Hunt "},{"score":{"objective":"quest_quantity","name":"@s"}},{"text":" Animals"}]


#set stage
scoreboard players set @s stage 3

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
function bossbar:bossbar/stage/3
bossbar set bar visible true

title @s title ""
title @s subtitle {"text":"Quest Start","color":"white"}
