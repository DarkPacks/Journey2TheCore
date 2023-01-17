#Reset
scoreboard players reset @s quest_reward_number
scoreboard players reset @s dig_down
scoreboard players reset @s number
scoreboard players reset @s player_y_level
scoreboard players reset @s quest_quantity
scoreboard players reset @s progress
scoreboard players set @s quest_active 1
execute run bossbar set bar value 0


cyclic scoreboard random @s 50 201 quest_quantity
execute store result bossbar minecraft:bar max run scoreboard players get @s quest_quantity 

bossbar set minecraft:bar name [{"text":"Go Down "},{"score":{"objective":"quest_quantity","name":"@s"}},{"text":" Blocks"}]


#set stage
scoreboard players set @s stage 17

#set bossbar display
function bossbar:bossbar/stage/upgrade

#set timer min/max
scoreboard players set @s min_time 6000
scoreboard players set @s max_time 8400

#Start Timer
function sbt:test
bossbar set minecraft:test2 visible true

#Color
execute run bossbar set bar color blue
function bossbar:bossbar/stage/17
bossbar set bar visible true

scoreboard players operation @s number = @s quest_quantity
#scoreboard players set @s number 150
execute as @s store result score @s dig_down run data get entity @s Pos[1] 1
scoreboard players operation @s dig_down -= @s number


title @s title ""
title @s subtitle {"text":"Quest Start","color":"white"}
