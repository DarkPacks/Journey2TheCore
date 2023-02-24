execute if score @s punched_passive matches 1 run scoreboard players add @s progress 1
execute if score @s punched_passive matches 1 run scoreboard players set @s punched_passive 1

scoreboard players reset @s punched_passive

se action @s playerbossbar storescore max quest_tracker quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
