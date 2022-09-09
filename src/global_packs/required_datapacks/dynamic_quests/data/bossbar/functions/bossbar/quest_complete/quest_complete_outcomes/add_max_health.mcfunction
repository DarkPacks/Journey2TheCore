execute store result score @s max_health run attribute @s generic.max_health base get

execute if score @s max_health matches 01 run attribute @s minecraft:generic.max_health base set 02
execute if score @s max_health matches 02 run attribute @s minecraft:generic.max_health base set 03
execute if score @s max_health matches 03 run attribute @s minecraft:generic.max_health base set 04
execute if score @s max_health matches 04 run attribute @s minecraft:generic.max_health base set 05
execute if score @s max_health matches 05 run attribute @s minecraft:generic.max_health base set 06
execute if score @s max_health matches 06 run attribute @s minecraft:generic.max_health base set 07
execute if score @s max_health matches 07 run attribute @s minecraft:generic.max_health base set 08
execute if score @s max_health matches 08 run attribute @s minecraft:generic.max_health base set 09
execute if score @s max_health matches 09 run attribute @s minecraft:generic.max_health base set 10
execute if score @s max_health matches 10 run attribute @s minecraft:generic.max_health base set 11
execute if score @s max_health matches 11 run attribute @s minecraft:generic.max_health base set 12
execute if score @s max_health matches 12 run attribute @s minecraft:generic.max_health base set 13
execute if score @s max_health matches 13 run attribute @s minecraft:generic.max_health base set 14
execute if score @s max_health matches 14 run attribute @s minecraft:generic.max_health base set 15
execute if score @s max_health matches 15 run attribute @s minecraft:generic.max_health base set 16
execute if score @s max_health matches 16 run attribute @s minecraft:generic.max_health base set 17
execute if score @s max_health matches 17 run attribute @s minecraft:generic.max_health base set 18
execute if score @s max_health matches 18 run attribute @s minecraft:generic.max_health base set 19
execute if score @s max_health matches 19 run attribute @s minecraft:generic.max_health base set 20
execute if score @s max_health matches 20 run attribute @s minecraft:generic.max_health base set 21
execute if score @s max_health matches 21 run attribute @s minecraft:generic.max_health base set 22
execute if score @s max_health matches 22 run attribute @s minecraft:generic.max_health base set 23
execute if score @s max_health matches 23 run attribute @s minecraft:generic.max_health base set 24
execute if score @s max_health matches 24 run attribute @s minecraft:generic.max_health base set 25
execute if score @s max_health matches 25 run attribute @s minecraft:generic.max_health base set 26
execute if score @s max_health matches 26 run attribute @s minecraft:generic.max_health base set 27
execute if score @s max_health matches 27 run attribute @s minecraft:generic.max_health base set 28
execute if score @s max_health matches 28 run attribute @s minecraft:generic.max_health base set 29
execute if score @s max_health matches 29 run attribute @s minecraft:generic.max_health base set 30
execute if score @s max_health matches 30 run attribute @s minecraft:generic.max_health base set 31
execute if score @s max_health matches 31 run attribute @s minecraft:generic.max_health base set 32
execute if score @s max_health matches 32 run attribute @s minecraft:generic.max_health base set 33
execute if score @s max_health matches 33 run attribute @s minecraft:generic.max_health base set 34
execute if score @s max_health matches 34 run attribute @s minecraft:generic.max_health base set 35
execute if score @s max_health matches 35 run attribute @s minecraft:generic.max_health base set 36
execute if score @s max_health matches 36 run attribute @s minecraft:generic.max_health base set 37
execute if score @s max_health matches 37 run attribute @s minecraft:generic.max_health base set 38
execute if score @s max_health matches 38 run attribute @s minecraft:generic.max_health base set 39
execute if score @s max_health matches 39 run attribute @s minecraft:generic.max_health base set 40
execute if score @s max_health matches 40.. run tellraw @s [" ",{"text":"You're already at maximum health","color":"red"}]
execute if score @s max_health matches 40.. run function bossbar:bossbar/upgrade/quest_completion_reward_redirect


#Announce Action
execute unless score @s max_health matches 40 run tellraw @s [" ",{"text":"Your max health is now higher","color":"red"}]