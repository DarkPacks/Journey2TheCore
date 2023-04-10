#Sets the stats for the WitherStorm entity as a fallback before the player
#enters the End dimension
witherstormmod consumedEntities set @e[type=witherstormmod:wither_storm,limit=1] 100000
witherstormmod phase set @e[type=witherstormmod:wither_storm,limit=1] 4
execute in minecraft:the_end run tp @e[type=witherstormmod:wither_storm,limit=1] 10000 175 0
schedule function j2tc_tweaks:witherstorm_pause 120s replace
