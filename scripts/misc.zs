#Vanilla
recipes.remove(<minecraft:cauldron>);
recipes.addShaped(<minecraft:cauldron>, [[<ore:plateIron>, <ore:itemEmptyBucket>, <ore:plateiron>], [<ore:ingotiron>, null, <ore:ingotiron>]]);
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[<ore:plateIron>, null, <ore:plateiron>], [null, <ore:plateiron>, null]]);
#Hammer
recipes.addShaped("soviet_hammer",<soviet:hammer>,[[<minecraft:stone_slab>],[<ore:stickWood>]]);
#calculator
recipes.remove(<jecalculation:item_calculator:1>);
recipes.addShaped("calculator",<jecalculation:item_calculator:1>,[
[null,<rftools:screen>,null],
[<ore:plateIron>,<ore:oc:materialButtonGroup>,<ore:plateIron>],
[<ore:circuitBasic>,<ore:oc:materialNumPad>,<ore:oc:materialALU>]]);
recipes.remove(<jecalculation:item_calculator>);
recipes.addShapeless(<jecalculation:item_calculator>,[<jecalculation:item_calculator:1>,<theoneprobe:probe>]);