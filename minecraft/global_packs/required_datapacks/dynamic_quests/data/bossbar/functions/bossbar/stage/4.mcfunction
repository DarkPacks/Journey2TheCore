scoreboard players operation @s progress += @s block_with_shield
scoreboard players reset @s block_with_shield

se action @s playerbossbar storescore max quest_tracker quest_quantity
execute store result bossbar minecraft:bar value run scoreboard players get @s progress
execute if score @s progress >= @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
