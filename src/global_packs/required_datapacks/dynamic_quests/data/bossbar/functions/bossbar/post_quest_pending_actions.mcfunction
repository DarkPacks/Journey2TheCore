#Debug Text
#say Pending Action Clear

scoreboard players set @s quest_active 0
execute if score @s pending_quest matches 1.. run scoreboard players remove @s pending_quest 1

#execute if score @s pending_quest matches 1.. run function bossbar:bossbar/random_quest_selector
execute if score @s quest_queue matches 1 run function bossbar:bossbar/random_quest_selector

#Debug Text
#say Redirecting