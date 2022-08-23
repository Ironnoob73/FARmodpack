#loader contenttweaker
#priority 999
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
#Quartz iron plate
val quartzIronPlate as Item=VanillaFactory.createItem("quartz_enriched_iron_plate");
quartzIronPlate.creativeTab=<creativetab:materials.base>;quartzIronPlate.register();
#Iron wire
val ironWire as Item=VanillaFactory.createItem("material_wire_iron");
ironWire.creativeTab=<creativetab:materials.base>;ironWire.register();
#Constantan stick
val constantanStick as Item=VanillaFactory.createItem("rod_constantan");
constantanStick.creativeTab=<creativetab:materials.base>;constantanStick.register();
#Photoresist
val photoresist as Item=VanillaFactory.createItem("photoresist");
photoresist.creativeTab=<creativetab:materials.base>;photoresist.register();