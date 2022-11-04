#priority 98
import crafttweaker.item.IIngredient;import crafttweaker.events.IEventManager; 
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.event.PlayerInteractBlockEvent;
mods.ItemStages.stageModItems("thermal_industry","thermalfoundation");
mods.ItemStages.stageModItems("thermal_industry","thermalexpansion");
mods.ItemStages.stageModItems("thermal_industry","thermaldynamics");
mods.ItemStages.stageModItems("thermal_industry","thermalcultivation");
mods.ItemStages.stageModItems("thermal_industry","thermalinnovation");
mods.ItemStages.stageModItems("thermal_industry","tanaddons");
mods.ItemStages.stageModItems("thermal_industry","scannable");
val ThermalItemOut = [
  <thermalfoundation:wrench>,
  <thermalfoundation:ore:*>,
  <thermalfoundation:ore_fluid:*>,
  <thermalfoundation:material:*>
]as IIngredient[];
for item in ThermalItemOut{mods.ItemStages.removeItemStage(item);}
val ThermalItemIn = [
    <ore:ingotSignalum>,
    <ore:ingotLumium>,
    <ore:ingotEnderium>,
    <ore:nuggetSignalum>,
    <ore:nuggetLumium>,
    <ore:nuggetEnderium>,
    <ore:gearSignalum>,
    <ore:gearLumium>,
    <ore:gearEnderium>,
    <ore:dustSignalum>,
    <ore:dustLumium>,
    <ore:dustEnderium>,
    <thermalfoundation:material:512>,
    <thermalfoundation:material:513>,
    <thermalfoundation:material:514>,
    <thermalfoundation:material:515>,
    <thermalfoundation:material:640>,
    <thermalfoundation:material:656>,
    <thermalfoundation:material:657>,
    <ore:crystalGlowstone>,
    <ore:crystalEnder>,
    <ore:dustPyrotheum>,
    <ore:dustCryotheum>,
    <ore:dustAerotheum>,
    <ore:dustPetrotheum>,
    <ore:dustMana>,
    <ore:dustBlizz>,
    <ore:dustBlitz>,
    <ore:dustBasalz>,
    <ore:oreClathrateGlowstone>,
    <ore:oreClathrateEnder>,
    <ore:itemBiomass>,
    <ore:itemBiomassRich>,
    <ore:itemBioblend>,
    <ore:itemBioblendRich>,
    <thermalexpansion:florb>.anyDamage(),
    <thermalexpansion:morb>.anyDamage()
]as IIngredient[];
for item in ThermalItemIn{mods.ItemStages.addItemStage("thermal_industry",item);}
val ImmersiveItemIn = [
  <contenttweaker:minner_key_i>,
  <thermalfoundation:wrench>,
  <chisel:chisel_iron>,
  <exnihilocreatio:item_ore_uranium:*>
]as IIngredient[];
for item in ImmersiveItemIn{mods.ItemStages.addItemStage("immersive_engineer",item);}

recipes.remove(<thermalfoundation:wrench>);
recipes.addShaped("thermal_wrench",<thermalfoundation:wrench>,[
[<ore:gearTin>], 
[<ore:gemLapis>], 
[<ore:stickIron>]]);
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped("thermal_frame",<thermalexpansion:frame>,[
[null,<ore:circuitBasic>,null], 
[<ore:plateIron>,<extendedcrafting:frame>,<ore:plateIron>], 
[<ore:gearTin>,<ore:plateIron>,<ore:gearTin>]]);