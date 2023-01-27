#Debug Text
#say Selecting a Random Quest
#bossbar set minecraft:bar players @s

#Check whether a quest is active or not
execute if score @s quest_active matches 1 run scoreboard players add @s pending_quest 1
execute if score @s pending_quest matches 1.. run scoreboard players set @s quest_queue 1

execute if score @s quest_active matches 0 run cyclic scoreboard random @s 1 24 quest_selector

execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 001.. run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1.0 0.5
##
#  NEEDS CHECK: Do other player's have this quest. If so, find another quest
## 

execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 001 run function bossbar:bossbar/pre_stage/1
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 002 run function bossbar:bossbar/pre_stage/2
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 003 run function bossbar:bossbar/pre_stage/3
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 004 run function bossbar:bossbar/pre_stage/4
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 005 run function bossbar:bossbar/pre_stage/5
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 006 run function bossbar:bossbar/pre_stage/6
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 007 run function bossbar:bossbar/pre_stage/7
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 008 run function bossbar:bossbar/pre_stage/8
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 009 run function bossbar:bossbar/pre_stage/9
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 010 run function bossbar:bossbar/pre_stage/10
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 011 run function bossbar:bossbar/pre_stage/11
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 012 run function bossbar:bossbar/pre_stage/12
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 013 run function bossbar:bossbar/pre_stage/13
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 014 run function bossbar:bossbar/pre_stage/14
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 015 run function bossbar:bossbar/pre_stage/15
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 016 run function bossbar:bossbar/pre_stage/16
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 017 run function bossbar:bossbar/pre_stage/17
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 018 run function bossbar:bossbar/pre_stage/18
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 019 run function bossbar:bossbar/pre_stage/19
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 020 run function bossbar:bossbar/pre_stage/20
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 021 run function bossbar:bossbar/pre_stage/21
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 022 run function bossbar:bossbar/pre_stage/22
execute if score @s quest_active matches 0 run execute if score @s quest_selector matches 023 run function bossbar:bossbar/pre_stage/23
