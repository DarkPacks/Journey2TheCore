scoreboard objectives add counter dummy
scoreboard objectives add stage dummy
scoreboard objectives add progress dummy
scoreboard objectives add quest_active dummy
scoreboard objectives add pending_quest dummy
scoreboard objectives add quest_queue dummy

scoreboard objectives add quest_quantity dummy
scoreboard objectives add quest_quantity_converted dummy

#Load up timer
scoreboard objectives add random_number dummy
scoreboard objectives add min_time dummy
scoreboard objectives add max_time dummy
scoreboard objectives add timer dummy
scoreboard objectives add quest_reward_number dummy

#loads quest fail timers
scoreboard objectives add fail_timer dummy
scoreboard objectives add fail_min_time dummy
scoreboard objectives add fail_max_time dummy
scoreboard objectives add fail_random_number dummy

#loads quest completion timers
scoreboard objectives add completion_timer dummy
scoreboard objectives add completion_min_time dummy
scoreboard objectives add completion_max_time dummy
scoreboard objectives add completion_random_number dummy

#loads quest completion timers
scoreboard objectives add teleport_timer dummy
scoreboard objectives add teleport_min_time dummy
scoreboard objectives add teleport_max_time dummy
scoreboard objectives add teleport_random_number dummy


#Setup Boss Bars
bossbar add minecraft:test2 "Quest Timer"
bossbar set minecraft:test2 color red

bossbar add bar "bar"
bossbar set bar color blue

bossbar add minecraft:fail_timer "Timeout Corner"
bossbar set minecraft:fail_timer color red

bossbar add minecraft:completion_timer "Effects Duration"
bossbar set minecraft:completion_timer color green

bossbar add minecraft:teleport_timer "Return Timer"
bossbar set minecraft:teleport_timer color purple

#Setup Completion or Fail events needing to run every tick
scoreboard objectives add inventory_randomize dummy
scoreboard objectives add damage_dad_joke dummy
scoreboard objectives add fail_take_damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add effect_resistance dummy

#stage 1
scoreboard objectives add mined_dirt minecraft.custom:minecraft.mined_tag_minecraft_dirt
scoreboard objectives add mined_dirt_placed minecraft.custom:minecraft.placed_tag_minecraft_dirt

#stage 2
scoreboard objectives add mined_log minecraft.custom:minecraft.mined_tag_minecraft_logs
scoreboard objectives add mined_log_placed minecraft.used:minecraft.stripped_oak_log

