se action @s playerbossbar set quest_timer visible false
se action @s playerbossbar set quest_tracker visible false

execute if score @s progress matches 1.. run scoreboard players reset @s progress

#set timer min/max
scoreboard players set @s min_time 9600
scoreboard players set @s max_time 14400

execute as @s run function bossbar:bossbar/post_quest_pending_actions
