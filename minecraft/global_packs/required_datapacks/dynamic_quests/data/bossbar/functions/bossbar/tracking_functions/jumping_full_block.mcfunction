tag @s add air
execute as @s store result score @s dig_down run data get entity @s Pos[1] 1


scoreboard players operation @s dig_down += @s number_1