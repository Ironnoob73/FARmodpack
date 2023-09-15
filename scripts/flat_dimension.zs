#reloadable
recipes.remove(<aroma1997sdimension:miningmultitool>);
recipes.remove(<aroma1997sdimension:portalframesphere>);
<aroma1997sdimension:dimensionchanger:1>.addTooltip("前往维度-12会导致崩溃");
recipes.addShaped("flat_dimension_tool",<aroma1997sdimension:miningmultitool>,[
    [null,<ore:gemDimensionalShard>,null],
    [<ore:gemDimensionalShard>,<biomesoplenty:jar_filled:1>,<ore:gemDimensionalShard>],
    [null,<ore:rodStone>,null]]);