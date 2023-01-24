execute if score @s evasive_items matches 1.. run effect give @s evasiveitems:stinky 1 1 true

execute if score @s fail_timer matches 1 run function bossbar:bossbar/quest_fail/quest_fail_poststages/evasive_items
