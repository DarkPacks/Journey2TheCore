execute if score @s used_chance_cube matches 1 run scoreboard players add @s progress 1
execute if score @s used_chance_cube matches 1 run scoreboard players set @s used_chance_cube 1

scoreboard players reset @s used_chance_cube

se action @s playerbossbar storescore max quest_tracker quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
