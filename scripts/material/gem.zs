//还没法确定是否需要将所有同色宝石类物品归类为一种矿辞来合成天地宝晶
val GemRed=<ore:gemRed>;GemRed.add(<quark:crystal:1>,<biomesoplenty:gem:1>,<zollerngalaxy:ruby>,<jaopca:plate.ruby>,<actuallyadditions:item_crystal>,<basemetals:redstone_ingot>,<extraplanets:tier5_items:8>,<extraplanets:tier11_items:1>,<extraplanets:wafer:3>,<extrautils2:ingredients>,<redstonearsenal:material:160>);
val GemOrange=<ore:gemOrange>;GemOrange.add(<quark:crystal:2>,<biomesoplenty:gem:7>,<cyclicmagic:crystallized_amber>,<zollerngalaxy:amber>,<zollerngalaxy:staticamber>,<zollerngalaxy:plutoniumcrystal>);
val GemYellow=<ore:gemYellow>;GemYellow.add(<quark:crystal:3>,<biomesoplenty:gem:3>,<extraplanets:tier11_items:3>,<zollerngalaxy:topaz>,<bigreactors:ingotyellorium>,<extrautils2:suncrystal:0>,<bigreactors:mineralanglesite>,<aether_legacy:golden_amber>);
val GemGreen=<ore:gemGreen>;GemGreen.add(<quark:crystal:4>,<minecraft:emerald>,<actuallyadditions:item_crystal:4>,<extraplanets:tier11_items:4>,<biomesoplenty:gem:2>);
val GemCyan=<ore:gemCyan>;GemCyan.add(<quark:crystal:5>,<biomesoplenty:gem:5>);
val GemWhite=<ore:gemWhite>;GemWhite.add(<quark:crystal>,<cavern:cave_item:2>,<extraplanets:tier7_items:7>,<extraplanets:wafer:5>,<galaxyspace:gs_basic:3>,<zollerngalaxy:opal>,<extraplanets:tier7_items:5>,<zollerngalaxy:purgotcrystal>,<actuallyadditions:item_crystal:5>);
recipes.remove(<biomesoplenty:terrestrial_artifact>);

val BopOverWorldGem=<ore:bopOverWorldGem>;BopOverWorldGem.add(<biomesoplenty:gem:1>,<biomesoplenty:gem:2>,<biomesoplenty:gem:3>,<biomesoplenty:gem:4>,<biomesoplenty:gem:5>,<biomesoplenty:gem:6>,<biomesoplenty:gem:7>);
mods.extendedcrafting.CombinationCrafting.addRecipe(<biomesoplenty:terrestrial_artifact>*1,10000,100, <quark:rune:16>,[<ore:gemRuby>,<ore:gemTopaz>,<ore:gemAmber>,<ore:gemPeridot>,<ore:gemMalachite>,<ore:gemSapphire>,<ore:gemTanzanite>]);