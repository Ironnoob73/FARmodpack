#Circuit
#   Electron tube
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:26>);
mods.immersiveengineering.Blueprint.addRecipe("components",<immersiveengineering:material:26>*3,[<ore:itemEmptyBottle>,<ore:plateNickel>,<ore:wireCopper>,<ore:dustRedstone>]);
#   Insulating glass
recipes.remove(<immersiveengineering:stone_decoration:8>);
recipes.addShaped("insulating_glass",<immersiveengineering:stone_decoration:8>*2,[
[null,<ore:blockGlass>,null],
[<ore:dustIron>,<ore:slimeball>,<ore:dustIron>],
[null,<ore:blockGlass>,null]]);
#Coupling Component
recipes.addShaped("coupling_component",<contenttweaker:coupling_component>,[
[<ore:plateBlackIron>,null,<ore:plateBlackIron>], 
[null,<ore:gemLapis>,null], 
[<ore:plateBlackIron>,null,<ore:plateBlackIron>]]);
mods.immersiveengineering.Blueprint.addRecipe("components",<contenttweaker:coupling_component>,[<ore:plateBlackIron>*2,<ore:gemLapis>]);
#Minner Key I
mods.immersiveengineering.Blueprint.addRecipe("探索者蓝图",<contenttweaker:minner_key_i>,[<immersiveengineering:wirecoil:3>,<immersiveengineering:connector:6>,<ore:fenceAluminum>]);
#Brass Cartridge Case
recipes.addShaped("coupling_component",<contenttweaker:brass_cartridge_case>,[
[<ore:plateBrass>,null,<ore:plateBrass>], 
[<ore:plateBrass>,null,<ore:plateBrass>], 
[null,<ore:plateBrass>,null]]);