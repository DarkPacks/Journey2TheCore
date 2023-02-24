#Outcome
cyclic scoreboard random @s 1 6 quest_reward_number
execute if score @s quest_reward_number matches 1 run give @s treasurebags:treasure_bag{silentlib.LootContainer:{BagType:"j2tc_tweaks:bagception"}}
execute if score @s quest_reward_number matches 2 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/add_max_health
execute if score @s quest_reward_number matches 3 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/add_inventory_slot
execute if score @s quest_reward_number matches 4 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/tinkers_modifier
execute if score @s quest_reward_number matches 5 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/completion_prestages/effect_resistance
