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
val compress0=<jaopca:item_platedenseiron>;
val gear0=<thermalfoundation:material:24>;
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
val shammer=<soviet:hammer>.anyDamage().transformDamage(1);
#Dict
val CompressedIron=compress;CompressedIron.add(compress0);
val PlateIron=plate;PlateIron.remove(<galacticraftcore:basic_item:11>);
val IronWire=<ore:wireIron>;IronWire.add(wire0);
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
recipes.addShapeless("iron_plate_sh",plate0,[shammer,ingot,ingot]);
mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,4500);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("iron_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("iron_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("iron_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
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
#Chisel
recipes.remove(<chisel:chisel_iron>);
recipes.addShaped(<chisel:chisel_iron>,[[plate],[SW]]);
#Ore
recipes.addShapeless("iron_dust_sh",<actuallyadditions:item_dust>,[shammer,ore]);
furnace.remove(ingot0,ore);
mods.futuremc.BlastFurnace.addRecipe(ore,ingot0);
mods.thermalexpansion.RedstoneFurnace.addRecipe(ingot0,ore0,2000);
mods.mekanism.smelter.addRecipe(ore,ingot0);