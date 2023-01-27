execute if score @s monster_egg_mined_1 matches 1 run scoreboard players add @s progress 1
execute if score @s monster_egg_mined_1 matches 1 run scoreboard players set @s monster_egg_mined_1 1

execute if score @s monster_egg_mined_2 matches 1 run scoreboard players add @s progress 1
execute if score @s monster_egg_mined_2 matches 1 run scoreboard players set @s monster_egg_mined_2 1

execute if score @s monster_egg_mined_3 matches 1 run scoreboard players add @s progress 1
execute if score @s monster_egg_mined_3 matches 1 run scoreboard players set @s monster_egg_mined_3 1

execute if score @s monster_egg_mined_4 matches 1 run scoreboard players add @s progress 1
execute if score @s monster_egg_mined_4 matches 1 run scoreboard players set @s monster_egg_mined_4 1

execute if score @s monster_egg_mined_5 matches 1 run scoreboard players add @s progress 1
execute if score @s monster_egg_mined_5 matches 1 run scoreboard players set @s monster_egg_mined_5 1

execute if score @s monster_egg_mined_6 matches 1 run scoreboard players add @s progress 1
execute if score @s monster_egg_mined_6 matches 1 run scoreboard players set @s monster_egg_mined_6 1

scoreboard players reset @s monster_egg_mined_1
scoreboard players reset @s monster_egg_mined_2
scoreboard players reset @s monster_egg_mined_3
scoreboard players reset @s monster_egg_mined_4
scoreboard players reset @s monster_egg_mined_5
scoreboard players reset @s monster_egg_mined_6


se action @s playerbossbar storescore max quest_tracker quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
