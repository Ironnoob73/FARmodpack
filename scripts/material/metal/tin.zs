#reloadable
import mods.futuremc.SmithingTable;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:ingotTin>;
val ingot0=<thermalfoundation:material:129>;
val block=<ore:blockTin>;
val block0=<thermalfoundation:storage:1>;
val plate=<ore:plateTin>;
val plate0=<thermalfoundation:material:321>;
val compress=<ore:compressedTin>;
val compress0=<jaopca:dense_plate.tin>;
val gear0=<thermalfoundation:material:257>;
val coin=<ore:coinTin>;
val stick=<ore:stickTin>;
val stick0=<basemetals:tin_rod>;
val nugget=<ore:nuggetTin>;
val nugget0=<thermalfoundation:material:193>;
val ore=<ore:oreTin>;
val ore0=<exnihilocreatio:item_ore_tin:1>;
val boot=<thermalfoundation:armor.boots_tin>;
val legging=<thermalfoundation:armor.legs_tin>;
val chestplate=<thermalfoundation:armor.plate_tin>;
val helmet=<thermalfoundation:armor.helmet_tin>;
val shovel=<thermalfoundation:tool.shovel_tin>;
val axe=<thermalfoundation:tool.axe_tin>;
val pickaxe=<thermalfoundation:tool.pickaxe_tin>;
val hoe=<thermalfoundation:tool.hoe_tin>;
val sword=<thermalfoundation:tool.sword_tin>;
val fishrod=<thermalfoundation:tool.fishing_rod_tin>;
val bow=<thermalfoundation:tool.bow_tin>;
val excavator=<thermalfoundation:tool.excavator_tin>;
val hammer=<thermalfoundation:tool.hammer_tin>;
val sickle=<thermalfoundation:tool.sickle_tin>;
val lumberaxe=<lumberjack:tin_lumberaxe>;
val shears=<thermalfoundation:tool.shears_tin>;
val shield=<thermalfoundation:tool.shield_tin>;
val shield0=<basemetals:tin_shield>;
val shammer=<soviet:hammer>.anyDamage().transformDamage(1);
#Dict
val CompressedTin=compress;CompressedTin.add(compress0);
val PlateTin=plate;PlateTin.remove(<galacticraftcore:basic_item:7>);
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
recipes.addShapeless("tin_plate_sh",plate0,[<soviet:hammer>.anyDamage().transformDamage(1),ingot,ingot]);
mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,4500);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("tin_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("tin_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("tin_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
#Gear
recipes.remove(gear0);
recipes.addShaped("tin_gear_e",gear0,[
[nugget,ingot,nugget],
[ingot,<soviet:hammer>.anyDamage().transformDamage(1),ingot],
[nugget,ingot,nugget]]);
recipes.addShaped("tin_gear",gear0,[
[null,ingot,null],
[ingot,<immersiveengineering:tool>,ingot],
[null,ingot,null]]);
#Ore
recipes.addShapeless("tin_dust_sh",<thermalfoundation:material:65>,[shammer,ore]);
furnace.remove(ingot0,ore);
mods.futuremc.BlastFurnace.addRecipe(ore,ingot0);
mods.thermalexpansion.RedstoneFurnace.addRecipe(ingot0,ore0,2000);
mods.mekanism.smelter.addRecipe(ore,ingot0);
#Repair
recipes.addShapeless("tin_boot_repair",boot,[boot.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_legging_repair",legging,[legging.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_chestplate_repair",chestplate,[chestplate.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_helmet_repair",helmet,[helmet.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_shovel_repair",shovel,[shovel.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_axe_repair",axe,[axe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_pickaxe_repair",pickaxe,[pickaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_sword_repair",sword,[sword.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_hoe_repair",hoe,[hoe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_fishrod_repair",fishrod,[fishrod.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_bow_repair",bow,[bow.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_excavator_repair",excavator,[excavator.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_hammer_repair",hammer,[hammer.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_sickle_repair",sickle,[sickle.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_lumberaxe_repair",lumberaxe,[lumberaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_shield_repair",shield,[shield.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);
recipes.addShapeless("tin_shield0_repair",shield0,[shield0.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 15));},null);