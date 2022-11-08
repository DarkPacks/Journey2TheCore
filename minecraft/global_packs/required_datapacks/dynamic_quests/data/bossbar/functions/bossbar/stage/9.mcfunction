scoreboard players operation @s progress += @s climb
scoreboard players reset @s climb

execute store result bossbar minecraft:bar max run scoreboard players get @s quest_quantity_converted
execute if score @s progress >= @s quest_quantity_converted run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
