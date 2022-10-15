#priority 96
import crafttweaker.item.IIngredient;import crafttweaker.events.IEventManager; 
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.event.PlayerInteractBlockEvent;

mods.ItemStages.stageModItems("cyclic","cyclicmagic");
val CyclicItemOut = [
    <cyclicmagic:tool_rotate>
]as IIngredient[];
for item in CyclicItemOut{mods.ItemStages.removeItemStage(item);}