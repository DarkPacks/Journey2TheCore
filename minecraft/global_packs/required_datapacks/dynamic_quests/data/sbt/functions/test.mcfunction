#Setting the quest timer
cyclic scoreboard orandom @s min_time max_time random_number
scoreboard players operation @s timer = @s random_number
se action @s playerbossbar storescore max quest_timer timer
