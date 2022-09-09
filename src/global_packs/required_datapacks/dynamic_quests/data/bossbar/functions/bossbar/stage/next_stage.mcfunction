scoreboard players set @s progress 0
#scoreboard players add @s stage 1
execute at @s run playsound hardcorequesting:complete master @s ~ ~ ~ 1.0 1.3

#Task#
execute if score @s stage matches 2..18 run tellraw @s {"text":"\nTask completed!","color":"green"}
execute if score @s stage matches 02 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 03 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 04 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 05 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 06 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 07 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 08 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 09 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 10 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 11 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 12 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 13 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 14 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 15 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 16 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 17 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]
execute if score @s stage matches 18 run tellraw @s [" ",{"text":"Insert Text Here", "color":"gray"}]


tellraw @s ""
execute if score @s stage matches ..18 run tellraw @s {"text":"Next Task;","color":"green"}
execute if score @s stage matches 01 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 02 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 03 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 04 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 05 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 06 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 07 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 08 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 09 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 10 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 11 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 12 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 13 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 14 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 15 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 16 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 17 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]
execute if score @s stage matches 18 run tellraw @s [" ",{"text":"INSERT TEXT HERE","color":"dark_purple"},"\n"]

function bossbar:bossbar/stage/upgrade