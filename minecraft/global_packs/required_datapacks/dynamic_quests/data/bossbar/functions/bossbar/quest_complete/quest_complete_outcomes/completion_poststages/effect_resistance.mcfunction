title @s title ""
title @s subtitle {"text":"You feel a bit weaker","color":"white"}

scoreboard players set @s effect_resistance 0

#Reset Quest Timer
scoreboard players reset @s completion_timer
se action @s playerbossbar set completion_timer visible false
