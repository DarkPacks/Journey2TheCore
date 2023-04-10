#Summons the Witherstorm at 10008 175 0, sets the max chunks to 576, sets phase to 4
#forge generate 10000 0 0 9 minecraft:the_end
execute in minecraft:the_end run forceload add 9983 0
execute in minecraft:the_end run forceload add 10000 0
execute in minecraft:the_end run forceload add 10008 0

#execute in minecraft:the_end run summon witherstormmod:wither_storm 10008 209 0 {UUID:[I;2083982370,-1409201591,-1670005107,-392374202], UltimateTargetChunkPos: {x: 625, z: 0},AlternativeUltimateTarget: {X: 10000.0d, Y: 175.0d, Z: 0d}}
execute in minecraft:the_end run summon witherstormmod:wither_storm 10008 209 0 {UUID:[I;2083982370,-1409201591,-1670005107,-392374202], Phase: 4, ConsumedEntities: 2080}
#witherstormmod config server set chunksToLoad 576
#witherstormmod phase set @e[type=witherstormmod:wither_storm,limit=1] 4
