#reloadable
import mods.futuremc.SmithingTable;
val ST=<ore:string>;
val STW=<ore:stickTreatedWood>;
val ingot=<ore:plankWood>;
val ingot0=<minecraft:planks:*>;
val plate=<sevendaystomine:woodplank>;
val gear0=<thermalfoundation:material:22>;
val stick=<ore:stickWood>;
val stick0=<minecraft:stick>;
val boot=<zollerngalaxy:woodboots>;
val legging=<zollerngalaxy:woodleggings>;
val chestplate=<zollerngalaxy:woodchestplate>;
val helmet=<zollerngalaxy:woodhelmet>;
val shovel=<minecraft:wooden_shovel>;
val axe=<minecraft:wooden_axe>;
val pickaxe=<minecraft:wooden_pickaxe>;
val hoe=<minecraft:wooden_hoe>;
val sword=<minecraft:wooden_sword>;
val fishrod=<minecraft:fishing_rod>;
val bow=<minecraft:bow>;
val excavator=<thermalfoundation:tool.excavator_wood>;
val hammer=<thermalfoundation:tool.hammer_wood>;
val sickle=<thermalfoundation:tool.sickle_wood>;
val lumberaxe=<lumberjack:wood_lumberaxe>;
val crook=<exnihilocreatio:crook_wood>;
val sickle0=<extrautils2:sickle_wood>;
val shears=<minecraft:shears>;
val shield=<minecraft:shield>;
val paxel=<actuallyadditions:wooden_paxel>;
val ehammer=<exnihilocreatio:hammer_wood>;
val chammer=<excompressum:compressed_hammer_wood>;
val shammer=<soviet:hammer>.anyDamage().transformDamage(1);
#Tool
recipes.remove(boot);
recipes.addShaped("wooden_boot",boot,[[plate,null,plate], [ingot,null,ingot]]);
recipes.remove(legging);
recipes.addShaped("wooden_legging",legging,[[ingot,ingot,ingot],[ingot,null,ingot],[plate,null,plate]]);
recipes.remove(chestplate);
recipes.addShaped("wooden_chestplate",chestplate,[[plate,null,plate],[ingot,ingot,ingot],[plate,ingot,plate]]);
recipes.removeShaped(helmet);
recipes.addShaped("wooden_helmet",helmet,[[plate,ingot,plate],[ingot,null,ingot]]);
recipes.removeShaped(shovel);
recipes.addShaped(shovel,[[plate],[stick],[stick]]);
recipes.removeShaped(axe);
recipes.addShapedMirrored(axe,[[plate,ingot],[plate,stick],[null,stick]]);
recipes.removeShaped(pickaxe);
recipes.addShaped(pickaxe,[[plate,ingot,plate],[null,stick,null],[null,stick,null]]);
recipes.removeShaped(hoe);
recipes.addShapedMirrored(hoe,[[plate,ingot],[null,stick],[null,stick]]);
recipes.removeShaped(sword);
recipes.addShaped(sword,[[plate],[plate],[stick]]);
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
recipes.addShapeless(shears,[plate,plate,stick]);
recipes.remove(shield);
SmithingTable.addRecipe(<minecraft:shield>.anyDamage(),plate*4,shield);
mods.extendedcrafting.TableCrafting.addShapeless(0,shield,[<minecraft:shield>.anyDamage(),plate,plate,plate,plate]);
#Stick
recipes.removeShaped(stick*4,[[ingot],[ingot]]);
recipes.addShapeless("wood_stick_oc",stick0,[<ore:oc:materialCuttingWire>,plate]);
recipes.addShapeless("wood_stick_rs",stick0*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),plate]);
recipes.addShapeless("wood_stick_et",stick0*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),plate]);
#Repair
recipes.addShapeless("wood_boot_repair",boot,[boot.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_legging_repair",legging,[legging.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_chestplate_repair",chestplate,[chestplate.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_helmet_repair",helmet,[helmet.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_shovel_repair",shovel,[shovel.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_axe_repair",axe,[axe.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_pickaxe_repair",pickaxe,[pickaxe.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_sword_repair",sword,[sword.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_hoe_repair",hoe,[hoe.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_fishrod_repair",fishrod,[fishrod.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_bow_repair",bow,[bow.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_excavator_repair",excavator,[excavator.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_hammer_repair",hammer,[hammer.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_sickle_repair",sickle,[sickle.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_lumberaxe_repair",lumberaxe,[lumberaxe.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_crook_repair",crook,[crook.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_sickle0_repair",sickle0,[sickle0.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_shears_repair",shears,[shears.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_shield_repair",shield,[shield.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_paxel_repair",paxel,[paxel.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_ehammer_repair",ehammer,[ehammer.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);
recipes.addShapeless("wood_chammer_repair",chammer,[chammer.anyDamage().marked("mark"),gear0],function(out, ins, cInfo){return ins.mark.withDamage(max(0,ins.mark.damage - 30));},null);

###MISC###
#Wooden Box
recipes.removeByRecipeName("sevendaystomine:boat");
recipes.removeByRecipeName("zollerngalaxy:woodbox");
recipes.addShaped(<zollerngalaxy:woodbox>,[[plate,null,plate],[plate,plate,plate]]);
recipes.removeByRecipeName("zollerngalaxy:metalparts");
recipes.addShapeless(<zollerngalaxy:metalparts>,[shammer,<zollerngalaxy:nailgroup>,<zollerngalaxy:woodbox>,<ore:gearStone>]);
#Gear
recipes.removeByRecipeName("thermalfoundation:material_59");
recipes.addShaped("wooden_gear",gear0,[
    [null,plate,null],
    [plate,null,plate],
    [null,plate,null]]);