execute if score @s fire_crossbow1 matches 1 run scoreboard players add @s progress 1
execute if score @s fire_crossbow1 matches 1 run scoreboard players set @s fire_crossbow1 1

execute if score @s fire_crossbow2 matches 1 run scoreboard players add @s progress 1
execute if score @s fire_crossbow2 matches 1 run scoreboard players set @s fire_crossbow2 1

scoreboard players reset @s fire_crossbow1
scoreboard players reset @s fire_crossbow2

se action @s playerbossbar storescore max quest_tracker quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
