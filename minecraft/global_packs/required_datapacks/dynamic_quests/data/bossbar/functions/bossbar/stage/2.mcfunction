execute if score @s mined_log matches 1 run scoreboard players add @s progress 1
execute if score @s mined_log matches 1 run scoreboard players set @s mined_log 1

execute if score @s mined_log_placed matches 1 run scoreboard players remove @s progress 1
execute if score @s mined_log_placed matches 1 run scoreboard players remove @s mined_log_placed 1

scoreboard players reset @s mined_log
scoreboard players reset @s mined_log_placed

execute store result bossbar minecraft:bar max run scoreboard players get @s quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1