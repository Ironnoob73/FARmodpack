import mods.futuremc.SmithingTable;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:gemEmerald>;
val ingot0=<minecraft:emerald>;
val block=<ore:blockEmerald>;
val block0=<minecraft:emerald_block>;
val plate=<ore:plateEmerald>;
val plate0=<jaopca:plate.emerald>;
val compress=<ore:compressedEmerald>;
val compress0=<jaopca:dense_plate.emerald>;
val gear0=<thermalfoundation:material:26>;
val stick=<ore:stickEmerald>;
val stick0=<basemetals:emerald_rod>;
val nugget=<ore:nuggetEmerald>;
val nugget0=<extendedcrafting:material:128>;
val chip0=<opencomputers:material:29>;
val boot=<cyclicmagic:emerald_boots>;
val legging=<cyclicmagic:emerald_leggings>;
val chestplate=<cyclicmagic:emerald_chestplate>;
val helmet=<cyclicmagic:emerald_helmet>;
val shovel=<cyclicmagic:emerald_spade>;
val axe=<cyclicmagic:emerald_axe>;
val pickaxe=<cyclicmagic:emerald_pickaxe>;
val hoe=<cyclicmagic:emerald_hoe>;
val sword=<cyclicmagic:emerald_sword>;
//val fishrod=<thermalfoundation:tool.fishing_rod_emerald>;
val bow=<basemetals:emerald_bow>;
//val excavator=<thermalfoundation:tool.excavator_emerald>;
//val hammer=<thermalfoundation:tool.hammer_emerald>;
val sickle=<basemetals:emerald_scythe>;
val lumberaxe=<lumberjack:emerald_lumberaxe>;
//val crook=<exnihilocreatio:crook_emerald>;
//val sickle0=<extrautils2:sickle_emerald>;
//val shears=<minecraft:shears>;
//val shield=<thermalfoundation:tool.shield_emerald>;
val shield0=<basemetals:emerald_shield>;
#Dict
val CompressedEmerald=compress;CompressedEmerald.add(compress0);CompressedEmerald.add(<zollerngalaxy:compressedemerald>);
val EmeraldOre=<ore:oreEmerald>;EmeraldOre.add(<contenttweaker:slate_emerald_ore>);
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
//recipes.removeShaped(fishrod);
//recipes.addShapedMirrored(fishrod,[[null,null,stick],[null,stick,ST],[stick,null,ST]]);
recipes.removeShaped(bow);
recipes.addShapedMirrored(bow,[[null,stick,ST],[stick,null,ST],[null,stick,ST]]);
//recipes.removeShaped(excavator);
//recipes.addShaped(excavator,[[null,plate,null],[plate,STW,plate],[null,STW,null]]);
//mods.extendedcrafting.TableCrafting.addShaped(0,excavator,[[null,plate,null],[plate,STW,plate],[null,STW,null]]);
//recipes.removeShaped(hammer);
//recipes.addShaped(hammer,[[plate,ingot,plate],[plate,STW,plate],[null,STW,null]]);
//mods.extendedcrafting.TableCrafting.addShaped(0,hammer,[[plate,ingot,plate],[plate,STW,plate],[null,STW,null]]);
recipes.removeShaped(sickle);
//recipes.addShaped(sickle,[[stick,stick,stick],[null,null,stick],[STW,stick,stick]]);
mods.extendedcrafting.TableCrafting.addShaped(0,sickle,[[stick,stick,stick],[null,null,stick],[STW,stick,stick]]);
recipes.removeShaped(lumberaxe);
//recipes.addShaped(lumberaxe,[[plate,ingot,ingot],[plate,STW,null],[null,STW,null]]);
mods.extendedcrafting.TableCrafting.addShaped(0,lumberaxe,[[plate,ingot,ingot],[plate,STW,null],[null,STW,null]]);
//recipes.removeShaped(crook);
//recipes.addShaped(crook,[[stick,stick,null],[null,stick,null],[null,stick,null]]);
//mods.extendedcrafting.TableCrafting.addShaped(0,crook,[[stick,stick,null],[null,stick,null],[null,stick,null]]);
//recipes.removeShaped(sickle0);
//mods.extendedcrafting.TableCrafting.addShapeless(0,sickle0,[ingot,ingot,ingot,crook,STW]);
//recipes.removeShaped(shears);
//recipes.addShapeless(shears,[plate,plate,SW]);
//recipes.remove(shield);
//SmithingTable.addRecipe(<minecraft:shield>.anyDamage(),plate*4,shield);
//mods.extendedcrafting.TableCrafting.addShapeless(0,shield,[<minecraft:shield>.anyDamage(),plate,plate,plate,plate]);
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
//recipes.addShapeless("emerald_plate_sh",plate0,[<soviet:hammer>.anyDamage().transformDamage(1),ingot,ingot]);
mods.thermalexpansion.Compactor.addPressRecipe(compress0,plate0*2,4500);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("emerald_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("emerald_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("emerald_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
#Gear
recipes.remove(gear0);
recipes.addShaped("emerald_gear_e",gear0,[
[nugget,ingot,nugget],
[ingot,<soviet:hammer>.anyDamage().transformDamage(1),ingot],
[nugget,ingot,nugget]]);
recipes.addShaped("emerald_gear",gear0,[
[null,ingot,null],
[ingot,<immersiveengineering:tool>,ingot],
[null,ingot,null]]);
#Chip
recipes.addShapeless("emerald_chip_et",chip0*6,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("emerald_chip_rs",chip0*6,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);