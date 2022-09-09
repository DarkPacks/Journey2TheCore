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

#Setup Boss Bars
bossbar add minecraft:test2 "Time left"
bossbar set bar color red

bossbar add bar "bar"
bossbar set bar color blue

bossbar add minecraft:fail_timer "Timout Corner"
bossbar set bar color red

bossbar add minecraft:completion_timer "Time left"
bossbar set bar color green

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



#Game stage objectives
scoreboard objectives add quest_0 dummy
scoreboard objectives add quest_1 dummy
scoreboard objectives add quest_2 dummy
scoreboard objectives add quest_3 dummy
scoreboard objectives add esm_1 dummy
scoreboard objectives add esm_2 dummy


#Tracks Entity Kills
scoreboard objectives add killed_axolotl minecraft.killed:minecraft.axolotl
scoreboard objectives add killed_bat minecraft.killed:minecraft.bat
scoreboard objectives add killed_bee minecraft.killed:minecraft.bee
scoreboard objectives add killed_blaze minecraft.killed:minecraft.blaze
scoreboard objectives add killed_cat minecraft.killed:minecraft.cat
scoreboard objectives add killed_cave_spider minecraft.killed:minecraft.cave_spider
scoreboard objectives add killed_chicken minecraft.killed:minecraft.chicken
scoreboard objectives add killed_cod minecraft.killed:minecraft.cod
scoreboard objectives add killed_cow minecraft.killed:minecraft.cow
scoreboard objectives add killed_creeper minecraft.killed:minecraft.creeper
scoreboard objectives add killed_dolphin minecraft.killed:minecraft.dolphin
scoreboard objectives add killed_donkey minecraft.killed:minecraft.donkey
scoreboard objectives add killed_drowned minecraft.killed:minecraft.drowned
scoreboard objectives add killed_elder_guardian minecraft.killed:minecraft.elder_guardian
scoreboard objectives add killed_enderman minecraft.killed:minecraft.enderman
scoreboard objectives add killed_endermite minecraft.killed:minecraft.endermite
scoreboard objectives add killed_evoker minecraft.killed:minecraft.evoker
scoreboard objectives add killed_fox minecraft.killed:minecraft.fox
scoreboard objectives add killed_ghast minecraft.killed:minecraft.ghast
scoreboard objectives add killed_glow_squid minecraft.killed:minecraft.glow_squid
scoreboard objectives add killed_goat minecraft.killed:minecraft.goat
scoreboard objectives add killed_guardian minecraft.killed:minecraft.guardian
scoreboard objectives add killed_hoglin minecraft.killed:minecraft.hoglin
scoreboard objectives add killed_horse minecraft.killed:minecraft.horse
scoreboard objectives add killed_husk minecraft.killed:minecraft.husk
scoreboard objectives add killed_illusioner minecraft.killed:minecraft.illusioner
scoreboard objectives add killed_iron_golem minecraft.killed:minecraft.iron_golem
scoreboard objectives add killed_llama minecraft.killed:minecraft.llama
scoreboard objectives add killed_magma_cube minecraft.killed:minecraft.magma_cube
scoreboard objectives add killed_mule minecraft.killed:minecraft.mule
scoreboard objectives add killed_mooshroom minecraft.killed:minecraft.mooshroom
scoreboard objectives add killed_ocelot minecraft.killed:minecraft.ocelot
scoreboard objectives add killed_panda minecraft.killed:minecraft.panda
scoreboard objectives add killed_parrot minecraft.killed:minecraft.parrot
scoreboard objectives add killed_phantom minecraft.killed:minecraft.phantom
scoreboard objectives add killed_pig minecraft.killed:minecraft.pig
scoreboard objectives add killed_piglin minecraft.killed:minecraft.piglin
scoreboard objectives add killed_piglin_brute minecraft.killed:minecraft.piglin_brute
scoreboard objectives add killed_pillager minecraft.killed:minecraft.pillager
scoreboard objectives add killed_polar_bear minecraft.killed:minecraft.polar_bear
scoreboard objectives add killed_pufferfish minecraft.killed:minecraft.pufferfish
scoreboard objectives add killed_rabbit minecraft.killed:minecraft.rabbit
scoreboard objectives add killed_ravager minecraft.killed:minecraft.ravager
scoreboard objectives add killed_salmon minecraft.killed:minecraft.salmon
scoreboard objectives add killed_sheep minecraft.killed:minecraft.sheep
scoreboard objectives add killed_shulker minecraft.killed:minecraft.shulker
scoreboard objectives add killed_silverfish minecraft.killed:minecraft.silverfish
scoreboard objectives add killed_skeleton minecraft.killed:minecraft.skeleton
scoreboard objectives add killed_skeleton_horse minecraft.killed:minecraft.skeleton_horse
scoreboard objectives add killed_slime minecraft.killed:minecraft.slime
scoreboard objectives add killed_snow_golem minecraft.killed:minecraft.snow_golem
scoreboard objectives add killed_snowball minecraft.killed:minecraft.snowball
scoreboard objectives add killed_spider minecraft.killed:minecraft.spider
scoreboard objectives add killed_squid minecraft.killed:minecraft.squid
scoreboard objectives add killed_stray minecraft.killed:minecraft.stray
scoreboard objectives add killed_strider minecraft.killed:minecraft.strider
scoreboard objectives add killed_trader_llama minecraft.killed:minecraft.trader_llama
scoreboard objectives add killed_tropical_fish minecraft.killed:minecraft.tropical_fish
scoreboard objectives add killed_turtle minecraft.killed:minecraft.turtle
scoreboard objectives add killed_vex minecraft.killed:minecraft.vex
scoreboard objectives add killed_villager minecraft.killed:minecraft.villager
scoreboard objectives add killed_vindicator minecraft.killed:minecraft.vindicator
scoreboard objectives add killed_wandering_trader minecraft.killed:minecraft.wandering_trader
scoreboard objectives add killed_witch minecraft.killed:minecraft.witch
scoreboard objectives add killed_wither minecraft.killed:minecraft.wither
scoreboard objectives add killed_wither_skeleton minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add killed_wolf minecraft.killed:minecraft.wolf
scoreboard objectives add killed_zoglin minecraft.killed:minecraft.zoglin
scoreboard objectives add killed_zombie minecraft.killed:minecraft.zombie
scoreboard objectives add killed_zombie_horse minecraft.killed:minecraft.zombie_horse
scoreboard objectives add killed_zombie_villager minecraft.killed:minecraft.zombie_villager
scoreboard objectives add killed_zombified_piglin minecraft.killed:minecraft.zombified_piglin
scoreboard objectives add killed_cotton_candy_sheep minecraft.killed:candyworld.cotton_candy_sheep
scoreboard objectives add killed_easter_chicken minecraft.killed:candyworld.easter_chicken
scoreboard objectives add killed_gummy_mouse minecraft.killed:candyworld.gummy_mouse
scoreboard objectives add killed_gummy_bear minecraft.killed:candyworld.gummy_bear
scoreboard objectives add killed_tnt_slime minecraft.killed:tntslimes.tnt_slime
scoreboard objectives add killed_strawgolem minecraft.killed:strawgolem.strawgolem
scoreboard objectives add killed_strawnggolem minecraft.killed:strawgolem.strawnggolem
scoreboard objectives add killed_skeleton_creeper minecraft.killed:graveyard.skeleton_creeper
scoreboard objectives add killed_acolyte minecraft.killed:graveyard.acolyte
scoreboard objectives add killed_reaper minecraft.killed:graveyard.reaper
scoreboard objectives add killed_ghoul minecraft.killed:graveyard.ghoul
scoreboard objectives add killed_nightmare minecraft.killed:graveyard.nightmare
scoreboard objectives add killed_revenant minecraft.killed:graveyard.revenant
scoreboard objectives add killed_wraith minecraft.killed:graveyard.wraith
scoreboard objectives add killed_corrupted_pillager minecraft.killed:graveyard.corrupted_pillager
scoreboard objectives add killed_corrupted_vindicator minecraft.killed:graveyard.corrupted_vindicator
scoreboard objectives add killed_goblin_trader minecraft.killed:goblintraders.goblin_trader
scoreboard objectives add killed_vein_goblin_trader minecraft.killed:goblintraders.vein_goblin_trader
scoreboard objectives add killed_kobold minecraft.killed:kobolds.kobold
scoreboard objectives add killed_kobold_warrior minecraft.killed:kobolds.kobold_warrior
scoreboard objectives add killed_kobold_enchanter minecraft.killed:kobolds.kobold_enchanter
scoreboard objectives add killed_kobold_engineer minecraft.killed:kobolds.kobold_engineer
scoreboard objectives add killed_kobold_pirate minecraft.killed:kobolds.kobold_pirate
scoreboard objectives add killed_kobold_captain minecraft.killed:kobolds.kobold_captain
scoreboard objectives add killed_kobold_child minecraft.killed:kobolds.kobold_child
scoreboard objectives add killed_kobold_zombie minecraft.killed:kobolds.kobold_zombie
scoreboard objectives add killed_kobold_zombie_drowned minecraft.killed:kobolds.kobold_zombie_drowned
scoreboard objectives add killed_kobold_skeleton minecraft.killed:kobolds.kobold_skeleton
scoreboard objectives add killed_turkey minecraft.killed:turkeydevutil.turkey
scoreboard objectives add killed_duck minecraft.killed:turkeydevutil.duck
scoreboard objectives add killed_basalz minecraft.killed:thermal.basalz
scoreboard objectives add killed_blizz minecraft.killed:thermal.blizz
scoreboard objectives add killed_blitz minecraft.killed:thermal.blitz
scoreboard objectives add killed_dirt_creeper minecraft.killed:core_creepers.dirt_creeper
scoreboard objectives add killed_stone_creeper minecraft.killed:core_creepers.stone_creeper
scoreboard objectives add killed_cluster_creeper minecraft.killed:core_creepers.cluster_creeper
scoreboard objectives add killed_super_charged_creeper minecraft.killed:core_creepers.super_charged_creeper
scoreboard objectives add killed_ambush_creeper minecraft.killed:core_creepers.ambush_creeper
scoreboard objectives add killed_dirt_water_creeper minecraft.killed:core_creepers.dirt_water_creeper
scoreboard objectives add killed_stone_lava_creeper minecraft.killed:core_creepers.stone_lava_creeper
scoreboard objectives add killed_grizzly_bear minecraft.killed:alexsmobs.grizzly_bear
scoreboard objectives add killed_roadrunner minecraft.killed:alexsmobs.roadrunner
scoreboard objectives add killed_bone_serpent minecraft.killed:alexsmobs.bone_serpent
scoreboard objectives add killed_bone_serpent_part minecraft.killed:alexsmobs.bone_serpent_part
scoreboard objectives add killed_gazelle minecraft.killed:alexsmobs.gazelle
scoreboard objectives add killed_crocodile minecraft.killed:alexsmobs.crocodile
scoreboard objectives add killed_fly minecraft.killed:alexsmobs.fly
scoreboard objectives add killed_hummingbird minecraft.killed:alexsmobs.hummingbird
scoreboard objectives add killed_orca minecraft.killed:alexsmobs.orca
scoreboard objectives add killed_sunbird minecraft.killed:alexsmobs.sunbird
scoreboard objectives add killed_gorilla minecraft.killed:alexsmobs.gorilla
scoreboard objectives add killed_crimson_mosquito minecraft.killed:alexsmobs.crimson_mosquito
scoreboard objectives add killed_mosquito_spit minecraft.killed:alexsmobs.mosquito_spit
scoreboard objectives add killed_rattlesnake minecraft.killed:alexsmobs.rattlesnake
scoreboard objectives add killed_endergrade minecraft.killed:alexsmobs.endergrade
scoreboard objectives add killed_hammerhead_shark minecraft.killed:alexsmobs.hammerhead_shark
scoreboard objectives add killed_shark_tooth_arrow minecraft.killed:alexsmobs.shark_tooth_arrow
scoreboard objectives add killed_lobster minecraft.killed:alexsmobs.lobster
scoreboard objectives add killed_komodo_dragon minecraft.killed:alexsmobs.komodo_dragon
scoreboard objectives add killed_capuchin_monkey minecraft.killed:alexsmobs.capuchin_monkey
scoreboard objectives add killed_tossed_item minecraft.killed:alexsmobs.tossed_item
scoreboard objectives add killed_centipede_head minecraft.killed:alexsmobs.centipede_head
scoreboard objectives add killed_centipede_body minecraft.killed:alexsmobs.centipede_body
scoreboard objectives add killed_centipede_tail minecraft.killed:alexsmobs.centipede_tail
scoreboard objectives add killed_warped_toad minecraft.killed:alexsmobs.warped_toad
scoreboard objectives add killed_moose minecraft.killed:alexsmobs.moose
scoreboard objectives add killed_mimicube minecraft.killed:alexsmobs.mimicube
scoreboard objectives add killed_raccoon minecraft.killed:alexsmobs.raccoon
scoreboard objectives add killed_blobfish minecraft.killed:alexsmobs.blobfish
scoreboard objectives add killed_seal minecraft.killed:alexsmobs.seal
scoreboard objectives add killed_cockroach minecraft.killed:alexsmobs.cockroach
scoreboard objectives add killed_cockroach_egg minecraft.killed:alexsmobs.cockroach_egg
scoreboard objectives add killed_shoebill minecraft.killed:alexsmobs.shoebill
scoreboard objectives add killed_elephant minecraft.killed:alexsmobs.elephant
scoreboard objectives add killed_soul_vulture minecraft.killed:alexsmobs.soul_vulture
scoreboard objectives add killed_snow_leopard minecraft.killed:alexsmobs.snow_leopard
scoreboard objectives add killed_spectre minecraft.killed:alexsmobs.spectre
scoreboard objectives add killed_crow minecraft.killed:alexsmobs.crow
scoreboard objectives add killed_alligator_snapping_turtle minecraft.killed:alexsmobs.alligator_snapping_turtle
scoreboard objectives add killed_mungus minecraft.killed:alexsmobs.mungus
scoreboard objectives add killed_mantis_shrimp minecraft.killed:alexsmobs.mantis_shrimp
scoreboard objectives add killed_guster minecraft.killed:alexsmobs.guster
scoreboard objectives add killed_gust minecraft.killed:alexsmobs.gust
scoreboard objectives add killed_warped_mosco minecraft.killed:alexsmobs.warped_mosco
scoreboard objectives add killed_hemolymph minecraft.killed:alexsmobs.hemolymph
scoreboard objectives add killed_straddler minecraft.killed:alexsmobs.straddler
scoreboard objectives add killed_stradpole minecraft.killed:alexsmobs.stradpole
scoreboard objectives add killed_straddleboard minecraft.killed:alexsmobs.straddleboard
scoreboard objectives add killed_emu minecraft.killed:alexsmobs.emu
scoreboard objectives add killed_platypus minecraft.killed:alexsmobs.platypus
scoreboard objectives add killed_dropbear minecraft.killed:alexsmobs.dropbear
scoreboard objectives add killed_tasmanian_devil minecraft.killed:alexsmobs.tasmanian_devil
scoreboard objectives add killed_kangaroo minecraft.killed:alexsmobs.kangaroo
scoreboard objectives add killed_cachalot_whale minecraft.killed:alexsmobs.cachalot_whale
scoreboard objectives add killed_leafcutter_ant minecraft.killed:alexsmobs.leafcutter_ant
scoreboard objectives add killed_enderiophage minecraft.killed:alexsmobs.enderiophage
scoreboard objectives add killed_enderiophage_rocket minecraft.killed:alexsmobs.enderiophage_rocket
scoreboard objectives add killed_bald_eagle minecraft.killed:alexsmobs.bald_eagle
scoreboard objectives add killed_tiger minecraft.killed:alexsmobs.tiger
scoreboard objectives add killed_tarantula_hawk minecraft.killed:alexsmobs.tarantula_hawk
scoreboard objectives add killed_void_worm minecraft.killed:alexsmobs.void_worm
scoreboard objectives add killed_frilled_shark minecraft.killed:alexsmobs.frilled_shark
scoreboard objectives add killed_mimic_octopus minecraft.killed:alexsmobs.mimic_octopus
scoreboard objectives add killed_seagull minecraft.killed:alexsmobs.seagull
scoreboard objectives add killed_froststalker minecraft.killed:alexsmobs.froststalker
scoreboard objectives add killed_tusklin minecraft.killed:alexsmobs.tusklin
scoreboard objectives add killed_laviathan minecraft.killed:alexsmobs.laviathan
scoreboard objectives add killed_cosmaw minecraft.killed:alexsmobs.cosmaw
scoreboard objectives add killed_toucan minecraft.killed:alexsmobs.toucan
scoreboard objectives add killed_maned_wolf minecraft.killed:alexsmobs.maned_wolf
scoreboard objectives add killed_anaconda minecraft.killed:alexsmobs.anaconda
scoreboard objectives add killed_anaconda_part minecraft.killed:alexsmobs.anaconda_part
scoreboard objectives add killed_anteater minecraft.killed:alexsmobs.anteater
scoreboard objectives add killed_rocky_roller minecraft.killed:alexsmobs.rocky_roller
scoreboard objectives add killed_flutter minecraft.killed:alexsmobs.flutter
scoreboard objectives add killed_gelada_monkey minecraft.killed:alexsmobs.gelada_monkey
scoreboard objectives add killed_jerboa minecraft.killed:alexsmobs.jerboa
scoreboard objectives add killed_terrapin minecraft.killed:alexsmobs.terrapin
scoreboard objectives add killed_comb_jelly minecraft.killed:alexsmobs.comb_jelly
scoreboard objectives add killed_cosmic_cod minecraft.killed:alexsmobs.cosmic_cod
scoreboard objectives add killed_bunfungus minecraft.killed:alexsmobs.bunfungus
scoreboard objectives add killed_bison minecraft.killed:alexsmobs.bison
scoreboard objectives add killed_giant_squid minecraft.killed:alexsmobs.giant_squid
scoreboard objectives add killed_squid_grapple minecraft.killed:alexsmobs.squid_grapple
scoreboard objectives add killed_sea_bear minecraft.killed:alexsmobs.sea_bear
scoreboard objectives add killed_devils_hole_pupfish minecraft.killed:alexsmobs.devils_hole_pupfish
scoreboard objectives add killed_catfish minecraft.killed:alexsmobs.catfish
scoreboard objectives add killed_flying_fish minecraft.killed:alexsmobs.flying_fish
scoreboard objectives add killed_skelewag minecraft.killed:alexsmobs.skelewag
scoreboard objectives add killed_player_mob minecraft.killed:player_mobs.player_mob
scoreboard objectives add killed_adelie_penguin minecraft.killed:waddles.adelie_penguin
scoreboard objectives add killed_impost_ore minecraft.killed:impostore.impost_ore
scoreboard objectives add killed_enchanter minecraft.killed:enchantwithmob.enchanter
scoreboard objectives add killed_mimic minecraft.killed:artifacts.mimic
scoreboard objectives add killed_magma_monster minecraft.killed:magma_monsters.magma_monster
scoreboard objectives add killed_magma_monster_grunt minecraft.killed:magma_monsters.magma_monster_grunt

#Random Number Generator for random events
scoreboard objectives add rng dummy