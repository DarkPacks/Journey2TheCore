execute if score @s punched_animal_1 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_1 matches 1 run scoreboard players set @s punched_animal_1 1

execute if score @s punched_animal_2 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_2 matches 1 run scoreboard players set @s punched_animal_2 1

execute if score @s punched_animal_3 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_3 matches 1 run scoreboard players set @s punched_animal_3 1

execute if score @s punched_animal_5 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_5 matches 1 run scoreboard players set @s punched_animal_5 1

execute if score @s punched_animal_6 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_6 matches 1 run scoreboard players set @s punched_animal_6 1

execute if score @s punched_animal_7 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_7 matches 1 run scoreboard players set @s punched_animal_7 1

execute if score @s punched_animal_8 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_8 matches 1 run scoreboard players set @s punched_animal_8 1

execute if score @s punched_animal_9 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_9 matches 1 run scoreboard players set @s punched_animal_9 1

execute if score @s punched_animal_10 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_10 matches 1 run scoreboard players set @s punched_animal_10 1

execute if score @s punched_animal_11 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_11 matches 1 run scoreboard players set @s punched_animal_11 1

execute if score @s punched_animal_12 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_12 matches 1 run scoreboard players set @s punched_animal_12 1

execute if score @s punched_animal_13 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_13 matches 1 run scoreboard players set @s punched_animal_13 1

execute if score @s punched_animal_14 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_14 matches 1 run scoreboard players set @s punched_animal_14 1

execute if score @s punched_animal_15 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_15 matches 1 run scoreboard players set @s punched_animal_15 1

execute if score @s punched_animal_16 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_16 matches 1 run scoreboard players set @s punched_animal_16 1

execute if score @s punched_animal_17 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_17 matches 1 run scoreboard players set @s punched_animal_17 1

execute if score @s punched_animal_18 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_18 matches 1 run scoreboard players set @s punched_animal_18 1

execute if score @s punched_animal_19 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_19 matches 1 run scoreboard players set @s punched_animal_19 1

execute if score @s punched_animal_20 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_20 matches 1 run scoreboard players set @s punched_animal_20 1

execute if score @s punched_animal_21 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_21 matches 1 run scoreboard players set @s punched_animal_21 1

execute if score @s punched_animal_22 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_22 matches 1 run scoreboard players set @s punched_animal_22 1

execute if score @s punched_animal_23 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_23 matches 1 run scoreboard players set @s punched_animal_23 1

execute if score @s punched_animal_24 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_24 matches 1 run scoreboard players set @s punched_animal_24 1

execute if score @s punched_animal_25 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_25 matches 1 run scoreboard players set @s punched_animal_25 1

execute if score @s punched_animal_26 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_26 matches 1 run scoreboard players set @s punched_animal_26 1

execute if score @s punched_animal_27 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_27 matches 1 run scoreboard players set @s punched_animal_27 1

execute if score @s punched_animal_28 matches 1 run scoreboard players add @s progress 1
execute if score @s punched_animal_28 matches 1 run scoreboard players set @s punched_animal_28 1

scoreboard players reset @s punched_animal_1
scoreboard players reset @s punched_animal_2
scoreboard players reset @s punched_animal_3
scoreboard players reset @s punched_animal_5
scoreboard players reset @s punched_animal_6
scoreboard players reset @s punched_animal_7
scoreboard players reset @s punched_animal_8
scoreboard players reset @s punched_animal_9
scoreboard players reset @s punched_animal_10
scoreboard players reset @s punched_animal_11
scoreboard players reset @s punched_animal_12
scoreboard players reset @s punched_animal_13
scoreboard players reset @s punched_animal_14
scoreboard players reset @s punched_animal_15
scoreboard players reset @s punched_animal_16
scoreboard players reset @s punched_animal_17
scoreboard players reset @s punched_animal_18
scoreboard players reset @s punched_animal_19
scoreboard players reset @s punched_animal_20
scoreboard players reset @s punched_animal_21
scoreboard players reset @s punched_animal_22
scoreboard players reset @s punched_animal_23
scoreboard players reset @s punched_animal_24
scoreboard players reset @s punched_animal_25
scoreboard players reset @s punched_animal_26
scoreboard players reset @s punched_animal_27
scoreboard players reset @s punched_animal_28
execute store result bossbar minecraft:bar max run scoreboard players get @s quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1


