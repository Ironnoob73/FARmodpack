#priority 98
import crafttweaker.item.IIngredient;import crafttweaker.events.IEventManager; 
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.event.PlayerInteractBlockEvent;
import mods.ResearchTable;
import ResearchTable.Category;
import ResearchTable.Builder;
//All magic research
var Magic = ResearchTable.addCategory(<extendedcrafting:material:7>,"researchtable.category.ii.title");
ResearchTable.builder("GetMagicMenril",Magic)
  .setIcons(<integrateddynamics:on_the_dynamics_of_integration>)
  .setTitle("researchtable.i.get_magic_menril.title")
  .setDescription("researchtable.i.get_magic_menril.description")
  .addCondition(<minecraft:book>,<integrateddynamics:crystalized_menril_chunk>*50,<mysticalagriculture:menril_essence>*50,<ordinarycoins:coinbronze>*100)
  .setRewardStages("menril")
  .setRewardCommands("/tellraw @a {\"text\":\" \",\"extra\":[{\"selector\":\"@s\"},{\"translate\":\"researchtable.i.get_magic_menril.complete\"}]}")
  .setRewardItems(<integrateddynamics:on_the_dynamics_of_integration>)
  .build();
ResearchTable.builder("GetMagicExtraUtils",Magic)
  .setIcons(<extrautils2:book>)
  .setTitle("researchtable.ii.get_magic_extrautils.title")
  .setDescription("researchtable.ii.get_magic_extrautils.description")
  .addCondition(<extrautils2:wrench>,<minecraft:book>,<extrautils2:ingredients>*4,<ordinarycoins:coinbronze>*100)
  .setRewardStages("extrautils")
  .setRewardCommands("/tellraw @a {\"text\":\" \",\"extra\":[{\"selector\":\"@s\"},{\"translate\":\"researchtable.ii.get_magic_extrautils.complete\"}]}")
  .setRewardItems(<extrautils2:book>)
  .build();
ResearchTable.builder("GetMagicCyclic",Magic)
  .setIcons(<cyclicmagic:tool_trade>)
  .setTitle("researchtable.iii.get_magic_cyclic.title")
  .setDescription("researchtable.iii.get_magic_cyclic.description")
  .addCondition(<cyclicmagic:tool_rotate>,<minecraft:book>,<ordinarycoins:coinbronze>*100)
  .setRewardStages("cyclic")
  .setRewardCommands("/tellraw @a {\"text\":\" \",\"extra\":[{\"selector\":\"@s\"},{\"translate\":\"researchtable.iii.get_magic_cyclic.complete\"}]}")
  .setRewardItems(<cyclicmagic:tool_trade>)
  .build();
ResearchTable.builder("GetMagicActuallyAdd",Magic)
  .setIcons(<actuallyadditions:item_booklet>)
  .setTitle("researchtable.iv.get_magic_actually.title")
  .setDescription("researchtable.iv.get_magic_actually.description")
  .addCondition(<actuallyadditions:item_solidified_experience>,<actuallyadditions:item_misc:5>,<minecraft:book>,<ordinarycoins:coinbronze>*100)
  .setRewardStages("actually_additions")
  .setRewardCommands("/tellraw @a {\"text\":\" \",\"extra\":[{\"selector\":\"@s\"},{\"translate\":\"researchtable.iv.get_magic_actually.complete\"}]}")
  .setRewardItems(<actuallyadditions:item_booklet>)
  .build();

mods.ItemStages.stageModItems("menril","integrateddynamics");
mods.ItemStages.stageModItems("menril","integrated_proxy");
mods.ItemStages.stageModItems("menril","integratedcrafting");
mods.ItemStages.stageModItems("menril","integratedtunnels");
mods.ItemStages.stageModItems("menril","integratedtunnels");
mods.ItemStages.stageModItems("menril","integratedterminals");
mods.ItemStages.stageModItems("menril","integratednbt");
val MnerilItemOut = [
    <integrateddynamics:crystalized_menril_chunk>,
    <mysticalagriculture:menril_essence>
]as IIngredient[];
for item in MnerilItemOut{mods.ItemStages.removeItemStage(item);}