#stage 3
scoreboard objectives add punched_animal_1 minecraft.killed:minecraft.cow
scoreboard objectives add punched_animal_2 minecraft.killed:minecraft.bee
scoreboard objectives add punched_animal_3 minecraft.killed:minecraft.chicken
scoreboard objectives add punched_animal_5 minecraft.killed:minecraft.donkey
scoreboard objectives add punched_animal_6 minecraft.killed:minecraft.fox
scoreboard objectives add punched_animal_7 minecraft.killed:minecraft.goat
scoreboard objectives add punched_animal_8 minecraft.killed:minecraft.horse
scoreboard objectives add punched_animal_9 minecraft.killed:minecraft.llama
scoreboard objectives add punched_animal_10 minecraft.killed:minecraft.mooshroom
scoreboard objectives add punched_animal_11 minecraft.killed:minecraft.mule
scoreboard objectives add punched_animal_12 minecraft.killed:minecraft.panda
scoreboard objectives add punched_animal_13 minecraft.killed:minecraft.parrot
scoreboard objectives add punched_animal_14 minecraft.killed:minecraft.pig
scoreboard objectives add punched_animal_15 minecraft.killed:minecraft.polar_bear
scoreboard objectives add punched_animal_16 minecraft.killed:minecraft.pufferfish
scoreboard objectives add punched_animal_17 minecraft.killed:minecraft.rabbit
scoreboard objectives add punched_animal_18 minecraft.killed:minecraft.salmon
scoreboard objectives add punched_animal_19 minecraft.killed:minecraft.sheep
scoreboard objectives add punched_animal_20 minecraft.killed:minecraft.squid
scoreboard objectives add punched_animal_21 minecraft.killed:minecraft.trader_llama
scoreboard objectives add punched_animal_22 minecraft.killed:minecraft.tropical_fish
scoreboard objectives add punched_animal_23 minecraft.killed:minecraft.turtle
scoreboard objectives add punched_animal_24 minecraft.killed:minecraft.villager
scoreboard objectives add punched_animal_25 minecraft.killed:minecraft.wandering_trader
scoreboard objectives add punched_animal_26 minecraft.killed:minecraft.wolf
scoreboard objectives add punched_animal_27 minecraft.killed:minecraft.axolotl
scoreboard objectives add punched_animal_28 minecraft.killed:minecraft.cat
scoreboard objectives add punched_animal_29 minecraft.killed:minecraft.cod
scoreboard objectives add punched_animal_30 minecraft.killed:minecraft.dolphin
scoreboard objectives add punched_animal_31 minecraft.killed:minecraft.glow_squid
scoreboard objectives add punched_animal_32 minecraft.killed:minecraft.iron_golem
scoreboard objectives add punched_animal_33 minecraft.killed:minecraft.snow_golem
scoreboard objectives add punched_animal_34 minecraft.killed:minecraft.strider
scoreboard objectives add punched_animal_35 minecraft.killed:minecraft.zombie_horse
scoreboard objectives add punched_animal_36 minecraft.killed:candyworld.cotton_candy_sheep
scoreboard objectives add punched_animal_37 minecraft.killed:candyworld.easter_chicken
scoreboard objectives add punched_animal_38 minecraft.killed:candyworld.gummy_mouse
scoreboard objectives add punched_animal_39 minecraft.killed:candyworld.gummy_bear
scoreboard objectives add punched_animal_40 minecraft.killed:strawgolem.strawgolem
scoreboard objectives add punched_animal_41 minecraft.killed:strawgolem.strawnggolem
scoreboard objectives add punched_animal_42 minecraft.killed:alexsmobs.roadrunner
scoreboard objectives add punched_animal_43 minecraft.killed:alexsmobs.gazelle
scoreboard objectives add punched_animal_44 minecraft.killed:alexsmobs.fly
scoreboard objectives add punched_animal_45 minecraft.killed:alexsmobs.hummingbird
scoreboard objectives add punched_animal_46 minecraft.killed:alexsmobs.sunbird
scoreboard objectives add punched_animal_47 minecraft.killed:alexsmobs.warped_toad
scoreboard objectives add punched_animal_48 minecraft.killed:alexsmobs.raccoon
scoreboard objectives add punched_animal_49 minecraft.killed:alexsmobs.blobfish
scoreboard objectives add punched_animal_50 minecraft.killed:alexsmobs.elephant
scoreboard objectives add punched_animal_51 minecraft.killed:alexsmobs.mungus
scoreboard objectives add punched_animal_52 minecraft.killed:alexsmobs.platypus
scoreboard objectives add punched_animal_53 minecraft.killed:alexsmobs.tasmanian_devil
scoreboard objectives add punched_animal_54 minecraft.killed:alexsmobs.kangaroo
scoreboard objectives add punched_animal_55 minecraft.killed:alexsmobs.bald_eagle
scoreboard objectives add punched_animal_56 minecraft.killed:alexsmobs.mimic_octopus
scoreboard objectives add punched_animal_57 minecraft.killed:alexsmobs.seagull
scoreboard objectives add punched_animal_58 minecraft.killed:alexsmobs.toucan
scoreboard objectives add punched_animal_59 minecraft.killed:alexsmobs.anteater
scoreboard objectives add punched_animal_60 minecraft.killed:alexsmobs.terrapin
scoreboard objectives add punched_animal_61 minecraft.killed:alexsmobs.comb_jelly
scoreboard objectives add punched_animal_62 minecraft.killed:alexsmobs.cosmic_cod
scoreboard objectives add punched_animal_63 minecraft.killed:alexsmobs.bunfungus
scoreboard objectives add punched_animal_64 minecraft.killed:alexsmobs.catfish
scoreboard objectives add punched_animal_65 minecraft.killed:minecraft.bat
#stage 4
scoreboard objectives add block_with_shield minecraft.custom:minecraft.damage_blocked_by_shield

scoreboard objectives add jump minecraft.custom:minecraft.jump
#stage 5
scoreboard objectives add run_blocks minecraft.custom:minecraft.sprint_one_cm
#stage 6
scoreboard objectives add deal_damage minecraft.custom:minecraft.damage_dealt
#stage 7
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm
#stage 8
scoreboard objectives add take_damage minecraft.custom:minecraft.damage_taken

#stage 9
scoreboard objectives add climb minecraft.custom:minecraft.climb_one_cm
#stage 10
scoreboard objectives add ring_bell minecraft.custom:minecraft.bell_ring

#stage 11
scoreboard objectives add monster_egg_mined_1 minecraft.mined:monstereggs.cave_spider_egg
scoreboard objectives add monster_egg_mined_2 minecraft.mined:monstereggs.creeper_egg
scoreboard objectives add monster_egg_mined_3 minecraft.mined:monstereggs.enderman_egg
scoreboard objectives add monster_egg_mined_4 minecraft.mined:monstereggs.skeleton_egg
scoreboard objectives add monster_egg_mined_5 minecraft.mined:monstereggs.zombie_egg
scoreboard objectives add monster_egg_mined_6 minecraft.mined:monstereggs.spider_egg

#stage 12
scoreboard objectives add mined_stone minecraft.custom:minecraft.mined_tag_forge_stone
scoreboard objectives add mined_stone_placed_1 minecraft.used:minecraft.dripstone_block
scoreboard objectives add mined_stone_placed_2 minecraft.used:minecraft.granite
scoreboard objectives add mined_stone_placed_3 minecraft.used:minecraft.stone
scoreboard objectives add mined_stone_placed_4 minecraft.used:create.limestone
scoreboard objectives add mined_stone_placed_5 minecraft.used:minecraft.andesite
scoreboard objectives add mined_stone_placed_6 minecraft.used:minecraft.diorite

