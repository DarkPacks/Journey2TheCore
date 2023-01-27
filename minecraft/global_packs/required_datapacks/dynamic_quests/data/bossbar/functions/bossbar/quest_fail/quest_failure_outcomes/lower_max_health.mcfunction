#attribute @p minecraft:generic.max_health get

#execute store result entity DarkostoAFK Attributes[{Name: "generic.maxHealth"}].Base double 1 run scoreboard players set DarkostoAFK max_health

#Store Max Health to Scoreboard
execute store result score @s max_health run attribute @s generic.max_health base get


execute if score @s max_health matches 01 run function bossbar:bossbar/upgrade/quest_completion_reward_redirect
execute if score @s max_health matches 01 run tellraw @p [" ",{"text":"You're already at minimum health","color":"red"}]
execute if score @s max_health matches 02 run attribute @s minecraft:generic.max_health base set 01
execute if score @s max_health matches 03 run attribute @s minecraft:generic.max_health base set 02
execute if score @s max_health matches 04 run attribute @s minecraft:generic.max_health base set 03
execute if score @s max_health matches 05 run attribute @s minecraft:generic.max_health base set 04
execute if score @s max_health matches 06 run attribute @s minecraft:generic.max_health base set 05
execute if score @s max_health matches 07 run attribute @s minecraft:generic.max_health base set 06
execute if score @s max_health matches 08 run attribute @s minecraft:generic.max_health base set 07
execute if score @s max_health matches 09 run attribute @s minecraft:generic.max_health base set 08
execute if score @s max_health matches 10 run attribute @s minecraft:generic.max_health base set 09
execute if score @s max_health matches 11 run attribute @s minecraft:generic.max_health base set 10
execute if score @s max_health matches 12 run attribute @s minecraft:generic.max_health base set 11
execute if score @s max_health matches 13 run attribute @s minecraft:generic.max_health base set 12
execute if score @s max_health matches 14 run attribute @s minecraft:generic.max_health base set 13
execute if score @s max_health matches 15 run attribute @s minecraft:generic.max_health base set 14
execute if score @s max_health matches 16 run attribute @s minecraft:generic.max_health base set 15
execute if score @s max_health matches 17 run attribute @s minecraft:generic.max_health base set 16
execute if score @s max_health matches 18 run attribute @s minecraft:generic.max_health base set 17
execute if score @s max_health matches 19 run attribute @s minecraft:generic.max_health base set 18
execute if score @s max_health matches 20 run attribute @s minecraft:generic.max_health base set 19

#Announce Action
execute unless score @s max_health matches 01 run tellraw @p [" ",{"text":"Your max health is now lower","color":"red"}]
