#priority 99
import crafttweaker.item.IIngredient;import crafttweaker.events.IEventManager; 
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.event.PlayerInteractBlockEvent;
import mods.ResearchTable;
import ResearchTable.Category;
import ResearchTable.Builder;
var ImmersiveEngineeringGuide = ResearchTable.addCategory(<immersiveengineering:tool:3>,"ImmersiveEngineer");
ResearchTable.builder("GetTechImmersive",ImmersiveEngineeringGuide)
  .setIcons(<immersiveengineering:tool:3>)
  .setTitle("沉浸工程")
  .setDescription("Des")
  .addCondition(<immersiveengineering:tool>,<minecraft:book>,<liquid:creosote>*1000,<ordinarycoins:coinbronze>*25)
  .setRewardStages("immersive_engineer")
  .setRewardCommands("/tellraw @a {\"text\":\" \",\"extra\":[{\"selector\":\"@s\"},{\"text\":\" 完成了沉浸工程的初期研究\"}]}")
  .setRewardItems(<immersiveengineering:tool:3>)
  .setNoMaxCount()
  .build();
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