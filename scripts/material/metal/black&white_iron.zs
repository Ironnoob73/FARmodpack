import mods.mekanism.infuser as Infuser;
import mods.mekatweaker.InfuserType;
val BlackIron=<extendedcrafting:material>;
val BlackIronPlate=<extendedcrafting:material:2>;
val BlackIronStick=<extendedcrafting:material:3>;
val WhiteIron=<refinedstorage:quartz_enriched_iron>;
val WhiteIronPlate=<contenttweaker:quartz_enriched_iron_plate>;
#Black
mods.extrautils2.Resonator.add(<actuallyadditions:item_misc:5>,<minecraft:quartz>,200);
recipes.remove(BlackIron);
mods.immersiveengineering.AlloySmelter.addRecipe(BlackIron,<ore:ingotIron>,<ore:gemQuartzBlack>*3,400);
mods.immersiveengineering.AlloySmelter.addRecipe(BlackIron,<ore:ingotIron>,<ore:dustQuartzBlack>*3,400);
mods.immersiveengineering.AlloySmelter.addRecipe(BlackIron,<ore:dustIron>,<ore:gemQuartzBlack>*3,400);
mods.immersiveengineering.AlloySmelter.addRecipe(BlackIron,<ore:dustIron>,<ore:dustQuartzBlack>*3,400);
mods.immersiveengineering.ArcFurnace.addRecipe(BlackIron,<ore:ingotIron>,null,200,50,[<ore:gemQuartzBlack>],"Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(BlackIron,<ore:ingotIron>,null,200,50,[<ore:dustQuartzBlack>],"Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(BlackIron,<ore:dustIron>,null,200,50,[<ore:gemQuartzBlack>],"Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(BlackIron,<ore:dustIron>,null,200,50,[<ore:dustQuartzBlack>],"Alloying");
InfuserType.addTypeObject(<ore:dustQuartzBlack>,"BLACKQUARTZ",10);
InfuserType.addTypeObject(<ore:plateQuartzBlack>,"BLACKQUARTZ",80);
mods.mekanism.enrichment.addRecipe(<ore:gemQuartzBlack>,<jaopca:item_platequartzblack>);
Infuser.addRecipe("BLACKQUARTZ",10,<ore:ingotIron>,BlackIron);
recipes.remove(BlackIronPlate);
recipes.addShapeless("blackiron_plate_h",BlackIronPlate,[<immersiveengineering:tool>,BlackIron]);
recipes.addShapeless("blackiron_plate_sh",BlackIronPlate,[<soviet:hammer>.anyDamage().transformDamage(1),BlackIron,BlackIron]);
mods.immersiveengineering.MetalPress.addRecipe(BlackIronPlate,BlackIron,<immersiveengineering:mold>,2400);
mods.thermalexpansion.Compactor.addPressRecipe(BlackIronPlate,BlackIron,4000);
mods.immersiveengineering.MetalPress.addRecipe(BlackIronStick*2,BlackIron,<immersiveengineering:mold:2>,2400);
recipes.remove(BlackIronStick);
recipes.addShapeless("blackiron_stick_oc",BlackIronStick,[<ore:oc:materialCuttingWire>,BlackIronPlate]);
recipes.addShapeless("blackiron_stick_rs",BlackIronStick*2,[<refinedstorage:cutting_tool>.anyDamage().transformDamage(1),BlackIronPlate]);
recipes.addShapeless("blackiron_stick_et",BlackIronStick*2,[<extrautils2:glasscutter>.anyDamage().transformDamage(1),BlackIronPlate]);
recipes.remove(<extendedcrafting:frame>);
recipes.addShaped("blackiron_frame",<extendedcrafting:frame>,[
[BlackIronPlate,BlackIronStick,BlackIronPlate], 
[BlackIronStick,<ore:blockGlassColorless>,BlackIronStick], 
[BlackIronPlate,BlackIronStick,BlackIronPlate]]);
#White
recipes.remove(WhiteIron);
mods.immersiveengineering.AlloySmelter.addRecipe(WhiteIron,<ore:ingotIron>,<ore:gemQuartz>*3,400);
mods.immersiveengineering.AlloySmelter.addRecipe(WhiteIron,<ore:ingotIron>,<ore:dustQuartz>*3,400);
mods.immersiveengineering.AlloySmelter.addRecipe(WhiteIron,<ore:dustIron>,<ore:gemQuartz>*3,400);
mods.immersiveengineering.AlloySmelter.addRecipe(WhiteIron,<ore:dustIron>,<ore:dustQuartz>*3,400);
mods.immersiveengineering.ArcFurnace.addRecipe(WhiteIron,<ore:ingotIron>,null,200,50,[<ore:gemQuartz>],"Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(WhiteIron,<ore:ingotIron>,null,200,50,[<ore:dustQuartz>],"Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(WhiteIron,<ore:dustIron>,null,200,50,[<ore:gemQuartz>],"Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(WhiteIron,<ore:dustIron>,null,200,50,[<ore:dustQuartz>],"Alloying");
InfuserType.addTypeObject(<ore:dustQuartz>,"QUARTZ",10);
InfuserType.addTypeObject(<ore:plateQuartz>,"QUARTZ",80);
mods.mekanism.enrichment.addRecipe(<ore:gemQuartz>,<jaopca:item_platequartz>);
Infuser.addRecipe("QUARTZ",10,<ore:ingotIron>,WhiteIron);
recipes.addShapeless("whiteiron_plate_h",WhiteIronPlate,[<immersiveengineering:tool>,WhiteIron]);
recipes.addShapeless("whiteiron_plate_sh",WhiteIronPlate,[<soviet:hammer>.anyDamage().transformDamage(1),WhiteIron,WhiteIron]);
mods.immersiveengineering.MetalPress.addRecipe(WhiteIronPlate,WhiteIron,<immersiveengineering:mold>,2400);
mods.thermalexpansion.Compactor.addPressRecipe(WhiteIronPlate,WhiteIron,4000);