#Track clicking on and picking up glowberries 
execute if score @s collect_glowberries_1 matches 1.. run scoreboard players add @s track_glowberries_click 1
execute if score @s collect_glowberries_2 matches 1.. run scoreboard players add @s track_glowberries 1
execute if score @s track_glowberries matches 1.. run execute if score @s track_glowberries_click matches 1.. run function bossbar:bossbar/tracking_functions/glowberries_tracking


execute if score @s dropped_glowberries matches 1 run scoreboard players remove @s progress 1
scoreboard players reset @s dropped_glowberries


#Quest Completion
se action @s playerbossbar storescore max quest_tracker quest_quantity
execute if score @s progress = @s quest_quantity run function bossbar:bossbar/upgrade/1
execute if score @s timer matches 1 run function bossbar:bossbar/quest_fail/fail_1
