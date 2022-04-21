#Vanilla
recipes.remove(<minecraft:cauldron>);
recipes.addShaped(<minecraft:cauldron>, [[<ore:plateIron>, <ore:itemEmptyBucket>, <ore:plateiron>], [<ore:ingotiron>, null, <ore:ingotiron>]]);
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[<ore:plateIron>, null, <ore:plateiron>], [null, <ore:plateiron>, null]]);
#Blast furnace
recipes.remove(<futuremc:blast_furnace>);
recipes.addShaped("blast_furnance",<futuremc:blast_furnace>,[
[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
[<ore:plateIron>,<minecraft:furnace>,<ore:plateIron>],
[<futuremc:smooth_stone>,<futuremc:smooth_stone>,<futuremc:smooth_stone>]]);
#Condenser
val HardClay=<ore:hardenedClay>;HardClay.add(<minecraft:hardened_clay>,<minecraft:stained_hardened_clay:*>);
val Brick=<ore:ingotBrick>;Brick.add(<biomesoplenty:mud_brick>,<soviet:white_brick>);
recipes.remove(<rustic:condenser>);
recipes.addShaped("condenser",<rustic:condenser>,[
[null,<ore:ingotBrick>,null],
[<ore:ingotBrick>,<ore:itemEmptyBucket>,<ore:ingotBrick>],
[<ore:ingotBrick>,<ore:hardenedClay>,<ore:ingotBrick>]]);
#Hammer
recipes.addShaped("soviet_hammer",<soviet:hammer>,[[<minecraft:stone_slab>],[<ore:stickWood>]]);
#Calculator
recipes.remove(<jecalculation:item_calculator:1>);
recipes.addShaped("calculator",<jecalculation:item_calculator:1>,[
[null,<rftools:screen>,null],
[<ore:plateIron>,<ore:oc:materialButtonGroup>,<ore:plateIron>],
[<ore:circuitBasic>,<ore:oc:materialNumPad>,<ore:oc:materialALU>]]);
recipes.remove(<jecalculation:item_calculator>);
recipes.addShapeless(<jecalculation:item_calculator>,[<jecalculation:item_calculator:1>,<theoneprobe:probe>]);
#Weather
game.setLocalization("entity.weather_hail.name","冰雹");
game.setLocalization("entity.moving_block.name","被吹走的方块");
game.setLocalization("entity.EntityPollutant.name","污染物");
#MTS
game.setLocalization("entity.mts_entity.name","");
game.setLocalization("entity.mts_entity_renderer.name","");