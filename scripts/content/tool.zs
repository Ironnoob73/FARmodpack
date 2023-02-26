#loader preinit
//import contentcreator.item.Item;
//var <thermalfoundation:tool.hammer_diamond> as OriginHammer
//exampleHammer.register();
import contentcreator.item.Item;
import contentcreator.item.SubItem;

var item as Item = Item.create("example");

var subItem as SubItem = Item.sub();
subItem
.setBackgroundTexture(2)
.setBackgroundColor(0xFFFFFFFF)
.setBackgroundSize(2);

item.add(subItem).register();