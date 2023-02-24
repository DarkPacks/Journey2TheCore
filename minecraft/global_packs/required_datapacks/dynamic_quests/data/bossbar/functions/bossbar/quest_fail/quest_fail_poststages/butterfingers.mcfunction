title @s title ""
title @s subtitle {"text":"The butter has melted away...","color":"white"}

scoreboard players set @p butterfingers 0
effect clear @s cyclic:butter
#Reset Quest Timer
scoreboard players reset @p fail_timer
se action @s playerbossbar set fail_timer visible false
