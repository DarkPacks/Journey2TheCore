#Locks Inventory Slots Based on Player's current slots

#Store Max Health to Scoreboard
#execute store result score @s max_health run inventory_slots get @p
#execute as @e[tag=ForgeData:inventory_free/unlocked_slots] store result score @s inventory_slots
#inventory_free: {unlocked_slots: 1000, slot_cache: 36}}
#data get entity @p ForgeData.PlayerPersisted.inventory_free.slot_cache

execute store result score @s inventory_slots run data get entity @s ForgeData.PlayerPersisted.inventory_free.unlocked_slots
#execute store result score @s inventory_slots run data get entity @s ForgeData.PlayerPersisted.inventory_free.slot_cache

execute if score @s inventory_slots matches -17 run function bossbar:bossbar/upgrade/quest_completion_reward_redirect
execute if score @s inventory_slots matches -17 run tellraw @p [" ",{"text":"You're already at the minimum inventory slots!","color":"red"}]
execute if score @s inventory_slots matches -16 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -15 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -14 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -13 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -12 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -11 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -10 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -09 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -08 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -07 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -06 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -05 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -04 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -03 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -02 run inventory_slots lock @s 1
execute if score @s inventory_slots matches -01 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 0 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 1 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 2 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 3 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 4 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 5 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 6 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 7 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 8 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 9 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 10 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 11 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 12 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 13 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 14 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 15 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 16 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 17 run inventory_slots lock @s 1
execute if score @s inventory_slots matches 18 run inventory_slots lock @s 1


#Announce Action
execute unless score @s inventory_slots matches -17 run tellraw @p [" ",{"text":"You have lost an inventory slot!","color":"red"}]