#execute if score @s jump matches 1 run scoreboard players add @s progress 1
execute if score @s jump matches 1.. run swapthings shuffleinventory @p


scoreboard players reset @s jump

#execute store result bossbar minecraft:bar max run scoreboard players get @s quest_quantity
#execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/2
execute if score @s fail_timer matches 1 run function bossbar:bossbar/quest_fail/quest_fail_poststages/jumping_randomizes_inventory
