val material=<refinedstorage:quartz_enriched_iron>;
val shell=<mekanism:polyethene:2>;
val glass=<ore:blockGlass>;
#Storage Housing
recipes.remove(<refinedstorage:storage_housing>);
mods.recipestages.Recipes.setRecipeStage("refined_storgae",<refinedstorage:storage_housing>);
recipes.addShaped("storage_housing",<refinedstorage:storage_housing>,[
[shell,shell,shell],
[shell,glass,shell],
[material,material,material]]);