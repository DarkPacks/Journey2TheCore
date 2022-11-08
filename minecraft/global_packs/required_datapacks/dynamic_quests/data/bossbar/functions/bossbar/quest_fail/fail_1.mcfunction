#Play Quest Fail Sound
execute at @s run playsound cyclic:explosm master @s ~ ~ ~ 1.0 1.3


#On Screen Text telling you that you are a failure
title @a title ""
title @a subtitle {"text":"Quest Failed","color":"red"}

#Set stage to 0
scoreboard players set @p stage 0
execute if score @s timer matches 1 run scoreboard players reset @p timer

#Remove Bossbar
schedule function bossbar:bossbar/clear_visibility 5s

#Reset quest_reward_number
scoreboard players reset @s quest_reward_number

#Outcome
cyclic scoreboard random @s 1 6 quest_reward_number
execute if score @s quest_reward_number matches 1 run function bossbar:bossbar/quest_fail/quest_failure_outcomes/lower_max_health
execute if score @s quest_reward_number matches 2 run function bossbar:bossbar/quest_fail/quest_failure_outcomes/lose_inventory_slot
execute if score @s quest_reward_number matches 3 run function bossbar:bossbar/quest_fail/quest_failure_outcomes/inventory_bomb
execute if score @s quest_reward_number matches 4 run function bossbar:bossbar/quest_fail/failure_prestages/jumping_randomizes_inventory
execute if score @s quest_reward_number matches 5 run function bossbar:bossbar/quest_fail/failure_prestages/damage_daily_dad

scoreboard players set @s quest_active 0
execute if score @s pending_quest matches 1.. run function bossbar:bossbar/random_quest_selector