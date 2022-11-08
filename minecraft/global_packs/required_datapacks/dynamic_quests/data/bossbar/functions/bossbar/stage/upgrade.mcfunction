#Hide Bossbar
#execute if score @s stage matches 10.. run bossbar set bar visible false

#Reset
#execute run bossbar set bar value 0

#Colour
#execute if score @s stage matches 1.. run bossbar set bar color blue

#Name
#execute if score @s stage matches 01 run bossbar set bar name {"text":"Play Training Montage Disc","color":"dark_purple"}
#execute if score @s stage matches 02 run bossbar set bar name {"text":"Punch 15 Trees","color":"dark_purple"}
#execute if score @s stage matches 03 run bossbar set bar name {"text":"Defeat 5 Animals","color":"gray"}
#execute if score @s stage matches 04 run bossbar set bar name {"text":"Jump Up and Down","color":"aqua"}
#execute if score @s stage matches 05 run bossbar set bar name {"text":"Run!","color":"yellow"}
#execute if score @s stage matches 06 run bossbar set bar name {"text":"Deal Damage!","color":"gold"}
#execute if score @s stage matches 07 run bossbar set bar name {"text":"Swim!","color":"blue"}
#execute if score @s stage matches 08 run bossbar set bar name {"text":"Eat Food","color":"gray"}
#execute if score @s stage matches 09 run bossbar set bar name {"text":"Climb Ladders","color":"dark_blue"}
#execute if score @s stage matches 10 run bossbar set bar name {"text":"Defeat 10 Iron Golems","color":"dark_red"}
#execute if score @s stage matches 11 run bossbar set bar name {"text":"Break 5 Monster Eggs","color":"dark_red"}
#execute if score @s stage matches 12 run bossbar set bar name {"text":"Mine Stone Blocks","color":"dark_red"}
#execute if score @s stage matches 13 run bossbar set bar name {"text":"Kill 5 Player Mobs","color":"dark_red"}
#execute if score @s stage matches 14 run bossbar set bar name {"text":"Kill 5 Zombies","color":"dark_red"}
#execute if score @s stage matches 15 run bossbar set bar name {"text":"Kill 5 Skeletons","color":"dark_red"}
#execute if score @s stage matches 16 run bossbar set bar name {"text":"Kill 5 Spiders","color":"dark_red"}
#execute if score @s stage matches 17 run bossbar set bar name {"text":"Dig Down 150 Blocks","color":"dark_red"}

#Max
#execute if score @s stage matches 01 run bossbar set bar max 2
#execute if score @s stage matches 02 run bossbar set bar max 15
#execute if score @s stage matches 03 run bossbar set bar max 5
#execute if score @s stage matches 04 run bossbar set bar max 25
#execute if score @s stage matches 05 run bossbar set bar max 200
#execute if score @s stage matches 06 run bossbar set bar max 500
#execute if score @s stage matches 07 run bossbar set bar max 300
#execute if score @s stage matches 08 run bossbar set bar max 5
#execute if score @s stage matches 09 run bossbar set bar max 100
#execute if score @s stage matches 10 run bossbar set bar max 10
#execute if score @s stage matches 11 run bossbar set bar max 5
#execute if score @s stage matches 12 run bossbar set bar max 15
#execute if score @s stage matches 13 run bossbar set bar max 5
#execute if score @s stage matches 14 run bossbar set bar max 5
#execute if score @s stage matches 15 run bossbar set bar max 5
#execute if score @s stage matches 16 run bossbar set bar max 5
#execute if score @s stage matches 17 run bossbar set bar max 150


#Upgrades
#execute if score @s stage matches 02 run function bossbar:bossbar/upgrade/1
#execute if score @s stage matches 03 run function bossbar:bossbar/upgrade/2
#execute if score @s stage matches 04 run function bossbar:bossbar/upgrade/3
#execute if score @s stage matches 05 run function bossbar:bossbar/upgrade/4
#execute if score @s stage matches 06 run function bossbar:bossbar/upgrade/5
#execute if score @s stage matches 07 run function bossbar:bossbar/upgrade/6
#execute if score @s stage matches 08 run function bossbar:bossbar/upgrade/7
#execute if score @s stage matches 09 run function bossbar:bossbar/upgrade/8
#execute if score @s stage matches 10 run function bossbar:bossbar/upgrade/9
#execute if score @s stage matches 11 run function bossbar:bossbar/upgrade/10

execute if score @s stage matches 30 run function bossbar:bossbar/upgrade/10