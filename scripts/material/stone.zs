#reloadable
import mods.futuremc.SmithingTable;
import mods.integrateddynamics.Squeezer;
import mods.integrateddynamics.MechanicalSqueezer;
val SW=<ore:stickWood>;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:cobblestone>;
val gear=<ore:gearStone>;
val gear0=<thermalfoundation:material:23>;
val stick=<ore:stickStone>;
val stick0=<exnihilocreatio:item_material:6>;
val shovel=<minecraft:stone_shovel>;
val axe=<minecraft:stone_axe>;
val pickaxe=<minecraft:stone_pickaxe>;
val hoe=<minecraft:stone_hoe>;
val sword=<minecraft:stone_sword>;
val fishrod=<thermalfoundation:tool.fishing_rod_stone>;
val bow=<thermalfoundation:tool.bow_stone>;
val excavator=<thermalfoundation:tool.excavator_stone>;
val hammer=<thermalfoundation:tool.hammer_stone>;
val sickle=<thermalfoundation:tool.sickle_stone>;
val lumberaxe=<lumberjack:stone_lumberaxe>;
val crook=<exnihilocreatio:crook_stone>;
val sickle0=<extrautils2:sickle_stone>;
val shears=<minecraft:shears>;
val shield=<thermalfoundation:tool.shield_stone>;
val paxel=<actuallyadditions:stone_paxel>;
val ehammer=<exnihilocreatio:hammer_stone>;
val chammer=<excompressum:compressed_hammer_stone>;
val shammer=<soviet:hammer>.anyDamage().transformDamage(1);
#Tool
//recipes.removeShaped(shovel);
recipes.addShaped("stone_shovel",shovel,[[ingot],[SW],[SW]]);
//recipes.removeShaped(axe);
recipes.addShapedMirrored("stone_axe",axe,[[ingot,ingot],[ingot,SW],[null,SW]]);
//recipes.removeShaped(pickaxe);
recipes.addShaped("stone_pickaxe",pickaxe,[[ingot,ingot,ingot],[null,SW,null],[null,SW,null]]);
//recipes.removeShaped(hoe);
recipes.addShapedMirrored("stone_hoe",hoe,[[ingot,ingot],[null,SW],[null,SW]]);
//recipes.removeShaped(sword);
recipes.addShaped("stone_sword",sword,[[ingot],[ingot],[SW]]);
recipes.removeShaped(fishrod);
recipes.addShapedMirrored(fishrod,[[null,null,stick],[null,stick,ST],[stick,null,ST]]);
recipes.removeShaped(bow);
recipes.addShapedMirrored(bow,[[null,stick,ST],[stick,null,ST],[null,stick,ST]]);
recipes.removeShaped(excavator);
mods.extendedcrafting.TableCrafting.addShaped(0,excavator,[[null,ingot,null],[ingot,STW,ingot],[null,STW,null]]);
recipes.removeShaped(hammer);
mods.extendedcrafting.TableCrafting.addShaped(0,hammer,[[ingot,ingot,ingot],[ingot,STW,ingot],[null,STW,null]]);
recipes.removeShaped(sickle);
mods.extendedcrafting.TableCrafting.addShaped(0,sickle,[[stick,stick,stick],[null,null,stick],[STW,stick,stick]]);
recipes.removeShaped(lumberaxe);
mods.extendedcrafting.TableCrafting.addShaped(0,lumberaxe,[[ingot,ingot,ingot],[ingot,STW,null],[null,STW,null]]);
recipes.removeShaped(crook);
recipes.addShaped(crook,[[stick,stick,null],[null,stick,null],[null,stick,null]]);
recipes.removeShaped(chammer);
mods.extendedcrafting.TableCrafting.addShapeless(0,chammer,[ehammer,ehammer,ehammer,ehammer,ehammer,ehammer,ehammer,ehammer,ehammer]);
recipes.removeShaped(sickle0);
SmithingTable.addRecipe(sickle,<modularrouters:augment:2>,sickle0);
recipes.removeShaped(shears);
recipes.addShapeless(shears,[ingot,ingot,SW]);
recipes.remove(shield);
SmithingTable.addRecipe(<minecraft:shield>.anyDamage(),ingot*4,shield);
mods.extendedcrafting.TableCrafting.addShapeless(0,shield,[<minecraft:shield>.anyDamage(),ingot,ingot,ingot,ingot]);
#Repair
recipes.addShapeless("stone_shovel_repair",shovel,[shovel.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_axe_repair",axe,[axe.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_pickaxe_repair",pickaxe,[pickaxe.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_sword_repair",sword,[sword.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_hoe_repair",hoe,[hoe.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_fishrod_repair",fishrod,[fishrod.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_bow_repair",bow,[bow.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_excavator_repair",excavator,[excavator.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_hammer_repair",hammer,[hammer.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_sickle_repair",sickle,[sickle.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_lumberaxe_repair",lumberaxe,[lumberaxe.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_crook_repair",crook,[crook.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_sickle0_repair",sickle0,[sickle0.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_shears_repair",shears,[shears.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_shield_repair",shield,[shield.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_paxel_repair",paxel,[paxel.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_ehammer_repair",ehammer,[ehammer.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);
recipes.addShapeless("stone_chammer_repair",chammer,[chammer.anyDamage().marked("mark"),gear],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 175));},null);

###MISC###
#Smooth slab
recipes.removeShaped(<minecraft:stone_slab>*6,[[<ore:stone>,<ore:stone>,<ore:stone>]]);
#Andesite
#   Rock
recipes.addShapeless("andesite_rock",<soviet:andesite_rock>,[shammer,<ore:stoneAndesite>]);
mods.mekanism.enrichment.addRecipe(<ore:stoneAndesite>,<soviet:andesite_rock>*2);
mods.actuallyadditions.Crusher.addRecipe(<minecraft:stone:5>,<soviet:andesite_rock>,<soviet:andesite_rock>,50);
mods.immersiveengineering.Crusher.addRecipe(<soviet:andesite_rock>,<ore:stoneAndesite>,4000,<soviet:andesite_rock>,0.75);
mods.thermalexpansion.Pulverizer.addRecipe(<soviet:andesite_rock>,<minecraft:stone:5>,5400,<soviet:andesite_rock>,25);
Squeezer.addRecipe(<minecraft:stone:5>,<soviet:andesite_rock>,1,<soviet:andesite_rock>,0.1,null);
MechanicalSqueezer.addRecipe(<minecraft:stone:5>,<soviet:andesite_rock>,1,<soviet:andesite_rock>,0.6,<liquid:water>*0,20);
#   Brick
mods.futuremc.BlastFurnace.addRecipe(<soviet:andesite_rock>,<soviet:white_brick>);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<soviet:white_brick>,<soviet:andesite_rock>,2000);
mods.mekanism.smelter.addRecipe(<soviet:andesite_rock>,<soviet:white_brick>);
#Crafting table
recipes.remove(<cyclicmagic:block_workbench>);
recipes.addShapeless(<cyclicmagic:block_workbench>,[<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]);