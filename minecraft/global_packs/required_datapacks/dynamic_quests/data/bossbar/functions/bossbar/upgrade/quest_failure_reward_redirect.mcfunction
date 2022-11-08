#Outcome
cyclic scoreboard random @s 1 6 quest_reward_number
execute if score @s quest_reward_number matches 1 run function bossbar:bossbar/quest_fail/quest_failure_outcomes/lower_max_health
execute if score @s quest_reward_number matches 2 run function bossbar:bossbar/quest_fail/quest_failure_outcomes/lose_inventory_slot
execute if score @s quest_reward_number matches 3 run function bossbar:bossbar/quest_fail/quest_failure_outcomes/inventory_bomb
execute if score @s quest_reward_number matches 4 run function bossbar:bossbar/quest_fail/failure_prestages/jumping_randomizes_inventory
execute if score @s quest_reward_number matches 5 run function bossbar:bossbar/quest_fail/failure_prestages/damage_daily_dad