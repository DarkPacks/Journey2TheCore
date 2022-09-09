#scp-1689
#track poisonous potato eating in overworld
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_poisonous_potato matches 1 run cyclic scoreboard random @s 1 21 potato_dimension_teleport_chance
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @a[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_poisonous_potato
#track other potatoes in overworld
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_baked_potato matches 1 run cyclic scoreboard random @s 1 41 potato_dimension_teleport_chance
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @a[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_baked_potato

execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_stuffed_potato matches 1 run cyclic scoreboard random @s 1 41 potato_dimension_teleport_chance
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @a[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_stuffed_potato

execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s eat_steak_and_potato matches 1 run cyclic scoreboard random @s 1 41 potato_dimension_teleport_chance
execute as @a[predicate=bossbar:player_in_overworld_dimension] run execute if score @s potato_dimension_teleport_chance matches 1 run function bossbar:bossbar/potato_dimension_teleport
execute as @a[predicate=bossbar:player_in_overworld_dimension] run scoreboard players reset @s eat_steak_and_potato



#Runs checks for filling dimension and teleporting back to the overworld
execute as @a run execute in j2tc_tweaks:scp_1689 run execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s potato_dimension matches 1 run function bossbar:bossbar/fill_potato_dimension




execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_potato matches 1 run cyclic scoreboard random @s 1 11 return_to_overworld_from_potato_dimension
execute as @a run scoreboard players reset @s eat_potato

execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_baked_potato matches 1 run cyclic scoreboard random @s 1 11 return_to_overworld_from_potato_dimension
execute as @a run scoreboard players reset @s eat_baked_potato

execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_stuffed_potato matches 1 run cyclic scoreboard random @s 1 11 return_to_overworld_from_potato_dimension
execute as @a run scoreboard players reset @s eat_stuffed_potato

execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s eat_steak_and_potato matches 1 run cyclic scoreboard random @s 1 11 return_to_overworld_from_potato_dimension
execute as @a run scoreboard players reset @s eat_steak_and_potato


execute as @a run execute if score @s return_to_overworld_from_potato_dimension matches 1 run function bossbar:bossbar/return_to_overworld_from_potato_dimension



#Listen for Potato Dimension Clear
execute as @a[predicate=bossbar:player_in_potato_dimension] run execute if score @s potato_dimension_cleared matches 0 run function bossbar:bossbar/potato_dimension_clear_spawn
execute as @a[predicate=bossbar:standing_on_stone_block_in_scp1689] run execute if score @s potato_dimension_cleared matches 0 run scoreboard players set @s potato_dimension_cleared 1

#Trackers for current quest and saving new quests to que up
execute as @a run execute if score @s pending_quest matches ..0 run scoreboard players set @s pending_quest 0
execute as @a run execute if score @s pending_quest matches 0 run scoreboard players set @s quest_queue 0
execute as @a run execute if score @s pending_quest matches 1.. run scoreboard players set @s quest_queue 1
execute as @a run execute if score @s quest_queue matches 2.. run scoreboard players set @s quest_queue 1

#Load player stat increases when killing enemies
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_axolotl
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_bat
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_bee
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_blaze
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_cat
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_cave_spider
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_chicken
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_cod
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_cow
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_creeper
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_dolphin
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_donkey
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_drowned
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_elder_guardian
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_enderman
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_endermite
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_evoker
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_fox
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_ghast
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_glow_squid
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_goat
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_guardian
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_hoglin
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_horse
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_husk
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_illusioner
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_iron_golem
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_llama
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_magma_cube
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_mule
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_mooshroom
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_ocelot
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_panda
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_parrot
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_phantom
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_pig
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_piglin
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_piglin_brute
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_pillager
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_polar_bear
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_pufferfish
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_rabbit
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_ravager
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_salmon
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_sheep
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_shulker
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_silverfish
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_skeleton
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_skeleton_horse
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_slime
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_snow_golem
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_snowball
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_spider
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_squid
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_stray
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_strider
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_trader_llama
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_tropical_fish
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_turtle
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_vex
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_villager
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_vindicator
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_wandering_trader
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_witch
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_wither
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_wither_skeleton
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_wolf
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_zoglin
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_zombie
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_zombie_horse
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_zombie_villager
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/minecraft_zombified_piglin
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/candyworld_cotton_candy_sheep
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/candyworld_easter_chicken
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/candyworld_gummy_mouse
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/candyworld_gummy_bear
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/tntslimes_tnt_slime
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/strawgolem_strawgolem
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/strawgolem_strawnggolem
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/graveyard_skeleton_creeper
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/graveyard_acolyte
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/graveyard_reaper
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/graveyard_ghoul
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/graveyard_nightmare
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/graveyard_revenant
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/graveyard_wraith
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/graveyard_corrupted_pillager
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/graveyard_corrupted_vindicator
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/goblintraders_goblin_trader
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/goblintraders_vein_goblin_trader
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/kobolds_kobold
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/kobolds_kobold_warrior
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/kobolds_kobold_enchanter
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/kobolds_kobold_engineer
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/kobolds_kobold_pirate
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/kobolds_kobold_captain
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/kobolds_kobold_child
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/kobolds_kobold_zombie
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/kobolds_kobold_zombie_drowned
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/kobolds_kobold_skeleton
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/turkeydevutil_turkey
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/turkeydevutil_duck
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/thermal_basalz
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/thermal_blizz
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/thermal_blitz
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/core_creepers_dirt_creeper
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/core_creepers_stone_creeper
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/core_creepers_cluster_creeper
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/core_creepers_super_charged_creeper
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/core_creepers_ambush_creeper
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/core_creepers_dirt_water_creeper
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/core_creepers_stone_lava_creeper
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_grizzly_bear
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_roadrunner
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_bone_serpent
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_bone_serpent_part
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_gazelle
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_crocodile
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_fly
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_hummingbird
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_orca
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_sunbird
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_gorilla
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_crimson_mosquito
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_mosquito_spit
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_rattlesnake
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_endergrade
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_hammerhead_shark
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_shark_tooth_arrow
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_lobster
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_komodo_dragon
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_capuchin_monkey
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_tossed_item
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_centipede_head
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_centipede_body
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_centipede_tail
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_warped_toad
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_moose
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_mimicube
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_raccoon
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_blobfish
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_seal
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_cockroach
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_cockroach_egg
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_shoebill
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_elephant
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_soul_vulture
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_snow_leopard
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_spectre
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_crow
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_alligator_snapping_turtle
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_mungus
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_mantis_shrimp
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_guster
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_gust
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_warped_mosco
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_hemolymph
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_straddler
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_stradpole
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_straddleboard
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_emu
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_platypus
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_dropbear
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_tasmanian_devil
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_kangaroo
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_cachalot_whale
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_leafcutter_ant
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_enderiophage
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_enderiophage_rocket
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_bald_eagle
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_tiger
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_tarantula_hawk
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_void_worm
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_frilled_shark
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_mimic_octopus
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_seagull
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_froststalker
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_tusklin
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_laviathan
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_cosmaw
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_toucan
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_maned_wolf
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_anaconda
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_anaconda_part
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_anteater
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_rocky_roller
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_flutter
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_gelada_monkey
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_jerboa
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_terrapin
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_comb_jelly
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_cosmic_cod
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_bunfungus
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_bison
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_giant_squid
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_squid_grapple
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_sea_bear
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_devils_hole_pupfish
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_catfish
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_flying_fish
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/alexsmobs_skelewag
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/player_mobs_player_mob
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/waddles_adelie_penguin
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/impostore_impost_ore
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/enchantwithmob_enchanter
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/artifacts_mimic
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/magma_monsters_magma_monster
execute as @a run function bossbar:bossbar/mob_kill_stat_increase/magma_monsters_magma_monster_grunt