import mods.futuremc.SmithingTable;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:ingotConstantan>;
val ingot0=<thermalfoundation:material:164>;
val block=<ore:blockConstantan>;
val block0=<thermalfoundation:storage:4>;
val plate=<ore:plateConstantan>;
val plate0=<thermalfoundation:material:356>;
val compress=<ore:compressedConstantan>;
//val compress0=<jaopca:dense_plate.constantan>;
val gear0=<thermalfoundation:material:292>;
val stick=<ore:stickConstantan>;
val nugget=<ore:nuggetConstantan>;
val nugget0=<thermalfoundation:material:228>;
val boot=<thermalfoundation:armor.boots_constantan>;
val legging=<thermalfoundation:armor.legs_constantan>;
val chestplate=<thermalfoundation:armor.plate_constantan>;
val helmet=<thermalfoundation:armor.helmet_constantan>;
val shovel=<thermalfoundation:tool.shovel_constantan>;
val axe=<thermalfoundation:tool.axe_constantan>;
val pickaxe=<thermalfoundation:tool.pickaxe_constantan>;
val hoe=<thermalfoundation:tool.hoe_constantan>;
val sword=<thermalfoundation:tool.sword_constantan>;
val fishrod=<thermalfoundation:tool.fishing_rod_constantan>;
val bow=<thermalfoundation:tool.bow_constantan>;
val excavator=<thermalfoundation:tool.excavator_constantan>;
val hammer=<thermalfoundation:tool.hammer_constantan>;
val sickle=<thermalfoundation:tool.sickle_constantan>;
val lumberaxe=<lumberjack:constantan_lumberaxe>;
val shears=<thermalfoundation:tool.shears_constantan>;
val shield=<thermalfoundation:tool.shield_constantan>;
//val shield0=<basemetals:constantan_shield>;
#Dict
//val CompressedConstantan=compress;CompressedConstantan.add(compress0);
//val RodConstantan=stick;RodConstantan.add(<contenttweaker:rod_constantan>);
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
//recipes.remove(shield0);
//SmithingTable.addRecipe(<minecraft:shield>.anyDamage(),compress*2,shield0);
//mods.extendedcrafting.TableCrafting.addShapeless(0,shield0,[<minecraft:shield>.anyDamage(),compress,compress]);
#Split
recipes.removeShaped(block0,[[ingot,ingot,ingot],[ingot,ingot,ingot],[ingot,ingot,ingot]]);
recipes.removeShaped(ingot0*9,[[block]]);
recipes.removeShaped(ingot0,[[nugget,nugget,nugget],[nugget,nugget,nugget],[nugget,nugget,nugget]]);
recipes.removeShaped(nugget0*9,[[ingot]]);
#Plate
//recipes.removeShaped(plate0*3,[[ingot,ingot,ingot]]);
recipes.addShapeless("constantan_plate_sh",plate0,[<soviet:hammer>.anyDamage().transformDamage(1),ingot,ingot]);
//mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,1500);
#Stick
//recipes.removeShaped(stick*4,[[ingot],[ingot]]);
#Gear
recipes.remove(gear0);
recipes.addShaped("constantan_gear_e",gear0,[
[nugget,ingot,nugget],
[ingot,<soviet:hammer>.anyDamage().transformDamage(1),ingot],
[nugget,ingot,nugget]]);
recipes.addShaped("constantan_gear",gear0,[
[null,ingot,null],
[ingot,<immersiveengineering:tool>,ingot],
[null,ingot,null]]);