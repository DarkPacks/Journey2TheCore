#Player
execute as @s run function bossbar:bossbar/player
#Quest Timer
function sbt:rng
execute if score @s timer matches 1.. run scoreboard players remove @s timer 1
execute if score @s timer matches 1.. store result bossbar minecraft:test2 value run scoreboard players get @s timer
execute if score @s timer matches 0 run bossbar set minecraft:test2 visible false
#Failure Timer
function sbt:quest_fail_timer/rng
execute if score @s fail_timer matches 1.. run scoreboard players remove @s fail_timer 1
execute if score @s fail_timer matches 1.. store result bossbar minecraft:fail_timer value run scoreboard players get @s fail_timer
execute if score @s fail_timer matches 0 run bossbar set minecraft:fail_timer visible false
#Completion Timer
function sbt:quest_completion_timer/rng
execute if score @s completion_timer matches 1.. run scoreboard players remove @s completion_timer 1
execute if score @s completion_timer matches 1.. store result bossbar minecraft:completion_timer value run scoreboard players get @s completion_timer
execute if score @s completion_timer matches 0 run bossbar set minecraft:completion_timer visible false

#Teleport Timer
function sbt:quest_completion_timer/rng
execute if score @s teleport_timer matches 1.. run scoreboard players remove @s teleport_timer 1
execute if score @s teleport_timer matches 1.. store result bossbar minecraft:teleport_timer value run scoreboard players get @s teleport_timer
execute if score @s teleport_timer matches 0 run bossbar set minecraft:teleport_timer visible false

#scp-1689
#track poisonous potato eating in overworld
execute as @s[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_poisonous_potato matches 1 run cyclic scoreboard random @s 1 21 potato_dimension_teleport_chance
execute as @s[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @s[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_poisonous_potato
#track other potatoes in overworld
execute as @s[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_baked_potato matches 1 run cyclic scoreboard random @s 1 350 potato_dimension_teleport_chance
execute as @s[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @s[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_baked_potato

execute as @s[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_stuffed_potato matches 1 run cyclic scoreboard random @s 1 250 potato_dimension_teleport_chance
execute as @s[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @s[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_stuffed_potato

execute as @s[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_steak_and_potato matches 1 run cyclic scoreboard random @s 1 250 potato_dimension_teleport_chance
execute as @s[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @s[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_steak_and_potato


#Runs checks for filling dimension and teleporting back to the overworld
execute as @s run execute in j2tc_tweaks:scp_1689 run execute as @s[predicate=bossbar:player_in_potato_dimension] run execute if score @s potato_dimension matches 1 run function bossbar:bossbar/fill_potato_dimension


execute as @s[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_potato matches 1 run cyclic scoreboard random @s 1 11 return_to_overworld_from_potato_dimension
execute as @s run scoreboard players reset @s eat_potato

execute as @s[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_baked_potato matches 1 run cyclic scoreboard random @s 1 50 return_to_overworld_from_potato_dimension
execute as @s run scoreboard players reset @s eat_baked_potato

execute as @s[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_stuffed_potato matches 1 run cyclic scoreboard random @s 1 50 return_to_overworld_from_potato_dimension
execute as @s run scoreboard players reset @s eat_stuffed_potato

execute as @s[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_steak_and_potato matches 1 run cyclic scoreboard random @s 1 50 return_to_overworld_from_potato_dimension
execute as @s run scoreboard players reset @s eat_steak_and_potato


execute as @s run execute if score @s return_to_overworld_from_potato_dimension matches 1 run function bossbar:bossbar/return_to_overworld_from_potato_dimension

#Listen for Potato Dimension Clear
execute as @s[predicate=bossbar:player_in_potato_dimension] run execute if score @s potato_dimension_cleared matches 0 run function bossbar:bossbar/potato_dimension_clear_spawn
execute as @s[predicate=bossbar:standing_on_stone_block_in_scp1689] run execute if score @s potato_dimension_cleared matches 0 run scoreboard players set @s potato_dimension_cleared 1

#Runs checks for filling dimension and teleporting back to the overworld
execute as @s run execute in j2tc_tweaks:chance_cubes run execute as @s[predicate=bossbar:player_in_chance_cubes_dimension] run execute if score @s chance_cubes_dimension matches 1 run function bossbar:bossbar/chance_cubes_dimension/chance_cubes_dimension_fill

execute as @s run execute if score @s return_to_overworld_from_chance_cubes_dimension matches 1 run function bossbar:bossbar/chance_cubes_dimension/overworld_from_chance_cubes_dimension

#Listen for Chance Cubes Dimension Clear
execute as @s[predicate=bossbar:player_in_chance_cubes_dimension] run execute if score @s chance_cubes_dimension_cleared matches 0 run function bossbar:bossbar/chance_cubes_dimension/chance_cubes_clear_spawn
execute as @s[predicate=bossbar:standing_on_shroomlight_block_in_chance_cubes_dimension] run execute if score @s chance_cubes_dimension_cleared matches 0 run scoreboard players set @s chance_cubes_dimension_cleared 1

#Trackers for current quest and saving new quests to que up
execute as @s run execute if score @s pending_quest matches ..0 run scoreboard players set @s pending_quest 0
execute as @s run execute if score @s pending_quest matches 0 run scoreboard players set @s quest_queue 0
execute as @s run execute if score @s pending_quest matches 1.. run scoreboard players set @s quest_queue 1
execute as @s run execute if score @s quest_queue matches 2.. run scoreboard players set @s quest_queue 1

#Teleport Timer Listener
execute if score @s teleport_timer matches 2 run scoreext action @s dimteleportspawn


