#reloadable
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
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

recipes.removeByRecipeName("ftgumod:research_table");
recipes.addShaped("research_table",<ftgumod:research_table>,[
[<sevendaystomine:woodplank>,<ftgumod:parchment_empty>,<sevendaystomine:woodplank>],
[<ore:gearStone>,<minecraft:stone:*>,<ore:gearStone>]]);

recipes.addShaped("furnace",<minecraft:furnace>,[
[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
[<ore:cobblestone>,null,<ore:cobblestone>],
[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]]);
recipes.addShapeless("chunk_mixed_bronze",<jaopca:magneticraft_rocky_chunk.bronze>*2,[<magneticraft:rocky_chunks:2>,<magneticraft:rocky_chunks:2>,<magneticraft:rocky_chunks:2>,<magneticraft:rocky_chunks:13>]);

furnace.remove(<futuremc:smooth_stone>,<minecraft:stone>);
furnace.addRecipe(<minecraft:stone_slab>,<minecraft:stone>);