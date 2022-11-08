#reset scoreboard
scoreboard players reset @s stage
scoreboard players add @a random_number 0
scoreboard players add @a timer 0
scoreboard players add @a fail_timer 0
scoreboard players add @a completion_timer 0
bossbar set minecraft:test2 players @a
bossbar set minecraft:fail_timer players @a
bossbar set minecraft:completion_timer players @a

#revoke advancements
advancement revoke @s everything

#reset all gamestages
gamestage remove @s quest_1
gamestage remove @s quest_2
gamestage remove @s quest_3
gamestage remove @s quest_4
gamestage remove @s quest_5
gamestage remove @s quest_6
gamestage remove @s quest_7
gamestage remove @s quest_8
gamestage remove @s quest_9
gamestage remove @s quest_10

gamestage remove @s esm_1
gamestage remove @s esm_2

gamestage add @s quest_0

scoreboard players set @s stage 0
scoreboard players set @s max_health 10
scoreboard players set @s quest_quantity_converted 100
scoreboard players set @s quest_active 0
scoreboard players set @s pending_quest 0
function bossbar:bossbar/raidmeter

#sets curios slots back to starting quantity
execute as @a run curios set ring @s 2
execute as @a run curios set belt @s 2
execute as @a run curios set charm @s 4
execute as @a run curios set necklace @s 1
execute as @a run curios set head @s 1

#reset gamerules
gamerule doInsomnia false
gamerule doWeatherCycle false

#Set Stage Objective Scores
scoreboard players set @s quest_0 1

#Reset inventory slot locks
inventory_slots clear @s

#Reset Inventory tabs
playertabs setNumberOfTabs 1


execute as @a run give @s tconstruct:dagger{tic_materials: ["tconstruct:flint", "tconstruct:flint"], tic_modifiers: [{level: 2s, name: "tconstruct:jagged"}, {level: 1s, name: "tconstruct:padded"}, {level: 1s, name: "tconstruct:starter_durability_increase"}, {level: 1s, name: "tconstruct:offhand_attack"}, {level: 1s, name: "tconstruct:silky_shears"}], tic_persistent_data: {abilities: 1, upgrades: 3}} 1
execute as @a run give @s tconstruct:pickaxe{tic_broken: 0b, tic_materials: ["tconstruct:flint", "tconstruct:flint", "tconstruct:flint"], tic_modifiers: [{level: 3s, name: "tconstruct:jagged"}, {level: 1s, name: "tconstruct:piercing"}], tic_multipliers: {}, tic_persistent_data: {abilities: 1, upgrades: 3}} 1
execute as @a run give @s tconstruct:mattock{tic_broken: 0b, tic_materials: ["tconstruct:flint", "tconstruct:flint", "tconstruct:flint"], tic_modifiers: [{level: 3s, name: "tconstruct:jagged"}, {level: 1s, name: "tconstruct:knockback"}, {level: 1s, name: "tconstruct:hoe_till"}], tic_persistent_data: {abilities: 1, upgrades: 3}} 1
execute as @a run give @s glow_sticks:glow_stick_purple 8
execute as @a run give @s hardcorequesting:quest_book 1
execute as @a run give @s farmersdelight:barbecue_stick 4
execute as @a run give @s create:sweet_roll 4
execute as @a run give @s sophisticatedbackpacks:backpack{borderColor: 8991416, clothColor: 8991416, inventorySlots: 9, upgradeSlots: 1} 1
execute as @a run give @s minecraft:oak_log 16
execute as @a run give @s minecraft:oak_sapling 1
execute as @a run give @s minecraft:torch 8

execute as @a run effect clear @s

setworldspawn
spawnpoint