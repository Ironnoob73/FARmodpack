/*#loader crafttweaker reloadable
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.BlockPlaceEvent;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    if(event.player.world.remote) return;
    var player as IPlayer = event.player;
    var helditem = event.player.currentItem;
    val block as IBlock = event.block;
    var blockpos as IBlockPos=event.position;
    if(!isNull(block) && helditem.definition.id=="tetra:duplex_tool_modular" && block.definition.id=="randomthings:blockofsticks"){
        event.BlockPlaceEvent();
        没有替换方块的方法？
    }
});*/