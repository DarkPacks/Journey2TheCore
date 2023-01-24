execute if score @s kill_player_mob matches 1 run scoreboard players add @s progress 1
execute if score @s kill_player_mob matches 1 run scoreboard players set @s kill_player_mob 1

scoreboard players reset @s kill_player_mob

execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