#stage 13
scoreboard objectives add kill_player_mob minecraft.killed:player_mobs.player_mob

#stage 14
scoreboard objectives add kill_zombie_1 minecraft.killed:minecraft.zombie
scoreboard objectives add kill_zombie_2 minecraft.killed:minecraft.husk

#stage 15
scoreboard objectives add kill_skeleton_1 minecraft.killed:minecraft.skeleton
scoreboard objectives add kill_skeleton_2 minecraft.killed:minecraft.stray

#stage 16
scoreboard objectives add kill_spider_1 minecraft.killed:minecraft.spider
scoreboard objectives add kill_spider_2 minecraft.killed:minecraft.cave_spider

#stage 17
scoreboard objectives add dig_down dummy
scoreboard objectives add player_y_level dummy
scoreboard objectives add number dummy

#stage 18
scoreboard objectives add mined_coal_ore_1 minecraft.mined:minecraft.coal_ore
scoreboard objectives add mined_coal_ore_2 minecraft.mined:minecraft.deepslate_coal_ore

#stage 19
scoreboard objectives add used_chance_cube minecraft.custom:minecraft.opened_chance_cube

#stage 20
scoreboard objectives add collect_glowberries_1 minecraft.custom:minecraft.rightclicked_block
scoreboard objectives add collect_glowberries_2 minecraft.picked_up:minecraft.glow_berries
scoreboard objectives add dropped_glowberries minecraft.dropped:minecraft.glow_berries
scoreboard objectives add track_glowberries dummy
scoreboard objectives add track_glowberries_click dummy

#stage 21
scoreboard objectives add mined_crystal_clusters minecraft.custom:minecraft.mined_tag_j2tc_tweaks_crystal_clusters

#stage 22
scoreboard objectives add mined_ore_tag minecraft.custom:minecraft.mined_tag_forge_ores

#stage 23
scoreboard objectives add full_block_jump dummy

#air test
scoreboard objectives add on_air dummy
scoreboard objectives add jump_test minecraft.custom:minecraft.fall_one_cm

#Quest Completion Objectives
scoreboard objectives add inventory_slots dummy
scoreboard objectives add max_health dummy

#Spyglass tracking
scoreboard objectives add spyglass_night_vision minecraft.used:geore.redstone_spyglass

#Random Quest Selector
scoreboard objectives add quest_selector dummy

#Loads up scoreboards for block breaking events
scoreboard objectives add mine_ghast minecraft.mined:elementaryores.ore_ghast_nether

#Tracks Poison Potato Consumption and dimension
scoreboard objectives add eat_poisonous_potato scoreext.food_eaten:minecraft_poisonous_potato
scoreboard objectives add eat_potato scoreext.food_eaten:minecraft_potato


scoreboard objectives add eat_baked_potato scoreext.food_eaten:minecraft_baked_potato
scoreboard objectives add eat_stuffed_potato scoreext.food_eaten:farmersdelight_stuffed_potato
scoreboard objectives add eat_steak_and_potato scoreext.food_eaten:farmersdelight_steak_and_potatoes


scoreboard objectives add potato_dimension dummy
scoreboard objectives add potato_dimension_fill dummy
scoreboard objectives add potato_dimension_teleport_chance dummy
scoreboard objectives add return_to_overworld_from_potato_dimension dummy
scoreboard objectives add potato_dimension_cleared dummy


#Chance Cube Dimension Scores
#scoreboard objectives add eat_poisonous_potato scoreext.food_eaten:minecraft_poisonous_potato
#scoreboard objectives add eat_potato scoreext.food_eaten:minecraft_potato


#scoreboard objectives add eat_baked_potato scoreext.food_eaten:minecraft_baked_potato
#scoreboard objectives add eat_stuffed_potato scoreext.food_eaten:farmersdelight_stuffed_potato
#scoreboard objectives add eat_steak_and_potato scoreext.food_eaten:farmersdelight_steak_and_potatoes


scoreboard objectives add chance_cubes_dimension dummy
scoreboard objectives add chance_cubes_dimension_fill dummy
scoreboard objectives add chance_cubes_dimension_teleport_chance dummy
scoreboard objectives add return_to_overworld_from_chance_cubes_dimension dummy
scoreboard objectives add chance_cubes_dimension_cleared dummy


#Game stage objectives
scoreboard objectives add quest_0 dummy
scoreboard objectives add quest_1 dummy
scoreboard objectives add quest_2 dummy
scoreboard objectives add quest_3 dummy
scoreboard objectives add quest_4 dummy
scoreboard objectives add quest_5 dummy
scoreboard objectives add quest_6 dummy
scoreboard objectives add quest_7 dummy
scoreboard objectives add quest_8 dummy
scoreboard objectives add quest_9 dummy
scoreboard objectives add esm_1 dummy
scoreboard objectives add esm_2 dummy

#Random Number Generator for random events
scoreboard objectives add rng dummy

#Hype Train Gateways
scoreboard objectives add hype_train_level dummy
