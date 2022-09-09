import crafttweaker.item.IItemStack;
val SlimeBall=<ore:slimeball>;SlimeBall.add(<thermalfoundation:material:832>,<thermalfoundation:material:833>);SlimeBall.remove(<quark:slime_bucket>);
val Leather=<ore:leather>;Leather.add(<contenttweaker:kraft_paper>);
val Paper=<ore:paper>;Paper.add(<contenttweaker:kraft_paper>);
furnace.addRecipe(<contenttweaker:kraft_paper>,<contenttweaker:sticky_sawdust>);
val dustWood=[<thermalfoundation:material:800>,<excompressum:wood_chippings>,<mekanism:sawdust>] as IItemStack[];for item in dustWood {
    mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:sticky_sawdust>,item,<liquid:resin>*200,1600);}
furnace.setFuel(<contenttweaker:sticky_sawdust>,1600);
furnace.setFuel(<ore:dustWood>,800);
furnace.setFuel(<contenttweaker:kraft_paper>,1600);