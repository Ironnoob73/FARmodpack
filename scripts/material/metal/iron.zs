#reloadable
import mods.futuremc.SmithingTable;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:ingotIron>;
val ingot0=<minecraft:iron_ingot>;
val block=<ore:blockIron>;
val block0=<minecraft:iron_block>;
val plate=<ore:plateIron>;
val plate0=<thermalfoundation:material:32>;
val compress=<ore:compressedIron>;
val compress0=<jaopca:dense_plate.iron>;
val gear0=<thermalfoundation:material:24>;
val coin=<ore:coinIron>;
val stick=<ore:stickIron>;
val stick0=<immersiveengineering:material:1>;
val nugget=<ore:nuggetIron>;
val nugget0=<minecraft:iron_nugget>;
val ore=<ore:oreIron>;
val ore0=<exnihilocreatio:item_ore_iron:1>;
val wire0=<contenttweaker:material_wire_iron>;
val boot=<minecraft:iron_boots>;
val legging=<minecraft:iron_leggings>;
val chestplate=<minecraft:iron_chestplate>;
val helmet=<minecraft:iron_helmet>;
val shovel=<minecraft:iron_shovel>;
val axe=<minecraft:iron_axe>;
val pickaxe=<minecraft:iron_pickaxe>;
val hoe=<minecraft:iron_hoe>;
val sword=<minecraft:iron_sword>;
val fishrod=<thermalfoundation:tool.fishing_rod_iron>;
val bow=<thermalfoundation:tool.bow_iron>;
val excavator=<thermalfoundation:tool.excavator_iron>;
val hammer=<thermalfoundation:tool.hammer_iron>;
val sickle=<thermalfoundation:tool.sickle_iron>;
val lumberaxe=<lumberjack:iron_lumberaxe>;
val crook=<exnihilocreatio:crook_iron>;
val sickle0=<extrautils2:sickle_iron>;
val shears=<minecraft:shears>;
val shield=<thermalfoundation:tool.shield_iron>;
val shield0=<basemetals:iron_shield>;
val paxel=<actuallyadditions:iron_paxel>;
val ehammer=<exnihilocreatio:hammer_iron>;
val chammer=<excompressum:compressed_hammer_iron>;
val shammer=<soviet:hammer>.anyDamage().transformDamage(1);
#Dict
val CompressedIron=compress;CompressedIron.add(compress0);
val PlateIron=plate;PlateIron.remove(<galacticraftcore:basic_item:11>);
val IronWire=<ore:wireIron>;IronWire.add(wire0);
val IronOre=ore;IronOre.add(<contenttweaker:slate_iron_ore>);
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
recipes.addShaped(crook,[[stick,stick,null],[null,stick,null],[null,stick,null]]);
//mods.extendedcrafting.TableCrafting.addShaped(0,crook,[[stick,stick,null],[null,stick,null],[null,stick,null]]);
recipes.removeShaped(chammer);
mods.extendedcrafting.TableCrafting.addShapeless(0,chammer,[ehammer,ehammer,ehammer,ehammer,ehammer,ehammer,ehammer,ehammer,ehammer]);
recipes.removeShaped(sickle0);
//mods.extendedcrafting.TableCrafting.addShapeless(0,sickle0,[ingot,ingot,ingot,crook,STW]);
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
//recipes.removeShaped(plate0*3,[[ingot,ingot,ingot]]);
recipes.addShapeless("iron_plate_sh",plate0,[shammer,ingot,ingot]);
mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,4500);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("iron_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("iron_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("iron_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
recipes.removeByRecipeName("advancedrocketry:stickiron");
recipes.removeByRecipeName("zollerngalaxy:nail");
recipes.addShapeless("nail_oc",<zollerngalaxy:nail>,[<immersiveengineering:tool:1>,stick]);
#Gear
recipes.remove(gear0);
recipes.addShaped("iron_gear_e",gear0,[
[nugget,ingot,nugget],
[ingot,shammer,ingot],
[nugget,ingot,nugget]]);
recipes.addShaped("iron_gear",gear0,[
[null,ingot,null],
[ingot,<immersiveengineering:tool>,ingot],
[null,ingot,null]]);
#Wire
recipes.addShapeless("iron_wire",wire0,[<immersiveengineering:tool:1>,plate]);
mods.immersiveengineering.MetalPress.addRecipe(wire0*2,ingot0,<immersiveengineering:mold:4>,2400);
#Chisel
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>,[[plate],[SW]]);
#Ore
recipes.addShapeless("iron_dust_sh",<actuallyadditions:item_dust>,[shammer,ore]);
furnace.remove(ingot0,ore);
mods.futuremc.BlastFurnace.addRecipe(ore,ingot0);
mods.thermalexpansion.RedstoneFurnace.addRecipe(ingot0,ore0,2000);
mods.mekanism.smelter.addRecipe(ore,ingot0);
#Repair
recipes.addShapeless("iron_boot_repair",boot,[boot.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_legging_repair",legging,[legging.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_chestplate_repair",chestplate,[chestplate.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_helmet_repair",helmet,[helmet.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_shovel_repair",shovel,[shovel.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_axe_repair",axe,[axe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_pickaxe_repair",pickaxe,[pickaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_sword_repair",sword,[sword.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_hoe_repair",hoe,[hoe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_fishrod_repair",fishrod,[fishrod.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_bow_repair",bow,[bow.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_excavator_repair",excavator,[excavator.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_hammer_repair",hammer,[hammer.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_sickle_repair",sickle,[sickle.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_lumberaxe_repair",lumberaxe,[lumberaxe.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_crook_repair",crook,[crook.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_sickle0_repair",sickle0,[sickle0.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_shears_repair",shears,[shears.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_shield_repair",shield,[shield.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_shield0_repair",shield0,[shield0.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_paxel_repair",paxel,[paxel.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_ehammer_repair",ehammer,[ehammer.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
recipes.addShapeless("iron_chammer_repair",chammer,[chammer.anyDamage().marked("mark"),coin],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));},null);
/*val ToolToRepair = [sword,axe,pickaxe,shovel]as IItemStack[];
for item in ToolToRepair{recipes.addShapeless(item,[item.anyDamage().marked("mark"),<ore:coinIron>]as IIngredient[],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 25));});}*/
#Upgrade
SmithingTable.addRecipe(axe.anyDamage(),<zollerngalaxy:metalparts>,<sevendaystomine:iron_axe>);
SmithingTable.addRecipe(shovel.anyDamage(),<zollerngalaxy:metalparts>,<sevendaystomine:iron_shovel>);
SmithingTable.addRecipe(pickaxe.anyDamage(),<zollerngalaxy:metalparts>,<sevendaystomine:iron_pickaxe>);
SmithingTable.addRecipe(hoe.anyDamage(),<zollerngalaxy:metalparts>,<sevendaystomine:iron_hoe>);