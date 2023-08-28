import mods.futuremc.SmithingTable;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:ingotNickel>;
val ingot0=<thermalfoundation:material:133>;
val block=<ore:blockNickel>;
val block0=<thermalfoundation:storage:5>;
val plate=<ore:plateNickel>;
val plate0=<thermalfoundation:material:325>;
val compress=<ore:compressedNickel>;
val compress0=<galaxyspace:compressed_plates:3>;
val gear0=<thermalfoundation:material:261>;
val coin=<ore:coinNickel>;
val stick=<ore:stickNickel>;
val stick0=<basemetals:nickel_rod>;
val nugget=<ore:nuggetNickel>;
val nugget0=<thermalfoundation:material:197>;
val ore=<ore:oreNickel>;
val ore0=<exnihilocreatio:item_ore_nickel:1>;
val boot=<thermalfoundation:armor.boots_nickel>;
val legging=<thermalfoundation:armor.legs_nickel>;
val chestplate=<thermalfoundation:armor.plate_nickel>;
val helmet=<thermalfoundation:armor.helmet_nickel>;
val shovel=<thermalfoundation:tool.shovel_nickel>;
val axe=<thermalfoundation:tool.axe_nickel>;
val pickaxe=<thermalfoundation:tool.pickaxe_nickel>;
val hoe=<thermalfoundation:tool.hoe_nickel>;
val sword=<thermalfoundation:tool.sword_nickel>;
val fishrod=<thermalfoundation:tool.fishing_rod_nickel>;
val bow=<thermalfoundation:tool.bow_nickel>;
val excavator=<thermalfoundation:tool.excavator_nickel>;
val hammer=<thermalfoundation:tool.hammer_nickel>;
val sickle=<thermalfoundation:tool.sickle_nickel>;
val lumberaxe=<lumberjack:nickel_lumberaxe>;
val shears=<thermalfoundation:tool.shears_nickel>;
val shield=<thermalfoundation:tool.shield_nickel>;
val shield0=<basemetals:nickel_shield>;
val shammer=<soviet:hammer>.anyDamage().transformDamage(1);
#Dict
val CompressedNickel=compress;CompressedNickel.add(compress0);
val PlateNickel=plate;PlateNickel.remove(compress0);
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
recipes.remove(shield0);
SmithingTable.addRecipe(<minecraft:shield>.anyDamage(),compress*2,shield0);
mods.extendedcrafting.TableCrafting.addShapeless(0,shield0,[<minecraft:shield>.anyDamage(),compress,compress]);
#Split
recipes.removeShaped(block0,[[ingot,ingot,ingot],[ingot,ingot,ingot],[ingot,ingot,ingot]]);
recipes.removeShaped(ingot0*9,[[block]]);
recipes.removeShaped(ingot0,[[nugget,nugget,nugget],[nugget,nugget,nugget],[nugget,nugget,nugget]]);
recipes.removeShaped(nugget0*9,[[ingot]]);
#Plate
recipes.addShapeless("nickel_plate_sh",plate0,[shammer,ingot,ingot]);
mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,4500);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("nickel_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("nickel_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("nickel_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
#Gear
recipes.remove(gear0);
recipes.addShaped("nickel_gear_e",gear0,[
[nugget,ingot,nugget],
[ingot,shammer,ingot],
[nugget,ingot,nugget]]);
recipes.addShaped("nickel_gear",gear0,[
[null,ingot,null],
[ingot,<immersiveengineering:tool>,ingot],
[null,ingot,null]]);
#Ore
recipes.addShapeless("nickel_dust_sh",<thermalfoundation:material:69>,[shammer,ore]);
furnace.remove(ingot0,ore);
mods.futuremc.BlastFurnace.addRecipe(ore,ingot0);
mods.thermalexpansion.RedstoneFurnace.addRecipe(ingot0,ore0,2000);
mods.mekanism.smelter.addRecipe(ore,ingot0);
#Repair
recipes.addShapeless("nickel_boot_repair",boot,[boot.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_legging_repair",legging,[legging.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_chestplate_repair",chestplate,[chestplate.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_helmet_repair",helmet,[helmet.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_shovel_repair",shovel,[shovel.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_axe_repair",axe,[axe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_pickaxe_repair",pickaxe,[pickaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_sword_repair",sword,[sword.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_hoe_repair",hoe,[hoe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_fishrod_repair",fishrod,[fishrod.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_bow_repair",bow,[bow.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_excavator_repair",excavator,[excavator.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_hammer_repair",hammer,[hammer.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_sickle_repair",sickle,[sickle.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_lumberaxe_repair",lumberaxe,[lumberaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_shield_repair",shield,[shield.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("nickel_shield0_repair",shield0,[shield0.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);