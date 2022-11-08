bossbar set bar visible false
bossbar set minecraft:test2 visible false
execute if score @s progress matches 1.. run scoreboard players reset @s progress

#set timer min/max
scoreboard players set @a min_time 9600
scoreboard players set @a max_time 14400

execute as @a run function bossbar:bossbar/post_quest_pending_actions