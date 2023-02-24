title @s title ""
title @s subtitle {"text":"Your body odor has subsided for now...","color":"white"}

scoreboard players set @p evasive_items 0
effect clear @s evasiveitems:stinky
#Reset Quest Timer
scoreboard players reset @p fail_timer
se action @s playerbossbar set fail_timer visible false
