val Ingot=<zollerngalaxy:zincingot>;
val Plate=<contenttweaker:zinc_plate>;
val PlateZinc=<ore:plateZinc>;PlateZinc.add(Plate);
recipes.addShapeless("zinc_plate_h",Plate,[<immersiveengineering:tool>,Ingot]);
recipes.addShapeless("zinc_plate_sh",Plate,[<soviet:hammer>.anyDamage().transformDamage(1),Ingot,Ingot]);
mods.immersiveengineering.MetalPress.addRecipe(Plate,Ingot,<immersiveengineering:mold>,2400);
mods.thermalexpansion.Compactor.addPressRecipe(Plate,Ingot,4000);