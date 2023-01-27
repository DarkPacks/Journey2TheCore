execute at @s run playsound hardcorequesting:complete master @s ~ ~ ~ 1.0 1.3

scoreboard players set @s quest_timer 5
scoreboard players set @s quest_timer 0
function bossbar:bossbar/clear_visibility

#Reset quest_reward_number
scoreboard players reset @s quest_reward_number

#Outcome
cyclic scoreboard random @s 1 8 quest_reward_number
execute if score @s quest_reward_number matches 1 run give @s treasurebags:treasure_bag{silentlib.LootContainer:{BagType:"j2tc_tweaks:bagception"}}
execute if score @s quest_reward_number matches 2 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/add_max_health
execute if score @s quest_reward_number matches 3 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/add_inventory_slot
execute if score @s quest_reward_number matches 4 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/tinkers_modifier
execute if score @s quest_reward_number matches 5 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/completion_prestages/effect_resistance
execute if score @s quest_reward_number matches 6 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/add_extra_life
execute if score @s quest_reward_number matches 7 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/add_artifact_bag
