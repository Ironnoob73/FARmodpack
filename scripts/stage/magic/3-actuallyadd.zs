#priority 95
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager; 
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.PlayerLoggedInEvent;

mods.ItemStages.stageModItems("actually_additions","actuallyadditions");
val ActuallyAddItemOut = [
    <actuallyadditions:item_solidified_experience>,
    <actuallyadditions:item_misc:5>,
    <actuallyadditions:item_knife>
]as IIngredient[];
for item in ActuallyAddItemOut{mods.ItemStages.removeItemStage(item);}

val ActuallyAddItemHide = [
    <actuallyadditions:block_inputter>,
    <actuallyadditions:block_inputter_advanced>
]as IItemStack[];
for item in ActuallyAddItemHide{mods.jei.JEI.hide(item);}
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    for item in ActuallyAddItemHide{mods.jei.JEI.hide(item);}
});
events.onPlayerTick(function(event as PlayerTickEvent){
    var player = event.player;
    if(player.hasGameStage("actually_additions")){
        mods.jei.JEI.addItem(<actuallyadditions:block_inputter>);
        mods.jei.JEI.addItem(<actuallyadditions:block_inputter_advanced>);
    }
});