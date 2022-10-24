#scp-1689
#track poisonous potato eating in overworld
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_poisonous_potato matches 1 run cyclic scoreboard random @s 1 21 potato_dimension_teleport_chance
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @a[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_poisonous_potato
#track other potatoes in overworld
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_baked_potato matches 1 run cyclic scoreboard random @s 1 200 potato_dimension_teleport_chance
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @a[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_baked_potato

execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_stuffed_potato matches 1 run cyclic scoreboard random @s 1 200 potato_dimension_teleport_chance
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @a[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_stuffed_potato

execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_steak_and_potato matches 1 run cyclic scoreboard random @s 1 200 potato_dimension_teleport_chance
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @a[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_steak_and_potato



#Runs checks for filling dimension and teleporting back to the overworld
execute as @a run execute in j2tc_tweaks:scp_1689 run execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s potato_dimension matches 1 run function bossbar:bossbar/fill_potato_dimension




execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_potato matches 1 run cyclic scoreboard random @s 1 11 return_to_overworld_from_potato_dimension
execute as @a run scoreboard players reset @s eat_potato

execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_baked_potato matches 1 run cyclic scoreboard random @s 1 50 return_to_overworld_from_potato_dimension
execute as @a run scoreboard players reset @s eat_baked_potato

execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_stuffed_potato matches 1 run cyclic scoreboard random @s 1 50 return_to_overworld_from_potato_dimension
execute as @a run scoreboard players reset @s eat_stuffed_potato

execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_steak_and_potato matches 1 run cyclic scoreboard random @s 1 50 return_to_overworld_from_potato_dimension
execute as @a run scoreboard players reset @s eat_steak_and_potato


execute as @a run execute if score @s return_to_overworld_from_potato_dimension matches 1 run function bossbar:bossbar/return_to_overworld_from_potato_dimension



#Listen for Potato Dimension Clear
execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s potato_dimension_cleared matches 0 run function bossbar:bossbar/potato_dimension_clear_spawn
execute as @a[predicate=bossbar:standing_on_stone_block_in_scp1689] run execute if score @s potato_dimension_cleared matches 0 run scoreboard players set @s potato_dimension_cleared 1

#Trackers for current quest and saving new quests to que up
execute as @a run execute if score @s pending_quest matches ..0 run scoreboard players set @s pending_quest 0
execute as @a run execute if score @s pending_quest matches 0 run scoreboard players set @s quest_queue 0
execute as @a run execute if score @s pending_quest matches 1.. run scoreboard players set @s quest_queue 1
execute as @a run execute if score @s quest_queue matches 2.. run scoreboard players set @s quest_queue 1