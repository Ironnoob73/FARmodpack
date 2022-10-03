#Wrench
recipes.addShaped("soviet_wrench",<soviet:wrench>,[[<contenttweaker:coupling_component>],[<ore:stickSteel>]]);
//<soviet:wrench>.addTooltip("用于激活多方块结构");
#Frame
recipes.remove(<extendedcrafting:frame>);
recipes.addShaped("blackiron_frame",<extendedcrafting:frame>,[
[<ore:plateBlackIron>,<ore:stickBlackIron>,<ore:plateBlackIron>], 
[<ore:stickBlackIron>,<ore:blockGlassColorless>,<ore:stickBlackIron>], 
[<ore:plateBlackIron>,<ore:stickBlackIron>,<ore:plateBlackIron>]]);
#Trimmed
#   Iron
//game.setLocalization("tile.ec.trimmed_iron.name","基础联结工程块");
//game.setLocalization("tooltip.ec.trimmed_iron","等级：I");
recipes.remove(<extendedcrafting:trimmed>);
recipes.addShaped("trimmed_iron",<extendedcrafting:trimmed>,[
[<ore:plateBlackIron>,<contenttweaker:coupling_component>,<ore:plateBlackIron>], 
[<minecraft:iron_nugget>,<ore:gearIron>,<minecraft:iron_nugget>], 
[<ore:plateBlackIron>,<contenttweaker:coupling_component>,<ore:plateBlackIron>]]);
#   Gold
//game.setLocalization("tile.ec.trimmed_gold.name","高级联结工程块");
//game.setLocalization("tooltip.ec.trimmed_gold","等级：II");
#   Diamond
//game.setLocalization("tile.ec.trimmed_diamond.name","精英联结工程块");
//game.setLocalization("tooltip.ec.trimmed_diamond","等级：III");
#   Emerald
//game.setLocalization("tile.ec.trimmed_emerald.name","终极联结工程块");
//game.setLocalization("tooltip.ec.trimmed_emerald","等级：IV");
#   Crystaltine
//game.setLocalization("tile.ec.trimmed_crystaltine.name","晶素联结工程块");
//game.setLocalization("tooltip.ec.trimmed_crystaltine","等级：V");
#   Ultimate
//game.setLocalization("tile.ec.trimmed_ultimate.name","真·终极联结工程块");
//game.setLocalization("tooltip.ec.trimmed_ultimate","等级：§k|||");