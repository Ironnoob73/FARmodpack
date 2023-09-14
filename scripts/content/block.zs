#reloadable
#loader contenttweaker
#priority 999
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
#Slate Ore
#   Coal
var slateCoalOre=VanillaFactory.createBlock("slate_coal_ore",<blockmaterial:rock>);
slateCoalOre.fullBlock=true;
slateCoalOre.creativeTab=<creativetab:materials.base>;
slateCoalOre.blockHardness=3.5;
slateCoalOre.blockResistance=3.5;
slateCoalOre.toolLevel=1;
slateCoalOre.register();
#   Iron
var slateIronOre=VanillaFactory.createBlock("slate_iron_ore",<blockmaterial:rock>);
slateIronOre.fullBlock=true;
slateIronOre.creativeTab=<creativetab:materials.base>;
slateIronOre.blockHardness=3.5;
slateIronOre.blockResistance=3.5;
slateIronOre.toolLevel=1;
slateIronOre.register();
#   Gold
var slateGoldOre=VanillaFactory.createBlock("slate_gold_ore",<blockmaterial:rock>);
slateGoldOre.fullBlock=true;
slateGoldOre.creativeTab=<creativetab:materials.base>;
slateGoldOre.blockHardness=3.5;
slateGoldOre.blockResistance=3.5;
slateGoldOre.toolLevel=2;
slateGoldOre.register();
#   Diamond
var slateDiamondOre=VanillaFactory.createBlock("slate_diamond_ore",<blockmaterial:rock>);
slateDiamondOre.fullBlock=true;
slateDiamondOre.creativeTab=<creativetab:materials.base>;
slateDiamondOre.blockHardness=3.5;
slateDiamondOre.blockResistance=3.5;
slateDiamondOre.toolLevel=2;
slateDiamondOre.register();
#   Emerald
var slateEmeraldOre=VanillaFactory.createBlock("slate_emerald_ore",<blockmaterial:rock>);
slateEmeraldOre.fullBlock=true;
slateEmeraldOre.creativeTab=<creativetab:materials.base>;
slateEmeraldOre.blockHardness=3.5;
slateEmeraldOre.blockResistance=3.5;
slateEmeraldOre.toolLevel=2;
slateEmeraldOre.register();
#   Lapis
var slateLapisOre=VanillaFactory.createBlock("slate_lapis_ore",<blockmaterial:rock>);
slateLapisOre.fullBlock=true;
slateLapisOre.creativeTab=<creativetab:materials.base>;
slateLapisOre.blockHardness=3.0;
slateLapisOre.blockResistance=3.0;
slateLapisOre.toolLevel=1;
slateLapisOre.register();
#Laboratory Security Brick
var laboratorySecurityBrick=VanillaFactory.createBlock("laboratory_security_brick",<blockmaterial:rock>);
laboratorySecurityBrick.fullBlock=true;
laboratorySecurityBrick.creativeTab=<creativetab:materials.base>;
laboratorySecurityBrick.blockHardness=40.0;
laboratorySecurityBrick.blockResistance=600.0;
laboratorySecurityBrick.toolLevel=2;
laboratorySecurityBrick.register();