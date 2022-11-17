#Unique#
execute as @s[tag=!uniqued] run function bossbar:bossbar/unique

#Clear when not on any stages
execute if score @s pending_quest matches 0 run execute if score @s quest_queue matches 0 run execute if score @s stage matches 0 run function bossbar:bossbar/clear_visibility

#Stage#
execute if score @s stage matches 01.. run function bossbar:bossbar/stage_selection

execute store result bossbar bar value run scoreboard players get @s progress

#Quest Completion Events
#failures
execute if score @s inventory_randomize matches 1 run function bossbar:bossbar/quest_fail/quest_failure_outcomes/jumping_randomizes_inventory
execute if score @s damage_dad_joke matches 1 run function bossbar:bossbar/quest_fail/quest_failure_outcomes/damage_daily_dad

#completions
execute if score @s effect_resistance matches 1 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/effect_resistance


#function bossbar:bossbar/tracking_functions/spy_glass_tracking

#Block breaking events
execute if score @s mine_ghast matches 1.. run execute as @s[predicate=!bossbar:silk_touch_mainhand] run summon minecraft:ghast
execute if score @s mine_ghast matches 1.. run execute as @s[predicate=!bossbar:silky_modifier_mainhand] run summon minecraft:ghast
scoreboard players reset @s mine_ghast
