import mods.integrateddynamics.Squeezer;
import mods.integrateddynamics.MechanicalSqueezer;
val shammer=<soviet:hammer>.anyDamage().transformDamage(1);
#Smooth slab
recipes.removeShaped(<minecraft:stone_slab>*6,[[<ore:stone>,<ore:stone>,<ore:stone>]]);
#Andesite
game.setLocalization("item.andesite_rock.name","安山岩碎块");
#   Rock
recipes.addShapeless("andesite_rock",<soviet:andesite_rock>,[shammer,<ore:stoneAndesite>]);
mods.mekanism.enrichment.addRecipe(<ore:stoneAndesite>,<soviet:andesite_rock>*2);
mods.actuallyadditions.Crusher.addRecipe(<minecraft:stone:5>,<soviet:andesite_rock>,<soviet:andesite_rock>,50);
mods.immersiveengineering.Crusher.addRecipe(<soviet:andesite_rock>,<ore:stoneAndesite>,4000,<soviet:andesite_rock>,0.75);
mods.thermalexpansion.Pulverizer.addRecipe(<soviet:andesite_rock>,<minecraft:stone:5>,5400,<soviet:andesite_rock>,25);
Squeezer.addRecipe(<minecraft:stone:5>,<soviet:andesite_rock>,1,<soviet:andesite_rock>,0.1,null);
MechanicalSqueezer.addRecipe(<minecraft:stone:5>,<soviet:andesite_rock>,1,<soviet:andesite_rock>,0.6,<liquid:water>*0,20);
#   Brick
mods.futuremc.BlastFurnace.addRecipe(<soviet:andesite_rock>,<soviet:white_brick>);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<soviet:white_brick>,<soviet:andesite_rock>,2000);
mods.mekanism.smelter.addRecipe(<soviet:andesite_rock>,<soviet:white_brick>);
#Crafting table
recipes.remove(<cyclicmagic:block_workbench>);
recipes.addShapeless(<cyclicmagic:block_workbench>,[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]);