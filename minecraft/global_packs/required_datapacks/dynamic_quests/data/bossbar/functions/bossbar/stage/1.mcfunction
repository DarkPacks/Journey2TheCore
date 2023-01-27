execute if score @s mined_dirt matches 1 run scoreboard players add @s progress 1
execute if score @s mined_dirt matches 1 run scoreboard players set @s mined_dirt 1

execute if score @s placed_dirt matches 1 run scoreboard players remove @s progress 1
execute if score @s placed_dirt matches 1 run scoreboard players remove @s placed_dirt 1

scoreboard players reset @s mined_dirt
scoreboard players reset @s placed_dirt


#Quest Completion
se action @s playerbossbar storescore max quest_tracker quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
