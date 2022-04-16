#loader contenttweaker
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
#Quartz iron plate
val quartzIronPlate as Item=VanillaFactory.createItem("quartz_enriched_iron_plate");
quartzIronPlate.creativeTab=<creativetab:materials.base>;quartzIronPlate.register();
#Compressed quartz
val compressedQuartz as Item=VanillaFactory.createItem("compressed_quartz");
compressedQuartz.creativeTab=<creativetab:materials.base>;compressedQuartz.register();
#Compressed black quartz
val compressedBlackQuartz as Item=VanillaFactory.createItem("compressed_blackquartz");
compressedBlackQuartz.creativeTab=<creativetab:materials.base>;compressedBlackQuartz.register();
#Iron wire
val ironWire as Item=VanillaFactory.createItem("material_wire_iron");
ironWire.creativeTab=<creativetab:materials.base>;ironWire.register();
#Constantan stick
val constantanStick as Item=VanillaFactory.createItem("rod_constantan");
constantanStick.creativeTab=<creativetab:materials.base>;constantanStick.register();