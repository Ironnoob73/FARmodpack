#Creosote
mods.rustic.Condenser.addRecipe(<forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}),[<ore:blockCharcoal>],null,<ore:itemEmptyBucket>,<liquid:water>*0,1000);
#Treated wood
mods.inworldcrafting.FluidToItem.transform(<immersiveengineering:treated_wood>*8,<liquid:creosote>,[<ore:plankWood>*8],true);
#Hammer
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped("immersive_hammer",<immersiveengineering:tool>,[
[<ore:ingotIron>,<ore:fiberHemp>,<ore:ingotIron>],
[null,<ore:stickTreatedWood>,null],
[null,<ore:stickTreatedWood>,null]]);
#Treated wood pole
recipes.remove(<engineersdecor:treated_wood_pole>);
recipes.addShaped("treated_wood_pole_from_planks",<engineersdecor:treated_wood_pole>*6,[[<ore:plankTreatedWood>],[<ore:plankTreatedWood>],[<ore:plankTreatedWood>]]);
recipes.addShaped("treated_wood_pole_from_stick",<engineersdecor:treated_wood_pole>*2,[[<ore:stickTreatedWood>],[<ore:stickTreatedWood>]]);
recipes.addShapeless("treated_wood_pole_to_stick",<immersiveengineering:material>,[<engineersdecor:treated_wood_pole>]);