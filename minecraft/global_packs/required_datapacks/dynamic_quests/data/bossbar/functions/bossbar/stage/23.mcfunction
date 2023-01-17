

execute as @s[nbt={OnGround:0b}, tag=!air] run function bossbar:bossbar/tracking_functions/jumping_full_block
execute as @s[nbt={OnGround:0b}, tag=air] run execute as @s store result score @s player_y_level run data get entity @s Pos[1] 1

#execute as @s[predicate=bossbar:standing_on_ground] run 


execute if score @s player_y_level = @s dig_down run scoreboard players set @s full_block_jump 1


execute if entity @s[nbt={OnGround:1b}] run tag @s remove air
execute if entity @s[nbt={OnGround:1b}] run scoreboard players reset @s dig_down
execute if entity @s[nbt={OnGround:1b}] run execute if score @s full_block_jump matches 1 run scoreboard players add @s progress 1
execute if entity @s[nbt={OnGround:1b}] run scoreboard players reset @s full_block_jump


#Quest Completion
execute store result bossbar minecraft:bar max run scoreboard players get @s quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
