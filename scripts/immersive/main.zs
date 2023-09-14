#reloadable
val TWplate=<engineersdecor:halfslab_treated_wood>;
val TWstick=<ore:stickTreatedWood>;
val TWfan=<immersiveengineering:material:11>;
#Creosote
mods.rustic.Condenser.addRecipe(<forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}),[<ore:blockCharcoal>],null,<ore:itemEmptyBucket>,null,1000);
#Treated wood
mods.inworldcrafting.FluidToItem.transform(<immersiveengineering:treated_wood>*8,<liquid:creosote>,[<ore:plankWood>*8],true);
#Hammer
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped("immersive_hammer",<immersiveengineering:tool>,[
[<ore:ingotIron>,<ore:fiberHemp>,<ore:ingotIron>],
[null,TWstick,null],
[null,TWstick,null]]);
#Guide
recipes.remove(<immersiveengineering:tool:3>);
mods.recipestages.Recipes.setRecipeStage("immersive_engineer",<immersiveengineering:tool:3>);
recipes.addShaped("immersive_guide",<immersiveengineering:tool:3>,[
[null,TWplate,null],
[TWstick,<minecraft:book>,TWstick],
[null,TWplate,null]]);
#Treated wood pole
recipes.remove(<engineersdecor:treated_wood_pole>);
recipes.addShaped("treated_wood_pole_from_planks",<engineersdecor:treated_wood_pole>*6,[[<ore:plankTreatedWood>],[<ore:plankTreatedWood>],[<ore:plankTreatedWood>]]);
recipes.addShaped("treated_wood_pole_from_stick",<engineersdecor:treated_wood_pole>*2,[[TWstick],[TWstick]]);
recipes.addShapeless("treated_wood_pole_to_stick",<immersiveengineering:material>,[<engineersdecor:treated_wood_pole>]);
#Workbench
recipes.remove(<immersiveengineering:wooden_device0:2>);
//mods.recipestages.Recipes.setRecipeStage("immersive_engineer",<immersiveengineering:wooden_device0:2>);
recipes.addShapeless("immersive_workbench",<immersiveengineering:wooden_device0:2>,[<engineersdecor:treated_wood_crafting_table>,<engineersdecor:treated_wood_table>,<immersiveengineering:tool>]);
recipes.remove(<engineersdecor:treated_wood_crafting_table>);
//mods.recipestages.Recipes.setRecipeStage("immersive_engineer",<engineersdecor:treated_wood_crafting_table>);
recipes.addShaped("immersive_crafting_table",<engineersdecor:treated_wood_crafting_table>,[
[null,<immersiveengineering:tool>,null],
[<ore:plankTreatedWood>,<ore:plankTreatedWood>,<ore:plankTreatedWood>],
[<ore:plateIron>,<ore:workbench>,<ore:plateIron>]]);
#Dynamo
recipes.remove(<immersiveengineering:metal_device1:2>);
//mods.recipestages.Recipes.setRecipeStage("immersive_engineer",<immersiveengineering:metal_device1:2>);
recipes.addShaped("immersive_dynamo",<immersiveengineering:metal_device1:2>,[
[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>], 
[<ore:dustRedstone>,<immersiveengineering:metal_decoration0>,<ore:dustRedstone>], 
[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>]]);
#Windmill
recipes.remove(<immersiveengineering:wooden_device1:1>);
//mods.recipestages.Recipes.setRecipeStage("immersive_engineer",<immersiveengineering:wooden_device1:1>);
recipes.addShaped("immersive_windmill",<immersiveengineering:wooden_device1:1>,[
[TWfan,TWfan,TWfan], 
[TWfan,<engineersdecor:treated_wood_pole>,TWfan], 
[TWfan,TWfan,TWfan]]);