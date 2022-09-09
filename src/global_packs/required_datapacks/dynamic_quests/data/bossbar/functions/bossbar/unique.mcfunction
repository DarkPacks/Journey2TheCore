scoreboard players reset @s stage
playertabs setNumberOfTabs 1
gamestage add @s quest_0
scoreboard players set @s stage 0
scoreboard players set @s max_health 10
scoreboard players set @s quest_quantity_converted 100
scoreboard players set @s quest_active 0
scoreboard players set @s pending_quest 0
function bossbar:bossbar/raidmeter

tag @s add uniqued