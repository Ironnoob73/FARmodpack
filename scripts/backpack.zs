#Travelers Backpack
recipes.remove(<travelersbackpack:travelers_backpack>);
recipes.addShaped("travelers_backpack",<travelersbackpack:travelers_backpack>,[
[<ore:leather>,<ore:ingotGold>,<ore:leather>],
[<travelersbackpack:backpack_tank>,<engineersdecor:labeled_crate>,<travelersbackpack:backpack_tank>],
[<ore:leather>,<travelersbackpack:sleeping_bag_bottom>,<ore:leather>]]);
#Crate
recipes.remove(<immersiveengineering:wooden_device0:5>);
recipes.addShaped("crate_0",<immersiveengineering:wooden_device0:5>,[
[<ore:stickSteel>,null,<ore:stickSteel>],
[null,<immersiveengineering:wooden_device0>,null],
[<ore:stickSteel>,null,<ore:stickSteel>]]);
recipes.remove(<engineersdecor:labeled_crate>);
recipes.addShapeless("crate_1",<engineersdecor:labeled_crate>,[<immersiveengineering:wooden_device0:5>,<minecraft:item_frame>,<immersiveengineering:wooden_device0:5>]);
