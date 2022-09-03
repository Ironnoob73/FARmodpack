import crafttweaker.item.IIngredient;import crafttweaker.events.IEventManager; 
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.event.PlayerInteractBlockEvent;
#Immersive Engineering
mods.ItemStages.stageModItems("immersive_engineer","immersiveengineering");
val ImmersiveItem = [
	<immersiveengineering:tool>,
	<immersiveengineering:tool:1>,
	<immersiveengineering:treated_wood:*>,
	<immersiveengineering:treated_wood_slab:*>,
    <immersiveengineering:material>,
    <immersiveengineering:seed>,
    <immersiveengineering:material:4>,
    <immersiveengineering:wooden_decoration>
]as IIngredient[];
for item in ImmersiveItem{mods.ItemStages.removeItemStage(item);}
//mods.orestages.OreStages.addReplacementById("immersive_engineer","immersiveengineering:modworkbench","engineersdecor:treated_wood_table");
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    var player as IPlayer = event.player;
    var block as IBlock = event.block;
    if(!player.hasGameStage("immersive_engineer")&&block.definition.id =="immersiveengineering:modworkbench"){
    event.cancel();
}});