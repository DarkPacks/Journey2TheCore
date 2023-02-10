#Removes teleport timer if the player dies
execute if score @s teleport_timer matches 1.. run scoreboard players set @s teleport_timer 0
execute if score @s timer matches 0 run se action @s playerbossbar set teleport_timer visible false

#Gives player resistance after death
effect give @s minecraft:resistance 30 2 true

