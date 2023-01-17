#Setting the quest timer
cyclic scoreboard orandom @s min_time max_time random_number
scoreboard players operation @s timer = @s random_number
execute store result bossbar minecraft:test2 max run scoreboard players get @s timer
