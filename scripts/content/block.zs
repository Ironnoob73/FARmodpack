#loader contenttweaker
#priority 999
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
var testCtm=VanillaFactory.createBlock("test_ctm",<blockmaterial:rock>);
testCtm.fullBlock=true;
testCtm.creativeTab=<creativetab:materials.base>;
testCtm.register();