scoreboard players reset @s stage
playertabs setNumberOfTabs 1
gamestage add @s quest_0
scoreboard players set @s stage 0
scoreboard players set @s max_health 10
scoreboard players set @s quest_quantity_converted 100
scoreboard players set @s quest_active 0
scoreboard players set @s pending_quest 0
function bossbar:bossbar/raidmeter


execute as @a run curios set ring @s 2
execute as @a run curios set belt @s 2
execute as @a run curios set charm @s 4
execute as @a run curios set necklace @s 1
execute as @a run curios set head @s 1
tag @s add uniqued