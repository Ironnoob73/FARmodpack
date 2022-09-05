import mods.futuremc.SmithingTable;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:ingotSteel>;
val ingot0=<thermalfoundation:material:160>;
val block=<ore:blockSteel>;
val block0=<thermalfoundation:storage_alloy>;
val plate=<ore:plateSteel>;
val plate0=<thermalfoundation:material:352>;
val compress=<ore:compressedSteel>;
val compress0=<jaopca:item_platedensesteel>;
val gear0=<thermalfoundation:material:288>;
val stick=<ore:stickSteel>;
val stick0=<immersiveengineering:material:2>;
val nugget=<ore:nuggetSteel>;
val nugget0=<thermalfoundation:material:224>;
val boot=<thermalfoundation:armor.boots_steel>;
val legging=<thermalfoundation:armor.legs_steel>;
val chestplate=<thermalfoundation:armor.plate_steel>;
val helmet=<thermalfoundation:armor.helmet_steel>;
val shovel=<thermalfoundation:tool.shovel_steel>;
val axe=<thermalfoundation:tool.axe_steel>;
val pickaxe=<thermalfoundation:tool.pickaxe_steel>;
val hoe=<thermalfoundation:tool.hoe_steel>;
val sword=<thermalfoundation:tool.sword_steel>;
val fishrod=<thermalfoundation:tool.fishing_rod_steel>;
val bow=<thermalfoundation:tool.bow_steel>;
val excavator=<thermalfoundation:tool.excavator_steel>;
val hammer=<thermalfoundation:tool.hammer_steel>;
val sickle=<thermalfoundation:tool.sickle_steel>;
val lumberaxe=<lumberjack:steel_lumberaxe>;
val shears=<thermalfoundation:tool.shears_steel>;
val shield=<thermalfoundation:tool.shield_steel>;
val shield0=<basemetals:steel_shield>;
#Dict
val CompressedSteel=compress;CompressedSteel.add(compress0);
val StickSteel=stick;StickSteel.add(<galacticraftcore:steel_pole>);
val PlateSteel=plate;PlateSteel.remove(<galacticraftcore:basic_item:9>);
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
recipes.addShapeless("steel_plate_sh",plate0,[<soviet:hammer>.anyDamage().transformDamage(1),ingot,ingot]);
mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,4500);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("steel_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("steel_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("steel_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
#Gear
recipes.remove(gear0);
recipes.addShaped("steel_gear_e",gear0,[
[nugget,ingot,nugget],
[ingot,<soviet:hammer>.anyDamage().transformDamage(1),ingot],
[nugget,ingot,nugget]]);
recipes.addShaped("steel_gear",gear0,[
[null,ingot,null],
[ingot,<immersiveengineering:tool>,ingot],
[null,ingot,null]]);
//Special
recipes.remove(<galacticraftcore:steel_pole>);
mods.immersiveengineering.MetalPress.addRecipe(<galacticraftcore:steel_pole>,compress,<immersiveengineering:mold:2>,4800);
//  Sword
recipes.remove(<mekanismtools:steelsword>);
mods.recipestages.Recipes.setRecipeStage("galactic_i",<mekanismtools:steelsword>);
mods.extendedcrafting.TableCrafting.addShaped(3,<mekanismtools:steelsword>,[[compress],[compress],[<galacticraftcore:steel_pole>]]);
recipes.remove(<galacticraftcore:steel_sword>);
mods.recipestages.Recipes.setRecipeStage("mekanism",<galacticraftcore:steel_sword>);
mods.extendedcrafting.TableCrafting.addShaped(2,<galacticraftcore:steel_sword>,[[ingot],[ingot],[<ore:ingotIron>]]);
recipes.remove(<immersiveengineering:sword_steel>);
mods.recipestages.Recipes.setRecipeStage("immersive_engineer",<immersiveengineering:sword_steel>);
mods.extendedcrafting.TableCrafting.addShaped(1,<immersiveengineering:sword_steel>,[[plate],[plate],[<ore:stickTreatedWood>]]);
recipes.remove(<basemetals:steel_sword>);
#Dust
recipes.addShapeless("steel_blend_dust",<basemetals:steel_blend>*2,[<ore:dustIron>,<ore:dustIron>,<ore:dustIron>,<ore:dustIron>,<ore:dustIron>,<ore:dustCoal>,<ore:dustCoal>,<ore:dustCoal>,<ore:dustCoal>]);
furnace.remove(ingot0,<ore:dustSteel>);
mods.futuremc.BlastFurnace.addRecipe(<basemetals:steel_blend>,ingot0);