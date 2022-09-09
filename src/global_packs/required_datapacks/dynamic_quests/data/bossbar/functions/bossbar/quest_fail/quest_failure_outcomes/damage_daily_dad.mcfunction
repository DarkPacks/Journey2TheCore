execute as @s if score @s fail_take_damage matches 2.. run dailydad joke

scoreboard players reset @s fail_take_damage
execute if score @s fail_timer matches 1 run function bossbar:bossbar/quest_fail/quest_fail_poststages/damage_daily_dad