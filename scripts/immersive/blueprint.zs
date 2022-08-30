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
[<ore:plateQuartzBlack>,null,<ore:plateQuartzBlack>], 
[null,<ore:gemLapis>,null], 
[<ore:plateQuartzBlack>,null,<ore:plateQuartzBlack>]]);
mods.immersiveengineering.Blueprint.addRecipe("components",<contenttweaker:coupling_component>,[<ore:plateQuartzBlack>*2,<ore:gemLapis>]);