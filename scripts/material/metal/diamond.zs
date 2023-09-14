#reloadable
import mods.futuremc.SmithingTable;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:gemDiamond>;
val ingot0=<minecraft:diamond>;
val block=<ore:blockDiamond>;
val block0=<minecraft:diamond_block>;
val plate=<ore:plateDiamond>;
val plate0=<jaopca:plate.diamond>;
val compress=<ore:compressedDiamond>;
val compress0=<jaopca:dense_plate.diamond>;
val gear0=<thermalfoundation:material:26>;
val coin=<ore:coinDiamond>;
val stick=<ore:stickDiamond>;
val stick0=<basemetals:diamond_rod>;
val nugget=<ore:nuggetDiamond>;
val nugget0=<extendedcrafting:material:128>;
val chip0=<opencomputers:material:29>;
val boot=<minecraft:diamond_boots>;
val legging=<minecraft:diamond_leggings>;
val chestplate=<minecraft:diamond_chestplate>;
val helmet=<minecraft:diamond_helmet>;
val shovel=<minecraft:diamond_shovel>;
val axe=<minecraft:diamond_axe>;
val pickaxe=<minecraft:diamond_pickaxe>;
val hoe=<minecraft:diamond_hoe>;
val sword=<minecraft:diamond_sword>;
val fishrod=<thermalfoundation:tool.fishing_rod_diamond>;
val bow=<thermalfoundation:tool.bow_diamond>;
val excavator=<thermalfoundation:tool.excavator_diamond>;
val hammer=<thermalfoundation:tool.hammer_diamond>;
val sickle=<thermalfoundation:tool.sickle_diamond>;
val lumberaxe=<lumberjack:diamond_lumberaxe>;
val crook=<exnihilocreatio:crook_diamond>;
val sickle0=<extrautils2:sickle_diamond>;
val shears=<thermalfoundation:tool.shears_diamond>;
val shield=<thermalfoundation:tool.shield_diamond>;
val shield0=<basemetals:diamond_shield>;
val paxel=<actuallyadditions:diamond_paxel>;
val ehammer=<exnihilocreatio:hammer_diamond>;
val chammer=<excompressum:compressed_hammer_diamond>;
#Dict
val CompressedDiamond=compress;CompressedDiamond.add(compress0);CompressedDiamond.add(<zollerngalaxy:compresseddiamond>);
val DiamondOre=<ore:oreDiamond>;DiamondOre.add(<contenttweaker:slate_diamond_ore>);
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
mods.extendedcrafting.TableCrafting.addShaped(0,sickle,[[stick,stick,stick],[null,null,stick],[STW,stick,stick]]);
recipes.removeShaped(lumberaxe);
mods.extendedcrafting.TableCrafting.addShaped(0,lumberaxe,[[plate,ingot,ingot],[plate,STW,null],[null,STW,null]]);
recipes.removeShaped(crook);
recipes.addShaped(crook,[[stick,stick,null],[null,stick,null],[null,stick,null]]);
recipes.removeShaped(chammer);
mods.extendedcrafting.TableCrafting.addShapeless(0,chammer,[ehammer,ehammer,ehammer,ehammer,ehammer,ehammer,ehammer,ehammer,ehammer]);
recipes.removeShaped(sickle0);
SmithingTable.addRecipe(sickle,<modularrouters:augment:2>,sickle0);
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
mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,4500);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("diamond_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("diamond_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("diamond_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
#Gear
recipes.remove(gear0);
recipes.addShaped("diamond_gear_e",gear0,[
[nugget,ingot,nugget],
[ingot,<soviet:hammer>.anyDamage().transformDamage(1),ingot],
[nugget,ingot,nugget]]);
recipes.addShaped("diamond_gear",gear0,[
[null,ingot,null],
[ingot,<immersiveengineering:tool>,ingot],
[null,ingot,null]]);
#Chisel
recipes.remove(<chisel:chisel_diamond>);
recipes.addShaped(<chisel:chisel_diamond>,[[plate],[SW]]);
#Chip
recipes.addShapeless("diamond_chip_et",chip0*6,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("diamond_chip_rs",chip0*6,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
#Repair
recipes.addShapeless("diamond_boot_repair",boot,[boot.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_legging_repair",legging,[legging.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_chestplate_repair",chestplate,[chestplate.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_helmet_repair",helmet,[helmet.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_shovel_repair",shovel,[shovel.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_axe_repair",axe,[axe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_pickaxe_repair",pickaxe,[pickaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_sword_repair",sword,[sword.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_hoe_repair",hoe,[hoe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_fishrod_repair",fishrod,[fishrod.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_bow_repair",bow,[bow.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_excavator_repair",excavator,[excavator.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_hammer_repair",hammer,[hammer.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_sickle_repair",sickle,[sickle.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_lumberaxe_repair",lumberaxe,[lumberaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_crook_repair",crook,[crook.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_sickle0_repair",sickle0,[sickle0.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_shears_repair",shears,[shears.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_shield_repair",shield,[shield.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_shield0_repair",shield0,[shield0.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_paxel_repair",paxel,[paxel.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_ehammer_repair",ehammer,[ehammer.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);
recipes.addShapeless("diamond_chammer_repair",chammer,[chammer.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 170));},null);