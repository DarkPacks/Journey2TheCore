#Removes teleport timer if the player dies
execute if score @s teleport_timer matches 1.. run scoreboard players set @s teleport_timer 0
execute if score @s timer matches 0 run se action @s playerbossbar set teleport_timer visible false

#Gives player resistance after death
effect give @s minecraft:resistance 60 4 true
effect clear @s minecraft:resistance

effect give @s minecraft:resistance 60 3 true
effect clear @s minecraft:resistance

effect give @s minecraft:resistance 60 2 true
effect clear @s minecraft:resistance

effect give @s minecraft:resistance 60 1 true
