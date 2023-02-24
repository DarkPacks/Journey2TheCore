execute if score @s effect_resistance matches 1.. run effect give @s resistance 1 1 true

execute if score @s completion_timer matches 1 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/completion_poststages/effect_resistance
