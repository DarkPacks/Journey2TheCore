scoreboard players reset @s stage
playertabs setNumberOfTabs 1
gamestage add @s quest_0
scoreboard players set @s stage 0
scoreboard players set @s max_health 10
scoreboard players set @s quest_quantity_converted 100
scoreboard players set @s quest_active 0
scoreboard players set @s pending_quest 0
function bossbar:bossbar/raidmeter


execute as @s run curios set ring @s 2
execute as @s run curios set belt @s 2
execute as @s run curios set charm @s 4
execute as @s run curios set necklace @s 1
execute as @s run curios set head @s 1
execute as @s run curios set trinket @s 1
tag @s add uniqued
