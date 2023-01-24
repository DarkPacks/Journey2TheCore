execute as @s store result score @s player_y_level run data get entity @s Pos[1] 1

execute if score @s player_y_level <= @s dig_down run function bossbar:bossbar/upgrade/1

execute store result bossbar minecraft:bar max run scoreboard players get @s quest_quantity
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
