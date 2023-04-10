function j2tc_tweaks:stages/quest_5

tellraw @s [" ",{"text":"You've unlocked a Trinket Slot!","color":"red"}]
curios add trinkets @s 1
