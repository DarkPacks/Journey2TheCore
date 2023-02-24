execute if score @s fire_bow1 matches 1 run scoreboard players add @s progress 1
execute if score @s fire_bow1 matches 1 run scoreboard players set @s fire_bow1 1

execute if score @s fire_bow2 matches 1 run scoreboard players add @s progress 1
execute if score @s fire_bow2 matches 1 run scoreboard players set @s fire_bow2 1

execute if score @s fire_bow3 matches 1 run scoreboard players add @s progress 1
execute if score @s fire_bow3 matches 1 run scoreboard players set @s fire_bow3 1

scoreboard players reset @s fire_bow1
scoreboard players reset @s fire_bow2
scoreboard players reset @s fire_bow3

se action @s playerbossbar storescore max quest_tracker quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
