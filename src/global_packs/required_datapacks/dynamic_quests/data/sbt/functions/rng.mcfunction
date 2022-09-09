summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_uuid"]}
execute store result score @p random_number run data get entity @e[type=minecraft:area_effect_cloud,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation @p random_number %= @p max_time
scoreboard players operation @p random_number += @p min_time
kill @e[type=minecraft:area_effect_cloud,tag=random_uuid]