import mods.futuremc.SmithingTable;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:ingotBronze>;
val ingot0=<thermalfoundation:material:163>;
val block=<ore:blockBronze>;
val block0=<thermalfoundation:storage:3>;
val plate=<ore:plateBronze>;
val plate0=<thermalfoundation:material:355>;
val compress=<ore:compressedBronze>;
val compress0=<jaopca:dense_plate.bronze>;
val gear0=<thermalfoundation:material:291>;
val stick=<ore:stickBronze>;
val stick0=<basemetals:bronze_rod>;
val nugget=<ore:nuggetBronze>;
val nugget0=<thermalfoundation:material:227>;
val boot=<thermalfoundation:armor.boots_bronze>;
val legging=<thermalfoundation:armor.legs_bronze>;
val chestplate=<thermalfoundation:armor.plate_bronze>;
val helmet=<thermalfoundation:armor.helmet_bronze>;
val shovel=<thermalfoundation:tool.shovel_bronze>;
val axe=<thermalfoundation:tool.axe_bronze>;
val pickaxe=<thermalfoundation:tool.pickaxe_bronze>;
val hoe=<thermalfoundation:tool.hoe_bronze>;
val sword=<thermalfoundation:tool.sword_bronze>;
val fishrod=<thermalfoundation:tool.fishing_rod_bronze>;
val bow=<thermalfoundation:tool.bow_bronze>;
val excavator=<thermalfoundation:tool.excavator_bronze>;
val hammer=<thermalfoundation:tool.hammer_bronze>;
val sickle=<thermalfoundation:tool.sickle_bronze>;
val lumberaxe=<lumberjack:bronze_lumberaxe>;
val shears=<thermalfoundation:tool.shears_bronze>;
val shield=<thermalfoundation:tool.shield_bronze>;
val shield0=<basemetals:bronze_shield>;
#Dict
val CompressedBronze=compress;CompressedBronze.add(compress0);
val PlateBronze=plate;PlateBronze.remove(<galacticraftcore:basic_item:10>);
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
recipes.addShapeless("bronze_plate_sh",plate0,[<soviet:hammer>.anyDamage().transformDamage(1),ingot,ingot]);
mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,4500);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("bronze_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("bronze_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("bronze_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
#Gear
recipes.remove(gear0);
recipes.addShaped("bronze_gear_e",gear0,[
[nugget,ingot,nugget],
[ingot,<soviet:hammer>.anyDamage().transformDamage(1),ingot],
[nugget,ingot,nugget]]);
recipes.addShaped("bronze_gear",gear0,[
[null,ingot,null],
[ingot,<immersiveengineering:tool>,ingot],
[null,ingot,null]]);