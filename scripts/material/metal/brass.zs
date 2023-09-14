#reloadable
val Ingot=<basemetals:brass_ingot>;
val Plate=<railcraft:plate:11>;
val PlateBrass=<ore:plateBrass>;PlateBrass.add(Plate);
recipes.addShapeless("brass_plate_h",Plate,[<immersiveengineering:tool>,Ingot]);
recipes.addShapeless("brass_plate_sh",Plate,[<soviet:hammer>.anyDamage().transformDamage(1),Ingot,Ingot]);
mods.immersiveengineering.MetalPress.addRecipe(Plate,Ingot,<immersiveengineering:mold>,2400);
mods.thermalexpansion.Compactor.addPressRecipe(Plate,Ingot,4000);