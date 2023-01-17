execute as @s run execute if score @s potato_dimension_teleport_chance matches 1 run execute in j2tc_tweaks:scp_1689 run tp @s ~ 25 ~
scoreboard players set @s potato_dimension_teleport_chance 0
scoreboard players reset @s eat_potato
scoreboard players set @s potato_dimension 1
scoreboard players set @s potato_dimension_cleared 0
