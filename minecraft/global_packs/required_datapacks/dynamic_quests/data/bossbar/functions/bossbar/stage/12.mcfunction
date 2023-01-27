execute if score @s mined_stone matches 1 run scoreboard players add @s progress 1
execute if score @s mined_stone matches 1 run scoreboard players set @s mined_stone 1

execute if score @s mined_stone_placed_1 matches 1 run scoreboard players remove @s progress 1
execute if score @s mined_stone_placed_1 matches 1 run scoreboard players remove @s mined_stone_placed_1 1
execute if score @s mined_stone_placed_2 matches 1 run scoreboard players remove @s progress 1
execute if score @s mined_stone_placed_2 matches 1 run scoreboard players remove @s mined_stone_placed_2 1
execute if score @s mined_stone_placed_3 matches 1 run scoreboard players remove @s progress 1
execute if score @s mined_stone_placed_3 matches 1 run scoreboard players remove @s mined_stone_placed_3 1
execute if score @s mined_stone_placed_4 matches 1 run scoreboard players remove @s progress 1
execute if score @s mined_stone_placed_4 matches 1 run scoreboard players remove @s mined_stone_placed_4 1
execute if score @s mined_stone_placed_5 matches 1 run scoreboard players remove @s progress 1
execute if score @s mined_stone_placed_5 matches 1 run scoreboard players remove @s mined_stone_placed_5 1
execute if score @s mined_stone_placed_6 matches 1 run scoreboard players remove @s progress 1
execute if score @s mined_stone_placed_6 matches 1 run scoreboard players remove @s mined_stone_placed_6 1


scoreboard players reset @s mined_stone
scoreboard players reset @s mined_stone_placed_1
scoreboard players reset @s mined_stone_placed_2
scoreboard players reset @s mined_stone_placed_3
scoreboard players reset @s mined_stone_placed_4
scoreboard players reset @s mined_stone_placed_5
scoreboard players reset @s mined_stone_placed_6


se action @s playerbossbar storescore max quest_tracker quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/2
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1


