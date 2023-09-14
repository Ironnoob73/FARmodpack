#reloadable
import mods.futuremc.SmithingTable;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:ingotAluminum>;
val ingot0=<thermalfoundation:material:132>;
val block=<ore:blockAluminum>;
val block0=<thermalfoundation:storage:4>;
val plate=<ore:plateAluminum>;
val plate0=<thermalfoundation:material:324>;
val compress=<ore:compressedAluminum>;
val compress0=<jaopca:dense_plate.aluminum>;
val gear0=<thermalfoundation:material:260>;
val coin=<ore:coinAluminum>;
val stick=<ore:stickAluminum>;
val stick0=<immersiveengineering:material:3>;
val nugget=<ore:nuggetAluminum>;
val nugget0=<thermalfoundation:material:196>;
val ore=<ore:oreAluminum>;
val ore0=<exnihilocreatio:item_ore_aluminium:1>;
val boot=<thermalfoundation:armor.boots_aluminum>;
val legging=<thermalfoundation:armor.legs_aluminum>;
val chestplate=<thermalfoundation:armor.plate_aluminum>;
val helmet=<thermalfoundation:armor.helmet_aluminum>;
val shovel=<thermalfoundation:tool.shovel_aluminum>;
val axe=<thermalfoundation:tool.axe_aluminum>;
val pickaxe=<thermalfoundation:tool.pickaxe_aluminum>;
val hoe=<thermalfoundation:tool.hoe_aluminum>;
val sword=<thermalfoundation:tool.sword_aluminum>;
val fishrod=<thermalfoundation:tool.fishing_rod_aluminum>;
val bow=<thermalfoundation:tool.bow_aluminum>;
val excavator=<thermalfoundation:tool.excavator_aluminum>;
val hammer=<thermalfoundation:tool.hammer_aluminum>;
val sickle=<thermalfoundation:tool.sickle_aluminum>;
val lumberaxe=<lumberjack:aluminum_lumberaxe>;
val shears=<thermalfoundation:tool.shears_aluminum>;
val shield=<thermalfoundation:tool.shield_aluminum>;
val shammer=<soviet:hammer>.anyDamage().transformDamage(1);
#Dict
val CompressedAluminum=compress;CompressedAluminum.add(compress0);
val PlateAluminum=plate;PlateAluminum.remove(<galacticraftcore:basic_item:6>);
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
recipes.removeShaped(shears);
recipes.addShapeless(shears,[plate,plate,SW]);
recipes.remove(shield);
SmithingTable.addRecipe(<minecraft:shield>.anyDamage(),plate*4,shield);
mods.extendedcrafting.TableCrafting.addShapeless(0,shield,[<minecraft:shield>.anyDamage(),plate,plate,plate,plate]);
#Split
recipes.removeShaped(block0,[[ingot,ingot,ingot],[ingot,ingot,ingot],[ingot,ingot,ingot]]);
recipes.removeShaped(ingot0*9,[[block]]);
recipes.removeShaped(ingot0,[[nugget,nugget,nugget],[nugget,nugget,nugget],[nugget,nugget,nugget]]);
recipes.removeShaped(nugget0*9,[[ingot]]);
#Plate
recipes.addShapeless("aluminum_plate_sh",plate0,[shammer,ingot,ingot]);
mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,4500);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("aluminum_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("aluminum_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("aluminum_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
#Gear
recipes.remove(gear0);
recipes.addShaped("aluminum_gear_e",gear0,[
[nugget,ingot,nugget],
[ingot,shammer,ingot],
[nugget,ingot,nugget]]);
recipes.addShaped("aluminum_gear",gear0,[
[null,ingot,null],
[ingot,<immersiveengineering:tool>,ingot],
[null,ingot,null]]);
#Ore
recipes.addShapeless("aluminum_dust_sh",<thermalfoundation:material:68>,[shammer,ore]);
furnace.remove(ingot0,ore);
mods.futuremc.BlastFurnace.addRecipe(ore,ingot0);
mods.thermalexpansion.RedstoneFurnace.addRecipe(ingot0,ore0,2000);
mods.mekanism.smelter.addRecipe(ore,ingot0);
#Repair
recipes.addShapeless("aluminum_boot_repair",boot,[boot.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_legging_repair",legging,[legging.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_chestplate_repair",chestplate,[chestplate.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_helmet_repair",helmet,[helmet.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_shovel_repair",shovel,[shovel.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_axe_repair",axe,[axe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_pickaxe_repair",pickaxe,[pickaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_sword_repair",sword,[sword.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_hoe_repair",hoe,[hoe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_fishrod_repair",fishrod,[fishrod.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_bow_repair",bow,[bow.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_excavator_repair",excavator,[excavator.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_hammer_repair",hammer,[hammer.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_sickle_repair",sickle,[sickle.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_lumberaxe_repair",lumberaxe,[lumberaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("aluminum_shield_repair",shield,[shield.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);