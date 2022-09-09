#Unique#
execute as @s[tag=!uniqued] run function bossbar:bossbar/unique

#Clear when not on any stages
execute if score @s pending_quest matches 0 run execute if score @s quest_queue matches 0 run execute if score @s stage matches 0 run function bossbar:bossbar/clear_visibility

#Stage#
execute if score @s stage matches 01 run function bossbar:bossbar/stage/1
execute if score @s stage matches 02 run function bossbar:bossbar/stage/2
execute if score @s stage matches 03 run function bossbar:bossbar/stage/3
execute if score @s stage matches 04 run function bossbar:bossbar/stage/4
execute if score @s stage matches 05 run function bossbar:bossbar/stage/5
execute if score @s stage matches 06 run function bossbar:bossbar/stage/6
execute if score @s stage matches 07 run function bossbar:bossbar/stage/7
execute if score @s stage matches 08 run function bossbar:bossbar/stage/8
execute if score @s stage matches 09 run function bossbar:bossbar/stage/9
execute if score @s stage matches 10 run function bossbar:bossbar/stage/10
execute if score @s stage matches 11 run function bossbar:bossbar/stage/11
execute if score @s stage matches 12 run function bossbar:bossbar/stage/12
execute if score @s stage matches 13 run function bossbar:bossbar/stage/13
execute if score @s stage matches 14 run function bossbar:bossbar/stage/14
execute if score @s stage matches 15 run function bossbar:bossbar/stage/15
execute if score @s stage matches 16 run function bossbar:bossbar/stage/16
execute if score @s stage matches 17 run function bossbar:bossbar/stage/17
execute if score @s stage matches 18 run function bossbar:bossbar/stage/18
execute if score @s stage matches 19 run function bossbar:bossbar/stage/19
execute if score @s stage matches 20 run function bossbar:bossbar/stage/20
execute if score @s stage matches 21 run function bossbar:bossbar/stage/21
execute if score @s stage matches 22 run function bossbar:bossbar/stage/22
execute if score @s stage matches 23 run function bossbar:bossbar/stage/23
execute if score @s stage matches 24 run function bossbar:bossbar/stage/24
execute if score @s stage matches 25 run function bossbar:bossbar/stage/25
execute if score @s stage matches 26 run function bossbar:bossbar/stage/26
execute if score @s stage matches 27 run function bossbar:bossbar/stage/27
execute if score @s stage matches 28 run function bossbar:bossbar/stage/28
execute if score @s stage matches 29 run function bossbar:bossbar/stage/29
execute if score @s stage matches 30 run function bossbar:bossbar/stage/30
execute if score @s stage matches 31 run function bossbar:bossbar/stage/31
execute if score @s stage matches 32 run function bossbar:bossbar/stage/32
execute if score @s stage matches 33 run function bossbar:bossbar/stage/33
execute if score @s stage matches 34 run function bossbar:bossbar/stage/34
execute if score @s stage matches 35 run function bossbar:bossbar/stage/35
execute if score @s stage matches 36 run function bossbar:bossbar/stage/36



execute store result bossbar bar value run scoreboard players get @s progress

#Quest Completion Events
#failures
execute if score @s inventory_randomize matches 1 run function bossbar:bossbar/quest_fail/quest_failure_outcomes/jumping_randomizes_inventory
execute if score @s damage_dad_joke matches 1 run function bossbar:bossbar/quest_fail/quest_failure_outcomes/damage_daily_dad

#completions
execute if score @s effect_resistance matches 1 run function bossbar:bossbar/quest_complete/quest_complete_outcomes/effect_resistance


function bossbar:bossbar/tracking_functions/spy_glass_tracking

#Block breaking events
execute if score @s mine_ghast matches 1.. run execute as @s[predicate=!bossbar:silk_touch_mainhand] run summon minecraft:ghast
execute if score @s mine_ghast matches 1.. run execute as @s[predicate=!bossbar:silky_modifier_mainhand] run summon minecraft:ghast
scoreboard players reset @s mine_ghast