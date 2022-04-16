val shammer=<soviet:hammer>.anyDamage().transformDamage(1);
#Smooth slab
recipes.removeShaped(<minecraft:stone_slab>*6,[[<ore:stone>,<ore:stone>,<ore:stone>]]);
#Andesite
game.setLocalization("item.andesite_rock","安山岩碎块");
#   Rock
recipes.addShapeless("andesite_rock",<soviet:andesite_rock>,[shammer,<ore:stoneAndesite>]);
mods.mekanism.enrichment.addRecipe(<ore:stoneAndesite>,<soviet:andesite_rock>*2);
mods.actuallyadditions.Crusher.addRecipe(<ore:stoneAndesite>,<soviet:andesite_rock>,<soviet:andesite_rock>,50);
mods.immersiveengineering.Crusher.addRecipe(<soviet:andesite_rock>,<ore:stoneAndesite>,4000,<ore:stoneAndesite>,0.75);
#   Brick
mods.futuremc.BlastFurnace.addRecipe(<soviet:andesite_rock>,<soviet:white_brick>);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<soviet:white_brick>,<soviet:andesite_rock>,2000);
mods.mekanism.smelter.addRecipe(<soviet:andesite_rock>,<soviet:white_brick>);