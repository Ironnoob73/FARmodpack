import mods.futuremc.SmithingTable;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:ingotCopper>;
val ingot0=<thermalfoundation:material:128>;
val block=<ore:blockCopper>;
val block0=<thermalfoundation:storage>;
val plate=<ore:plateCopper>;
val plate0=<thermalfoundation:material:320>;
val compress=<ore:compressedCopper>;
val compress0=<jaopca:dense_plate.copper>;
val gear0=<thermalfoundation:material:256>;
val coin=<ore:coinCopper>;
val stick=<ore:stickCopper>;
val stick0=<basemetals:copper_rod>;
val nugget=<ore:nuggetCopper>;
val nugget0=<thermalfoundation:material:192>;
val ore=<ore:oreCopper>;
val ore0=<exnihilocreatio:item_ore_copper:1>;
val boot=<thermalfoundation:armor.boots_copper>;
val legging=<thermalfoundation:armor.legs_copper>;
val chestplate=<thermalfoundation:armor.plate_copper>;
val helmet=<thermalfoundation:armor.helmet_copper>;
val shovel=<thermalfoundation:tool.shovel_copper>;
val axe=<thermalfoundation:tool.axe_copper>;
val pickaxe=<thermalfoundation:tool.pickaxe_copper>;
val hoe=<thermalfoundation:tool.hoe_copper>;
val sword=<thermalfoundation:tool.sword_copper>;
val fishrod=<thermalfoundation:tool.fishing_rod_copper>;
val bow=<thermalfoundation:tool.bow_copper>;
val excavator=<thermalfoundation:tool.excavator_copper>;
val hammer=<thermalfoundation:tool.hammer_copper>;
val sickle=<thermalfoundation:tool.sickle_copper>;
val lumberaxe=<lumberjack:copper_lumberaxe>;
val shears=<thermalfoundation:tool.shears_copper>;
val shield=<thermalfoundation:tool.shield_copper>;
val shield0=<basemetals:copper_shield>;
val shammer=<soviet:hammer>.anyDamage().transformDamage(1);
#Dict
val CompressedCopper=compress;CompressedCopper.add(compress0);
val PlateCopper=plate;PlateCopper.remove(<galacticraftcore:basic_item:6>);
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
mods.extendedcrafting.TableCrafting.addShaped(0,excavator,[[null,plate,null],[plate,STW,plate],[null,STW,null]]);
recipes.removeShaped(hammer);
mods.extendedcrafting.TableCrafting.addShaped(0,hammer,[[plate,ingot,plate],[plate,STW,plate],[null,STW,null]]);
recipes.removeShaped(sickle);
recipes.removeShaped(lumberaxe);
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
recipes.addShapeless("copper_plate_sh",plate0,[shammer,ingot,ingot]);
mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,4500);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("copper_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("copper_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("copper_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
#Gear
recipes.remove(gear0);
recipes.addShaped("copper_gear_e",gear0,[
[nugget,ingot,nugget],
[ingot,shammer,ingot],
[nugget,ingot,nugget]]);
recipes.addShaped("copper_gear",gear0,[
[null,ingot,null],
[ingot,<immersiveengineering:tool>,ingot],
[null,ingot,null]]);
#Ore
recipes.addShapeless("copper_dust_sh",<thermalfoundation:material:64>,[shammer,ore]);
furnace.remove(ingot0,ore);
mods.futuremc.BlastFurnace.addRecipe(ore,ingot0);
mods.thermalexpansion.RedstoneFurnace.addRecipe(ingot0,ore0,2000);
mods.mekanism.smelter.addRecipe(ore,ingot0);
#Misc
recipes.removeByRecipeName("simpleores:copper_bucket");
recipes.addShaped("wooden_bucket",<simpleores:copper_bucket>,[
[<ore:plankWood>,null,<ore:plankWood>],
[null,<ore:plankWood>,null]]);
furnace.remove(<simpleores:copper_ingot>,<simpleores:copper_bucket>);
furnace.setFuel(<simpleores:copper_bucket>,900);
#Repair
recipes.addShapeless("copper_boot_repair",boot,[boot.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_legging_repair",legging,[legging.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_chestplate_repair",chestplate,[chestplate.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_helmet_repair",helmet,[helmet.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_shovel_repair",shovel,[shovel.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_axe_repair",axe,[axe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_pickaxe_repair",pickaxe,[pickaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_sword_repair",sword,[sword.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_hoe_repair",hoe,[hoe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_fishrod_repair",fishrod,[fishrod.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_bow_repair",bow,[bow.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_excavator_repair",excavator,[excavator.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_hammer_repair",hammer,[hammer.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_sickle_repair",sickle,[sickle.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_lumberaxe_repair",lumberaxe,[lumberaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_shield_repair",shield,[shield.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);
recipes.addShapeless("copper_shield0_repair",shield0,[shield0.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 20));},null);