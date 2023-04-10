title @s title {"text":"It Has Awoken","color":"dark_red"}
title @s subtitle {"text":"The Shadows grow. You Feel Uneasy...","color":"dark_red"}

playsound youarehere:sound.8 master @s ~ ~ ~ 1.0

tellraw @s [" ",{"text":"You've unlocked a Trinket Slot!","color":"red"}]
curios add trinkets @s 1
