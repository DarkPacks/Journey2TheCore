execute if score @s mined_coal_ore_1 matches 1 run scoreboard players add @s progress 1
execute if score @s mined_coal_ore_1 matches 1 run scoreboard players set @s mined_coal_ore_1 1

execute if score @s mined_coal_ore_2 matches 1 run scoreboard players add @s progress 1
execute if score @s mined_coal_ore_2 matches 1 run scoreboard players set @s mined_coal_ore_2 1

scoreboard players reset @s mined_coal_ore_1
scoreboard players reset @s mined_coal_ore_2

se action @s playerbossbar storescore max quest_tracker quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
