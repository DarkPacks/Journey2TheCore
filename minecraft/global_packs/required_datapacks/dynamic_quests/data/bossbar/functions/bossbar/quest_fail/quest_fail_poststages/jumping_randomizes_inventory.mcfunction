title @s title ""
title @s subtitle {"text":"Your Inventory is Now Safe","color":"white"}

scoreboard players set @p inventory_randomize 0

#Reset Quest Timer
scoreboard players reset @p fail_timer
se action @s playerbossbar set fail_timer visible false
