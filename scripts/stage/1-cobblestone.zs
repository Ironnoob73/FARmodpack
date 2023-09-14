#reloadable
val copperChunkCrush = LootTweaker.newTable("tetra:copper_chunk_crush");
    val copperChunkCrushPool = copperChunkCrush.addPool("copper_chunk_crush", 1, 1, 0, 0);
        copperChunkCrushPool.addItemEntry(<magneticraft:rocky_chunks:2>,1,0,[
            {"function": "minecraft:set_count","count":{"max":1,"min":1}},
            {"function": "tetra:fortune_enchant","count": {"min": 0,"max": 0.3},"requiredCapability": "hammer","capabilityLevel": 1}],
            []);
val tinChunkCrush = LootTweaker.newTable("tetra:tin_chunk_crush");
    val tinChunkCrushPool = tinChunkCrush.addPool("tin_chunk_crush", 1, 1, 0, 0);
        tinChunkCrushPool.addItemEntry(<magneticraft:rocky_chunks:13>,1,0,[
            {"function": "minecraft:set_count","count":{"max":1,"min":1}},
            {"function": "tetra:fortune_enchant","count": {"min": 0,"max": 0.3},"requiredCapability": "hammer","capabilityLevel": 1}],
            []);