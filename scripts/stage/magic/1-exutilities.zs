#priority 97
import crafttweaker.item.IIngredient;import crafttweaker.events.IEventManager; 
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.event.PlayerInteractBlockEvent;

mods.ItemStages.stageModItems("extrautils","extrautils2");
val ExutilitiesItemOut = [
    <extrautils2:wrench>,
    <extrautils2:ingredients>
]as IIngredient[];
for item in ExutilitiesItemOut{mods.ItemStages.removeItemStage(item);}