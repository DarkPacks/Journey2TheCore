execute if score @s kill_spider_1 matches 1 run scoreboard players add @s progress 1
execute if score @s kill_spider_1 matches 1 run scoreboard players set @s kill_spider_1 1

execute if score @s kill_spider_2 matches 1 run scoreboard players add @s progress 1
execute if score @s kill_spider_2 matches 1 run scoreboard players set @s kill_spider_2 1

scoreboard players reset @s kill_spider_1
scoreboard players reset @s kill_spider_2

execute if score @s progress matches 5.. run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1