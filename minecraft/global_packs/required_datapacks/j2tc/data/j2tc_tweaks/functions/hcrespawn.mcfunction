#reset scoreboard
scoreboard players reset @p stage
scoreboard players add @a random_number 0
scoreboard players add @a timer 0
scoreboard players add @a fail_timer 0
scoreboard players add @a completion_timer 0
bossbar set minecraft:test2 players @a
bossbar set minecraft:fail_timer players @a
bossbar set minecraft:completion_timer players @a

#revoke advancements
advancement revoke @p everything

#reset all gamestages
gamestage remove @p quest_1
gamestage remove @p quest_2
gamestage remove @p quest_3
gamestage remove @p quest_4
gamestage remove @p quest_5
gamestage remove @p quest_6
gamestage remove @p quest_7
gamestage remove @p quest_8
gamestage remove @p quest_9
gamestage remove @p quest_10

gamestage remove @p esm_1
gamestage remove @p esm_2

gamestage remove @p locate_village

gamestage add @p quest_0

scoreboard players reset @p

scoreboard players set @p stage 0
scoreboard players set @p max_health 10
scoreboard players set @p quest_quantity_converted 100
scoreboard players set @p quest_active 0
scoreboard players set @p pending_quest 0
function bossbar:bossbar/raidmeter

#sets curios slots back to starting quantity (ring 2)
curios set ring @p 2
curios set belt @p 2
curios set charm @p 4
curios set necklace @p 1
curios set head @p 1
#reset gamerules
gamerule doInsomnia false
gamerule doWeatherCycle false

#Set Stage Objective Scores
scoreboard players set @p quest_0 1

#Reset inventory slot locks
inventory_slots clear @p

#Reset Inventory tabs
playertabs setNumberOfTabs 1

give @p tconstruct:dagger{tic_materials: ["tconstruct:flint", "tconstruct:flint"], tic_modifiers: [{level: 2s, name: "tconstruct:jagged"}, {level: 1s, name: "tconstruct:padded"}, {level: 1s, name: "tconstruct:starter_durability_increase"}, {level: 1s, name: "tconstruct:offhand_attack"}, {level: 1s, name: "tconstruct:silky_shears"}], tic_persistent_data: {abilities: 1, upgrades: 3}} 1
give @p tconstruct:pickaxe{tic_broken: 0b, tic_materials: ["tconstruct:flint", "tconstruct:flint", "tconstruct:flint"], tic_modifiers: [{level: 3s, name: "tconstruct:jagged"}, {level: 1s, name: "tconstruct:piercing"}], tic_multipliers: {}, tic_persistent_data: {abilities: 1, upgrades: 3}} 1
give @p tconstruct:mattock{tic_broken: 0b, tic_materials: ["tconstruct:flint", "tconstruct:flint", "tconstruct:flint"], tic_modifiers: [{level: 3s, name: "tconstruct:jagged"}, {level: 1s, name: "tconstruct:knockback"}, {level: 1s, name: "tconstruct:hoe_till"}], tic_persistent_data: {abilities: 1, upgrades: 3}} 1
give @p glow_sticks:glow_stick_purple 8
give @p hardcorequesting:quest_book 1
give @p farmersdelight:barbecue_stick 4
give @p create:sweet_roll 4
give @p sophisticatedbackpacks:backpack{borderColor: 8991416, clothColor: 8991416, inventorySlots: 9, upgradeSlots: 1} 1
give @p minecraft:oak_log 16
give @p minecraft:oak_sapling 1
give @p minecraft:torch 8

effect clear @p
effect give @p minecraft:resistance 30 2 true

setworldspawn
spawnpoint
