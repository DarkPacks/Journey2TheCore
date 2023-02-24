execute if score @s activate_waystone1 matches 1 run scoreboard players add @s progress 1
execute if score @s activate_waystone1 matches 1 run scoreboard players set @s activate_waystone1 1

execute if score @s activate_waystone2 matches 1 run scoreboard players add @s progress 1
execute if score @s activate_waystone2 matches 1 run scoreboard players set @s activate_waystone2 1

execute if score @s activate_waystone3 matches 1 run scoreboard players add @s progress 1
execute if score @s activate_waystone3 matches 1 run scoreboard players set @s activate_waystone3 1

scoreboard players reset @s activate_waystone1
scoreboard players reset @s activate_waystone2
scoreboard players reset @s activate_waystone3

se action @s playerbossbar storescore max quest_tracker quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
