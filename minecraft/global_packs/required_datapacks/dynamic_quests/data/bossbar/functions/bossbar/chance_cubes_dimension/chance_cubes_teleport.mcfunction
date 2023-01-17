execute as @s run execute if score @s chance_cubes_dimension_teleport_chance matches 1 run execute in j2tc_tweaks:chance_cubes run tp @s ~ 25 ~
scoreboard players set @s chance_cubes_dimension_teleport_chance 0
scoreboard players set @s chance_cubes_dimension 1
scoreboard players set @s chance_cubes_dimension_cleared 0
