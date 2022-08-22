import mods.futuremc.SmithingTable;
import moretweaker.galacticraft.Compressor;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:ingotGold>;
val ingot0=<minecraft:gold_ingot>;
val block=<ore:blockGold>;
val block0=<minecraft:gold_block>;
val plate=<ore:plateGold>;
val plate0=<thermalfoundation:material:33>;
val compress=<ore:compressedGold>;
val compress0=<jaopca:item_platedensegold>;
val gear0=<thermalfoundation:material:25>;
val stick=<ore:stickGold>;
val stick0=<basemetals:gold_rod>;
val nugget=<ore:nuggetGold>;
val nugget0=<minecraft:gold_nugget>;
val ore=<ore:oreGold>;
val ore0=<exnihilocreatio:item_ore_gold:1>;
val boot=<minecraft:golden_boots>;
val legging=<minecraft:golden_leggings>;
val chestplate=<minecraft:golden_chestplate>;
val helmet=<minecraft:golden_helmet>;
val shovel=<minecraft:golden_shovel>;
val axe=<minecraft:golden_axe>;
val pickaxe=<minecraft:golden_pickaxe>;
val hoe=<minecraft:golden_hoe>;
val sword=<minecraft:golden_sword>;
val fishrod=<thermalfoundation:tool.fishing_rod_gold>;
val bow=<thermalfoundation:tool.bow_gold>;
val excavator=<thermalfoundation:tool.excavator_gold>;
val hammer=<thermalfoundation:tool.hammer_gold>;
val sickle=<thermalfoundation:tool.sickle_gold>;
val lumberaxe=<lumberjack:gold_lumberaxe>;
val crook=<exnihilocreatio:crook_gold>;
val sickle0=<extrautils2:sickle_gold>;
val shears=<minecraft:shears>;
val shield=<thermalfoundation:tool.shield_gold>;
val shield0=<basemetals:gold_shield>;
val shammer=<soviet:hammer>.anyDamage().transformDamage(1);
#Dict
val Compressedgold=compress;Compressedgold.add(compress0);
val PlateGold=plate;PlateGold.add(<zollerngalaxy:compressedgold>);
#Tool
recipes.remove(boot);
recipes.addShaped(boot,[[plate,null,plate], [ingot,null,ingot]]);
recipes.remove(legging);
recipes.addShaped(legging,[[plate,plate,plate],[plate,null,plate],[plate,null,plate]]);
recipes.remove(chestplate);
recipes.addShaped(chestplate,[[plate,null,plate],[plate,plate,plate],[plate,plate,plate]]);
recipes.removeShaped(helmet);
recipes.addShaped(helmet,[[ingot,plate,ingot],[plate,null,plate]]);
recipes.removeShaped(shovel);
recipes.addShaped(shovel,[[plate],[SW],[SW]]);
recipes.removeShaped(axe);
recipes.addShapedMirrored(axe,[[plate,ingot],[plate,SW],[null,SW]]);
recipes.removeShaped(pickaxe);
recipes.addShaped(pickaxe,[[plate,ingot,plate],[null,SW,null],[null,SW,null]]);
recipes.removeShaped(hoe);
recipes.addShapedMirrored(hoe,[[plate,ingot],[null,SW],[null,SW]]);
recipes.removeShaped(sword);
recipes.addShaped(sword,[[plate],[plate],[SW]]);
recipes.removeShaped(fishrod);
recipes.addShapedMirrored(fishrod,[[null,null,stick],[null,stick,ST],[stick,null,ST]]);
recipes.removeShaped(bow);
recipes.addShapedMirrored(bow,[[null,stick,ST],[stick,null,ST],[null,stick,ST]]);
recipes.removeShaped(excavator);
//recipes.addShaped(excavator,[[null,plate,null],[plate,STW,plate],[null,STW,null]]);
mods.extendedcrafting.TableCrafting.addShaped(0,excavator,[[null,plate,null],[plate,STW,plate],[null,STW,null]]);
recipes.removeShaped(hammer);
//recipes.addShaped(hammer,[[plate,ingot,plate],[plate,STW,plate],[null,STW,null]]);
mods.extendedcrafting.TableCrafting.addShaped(0,hammer,[[plate,ingot,plate],[plate,STW,plate],[null,STW,null]]);
recipes.removeShaped(sickle);
//recipes.addShaped(sickle,[[stick,stick,stick],[null,null,stick],[STW,stick,stick]]);
mods.extendedcrafting.TableCrafting.addShaped(0,sickle,[[stick,stick,stick],[null,null,stick],[STW,stick,stick]]);
recipes.removeShaped(lumberaxe);
//recipes.addShaped(lumberaxe,[[plate,ingot,ingot],[plate,STW,null],[null,STW,null]]);
mods.extendedcrafting.TableCrafting.addShaped(0,lumberaxe,[[plate,ingot,ingot],[plate,STW,null],[null,STW,null]]);
recipes.removeShaped(crook);
//recipes.addShaped(crook,[[stick,stick,null],[null,stick,null],[null,stick,null]]);
mods.extendedcrafting.TableCrafting.addShaped(0,crook,[[stick,stick,null],[null,stick,null],[null,stick,null]]);
recipes.removeShaped(sickle0);
mods.extendedcrafting.TableCrafting.addShapeless(0,sickle0,[ingot,ingot,ingot,crook,STW]);
recipes.removeShaped(shears);
recipes.addShapeless(shears,[plate,plate,SW]);
recipes.remove(shield);
SmithingTable.addRecipe(<minecraft:shield>.anyDamage(),plate*4,shield);
mods.extendedcrafting.TableCrafting.addShapeless(0,shield,[<minecraft:shield>.anyDamage(),plate,plate,plate,plate]);
recipes.remove(shield0);
SmithingTable.addRecipe(<minecraft:shield>.anyDamage(),compress*2,shield0);
mods.extendedcrafting.TableCrafting.addShapeless(0,shield0,[<minecraft:shield>.anyDamage(),compress,compress]);
#Split
recipes.removeShaped(block0,[[ingot,ingot,ingot],[ingot,ingot,ingot],[ingot,ingot,ingot]]);
recipes.removeShaped(ingot0*9,[[block]]);
recipes.removeShaped(ingot0,[[nugget,nugget,nugget],[nugget,nugget,nugget],[nugget,nugget,nugget]]);
recipes.removeShaped(nugget0*9,[[ingot]]);
#Plate
//recipes.removeShaped(plate0*3,[[ingot,ingot,ingot]]);
recipes.addShapeless("gold_plate_sh",plate0,[shammer,ingot,ingot]);
mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,4500);
mods.GalacticraftTweaker.removeCompressorRecipe(<zollerngalaxy:compressedgold>*2);
//Compressor.remove(<zollerngalaxy:compressedgold>*2);
//mods.GalacticraftTweaker.addCompressorShapelessRecipe(<zollerngalaxy:compressedgold>,ingot0,ingot0);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("gold_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("gold_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("gold_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
#Gear
recipes.remove(gear0);
recipes.addShaped("gold_gear_e",gear0,[
[nugget,ingot,nugget],
[ingot,shammer,ingot],
[nugget,ingot,nugget]]);
recipes.addShaped("gold_gear",gear0,[
[null,ingot,null],
[ingot,<immersiveengineering:tool>,ingot],
[null,ingot,null]]);
#Ore
recipes.addShapeless("gold_dust_sh",<actuallyadditions:item_dust:1>,[shammer,ore]);
furnace.remove(ingot0,ore);
mods.futuremc.BlastFurnace.addRecipe(ore,ingot0);
mods.thermalexpansion.RedstoneFurnace.addRecipe(ingot0,ore0,2000);
mods.mekanism.smelter.addRecipe(ore,ingot0);