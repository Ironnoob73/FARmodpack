import crafttweaker.item.IIngredient;
val paper=<ore:paper>;
val fiber=<sevendaystomine:plantfiber>;
val stick=<minecraft:stick>;
val plank=<sevendaystomine:woodplank>;
val stone=<sevendaystomine:smallstone>;

recipes.remove(<ftgumod:parchment_empty>);
recipes.addShapeless("parchment_from_paper",<ftgumod:parchment_empty>,[stick,stick,paper]);
val Cloth=<ore:cloth>;Cloth.add(<sevendaystomine:cloth>,<extraplanets:cloth>,<immersiveengineering:material:5>);
recipes.addShapeless("parchment_from_cloth",<ftgumod:parchment_empty>,[stick,stick,<ore:cloth>]);
recipes.addShapedMirrored("parchment_from_waste",<ftgumod:parchment_empty>,[[stick,<emergingtechnology:paperwaste>],[<emergingtechnology:paperwaste>,stick]]);
val Book=<ore:book>;Book.add(<minecraft:book>,<sevendaystomine:book_forging>,<sevendaystomine:book_ammo>,<sevendaystomine:book_computers>,<sevendaystomine:book_concrete>,<sevendaystomine:book_electricity>,<sevendaystomine:book_chemistry>,<sevendaystomine:book_metalworking>,<sevendaystomine:book_pistol>,<sevendaystomine:book_minibike>);
recipes.addShapeless("paper_from_book",<minecraft:paper>*3,[<ore:book>]);

recipes.addShaped("crude_bow_half",<sevendaystomine:crude_bow:10>,[
[stick,fiber],
[stick,fiber]]);
recipes.addShaped("fiber_hat_half",<sevendaystomine:fiber_hat:11>,[
[paper,paper],
[fiber,fiber]]);
recipes.addShaped("fiber_chestplate_half",<sevendaystomine:fiber_chestplate:16>,[
[paper,fiber],
[fiber,paper]]);
recipes.addShaped("fiber_leggings_half",<sevendaystomine:fiber_leggings:15>,[
[fiber,paper],
[paper,fiber]]);
recipes.addShaped("fiber_boots_half",<sevendaystomine:fiber_boots:13>,[
[fiber,fiber],
[paper,paper]]);

recipes.addShapeless("woodplanks_by_axe",plank*2,[<sevendaystomine:stoneaxe>.anyDamage().transformDamage(1),<ore:logWood>]);
recipes.addShapeless("woodsticks_by_axe",stick*2,[<sevendaystomine:stoneaxe>.anyDamage().transformDamage(1),<sevendaystomine:woodplank>]);
recipes.addShapedMirrored("stickblock_weak",<randomthings:blockofsticks>,[
[fiber,stick],
[stick,fiber]]);
recipes.remove(<minecraft:wooden_pickaxe>);
/*recipes.addShapedMirrored("wooden_pickaxe",<minecraft:wooden_pickaxe>,[
[fiber,plank],
[null,stick]]);*/
recipes.addShapeless("scrapiron_from_emptycan",<sevendaystomine:scrapiron>,[<sevendaystomine:emptycan>]);

recipes.remove(<ftgumod:idea_table>);
recipes.addShapedMirrored("idea_table",<ftgumod:idea_table>,[
[<ftgumod:parchment_empty>,plank],
[plank,<randomthings:blockofsticks>]]);

recipes.remove(<minecraft:crafting_table>);
recipes.addShapedMirrored("crafting_table",<minecraft:crafting_table>,[
[plank,<sevendaystomine:stoneaxe>.anyDamage()],
[<sevendaystomine:scrapiron>,<randomthings:blockofsticks>]]);

//recipes.addShapeless("woodplanks_in_table",plank*4,[<ore:logWood>,null,null,null,null,null,null,null,null]);
recipes.remove(<cyclicmagic:block_fragile>);
recipes.addShaped("frame_thin",<cyclicmagic:block_fragile>*4,[
[stick,plank,stick],
[plank,null,plank],
[stick,plank,stick]]);
recipes.remove(<sevendaystomine:oakplanksframe>);
recipes.addShaped("frame_oak",<sevendaystomine:oakplanksframe>*4,[
[stick,null,stick],
[null,<minecraft:log>,null],
[stick,null,stick]]);
recipes.remove(<sevendaystomine:birchplanksframe>);
recipes.addShaped("frame_birch",<sevendaystomine:birchplanksframe>*4,[
[stick,null,stick],
[null,<minecraft:log:2>,null],
[stick,null,stick]]);
recipes.remove(<sevendaystomine:spruceplanksframe>);
recipes.addShaped("frame_spruce",<sevendaystomine:spruceplanksframe>*4,[
[stick,null,stick],
[null,<minecraft:log:1>,null],
[stick,null,stick]]);
recipes.remove(<sevendaystomine:jungleplanksframe>);
recipes.addShaped("frame_jungle",<sevendaystomine:jungleplanksframe>*4,[
[stick,null,stick],
[null,<minecraft:log:3>,null],
[stick,null,stick]]);
recipes.remove(<sevendaystomine:acaciaplanksframe>);
recipes.addShaped("frame_acacia",<sevendaystomine:acaciaplanksframe>*4,[
[stick,null,stick],
[null,<minecraft:log2>,null],
[stick,null,stick]]);
recipes.remove(<sevendaystomine:darkoakplanksframe>);
recipes.addShaped("frame_darkoak",<sevendaystomine:darkoakplanksframe>*4,[
[stick,null,stick],
[null,<minecraft:log2:1>,null],
[stick,null,stick]]);
val OtherWood = [
    <biomesoplenty:log_0:*>,
    <biomesoplenty:log_1:*>,
    <biomesoplenty:log_2:*>,
    <biomesoplenty:log_3:*>,
    <biomesoplenty:log_4:*>,
    <rustic:log:*>,
]as IIngredient[];
for item in OtherWood{recipes.addShaped(<sevendaystomine:oakplanksframe>*4,[
[stick,null,stick],
[null,item,null],
[stick,null,stick]]);}

recipes.addShapeless("oakplanks_readd",<minecraft:planks>*4,[<minecraft:log>]);
recipes.addShapeless("spruceplanks_readd",<minecraft:planks:1>*4,[<minecraft:log:1>]);
recipes.addShapeless("birchplanks_readd",<minecraft:planks:2>*4,[<minecraft:log:2>]);
recipes.addShapeless("jungleplanks_readd",<minecraft:planks:3>*4,[<minecraft:log:3>]);
recipes.addShapeless("acaciaplanks_readd",<minecraft:planks:4>*4,[<minecraft:log2>]);
recipes.addShapeless("darkoakplanks_readd",<minecraft:planks:5>*4,[<minecraft:log2:1>]);

recipes.remove(<futuremc:campfire>);
recipes.addShaped("camp_fire",<futuremc:campfire>,[
[null,stick,null],
[stick,<ore:crystalCoal>,stick],
[plank,plank,plank]]);
mods.futuremc.Campfire.addRecipe(<minecraft:stick>,<minecraft:torch>,300);
mods.futuremc.Campfire.addRecipe(<ore:logWood>,<minecraft:coal:1>,1200);
mods.futuremc.Campfire.addRecipe(<minecraft:egg>,<with_thursday:sun_egg>,600);

recipes.remove(<sevendaystomine:bellows>);
recipes.addShaped("bellows",<sevendaystomine:bellows>,[
[paper,paper,stick],
[paper,paper,stick],
[stick,stick,null]]);
recipes.remove(<sevendaystomine:forge>);
recipes.addShaped("forge",<sevendaystomine:forge>,[
[null,<sevendaystomine:smallstone>,null],
[<sevendaystomine:smallstone>,<sevendaystomine:scrapiron>,<sevendaystomine:smallstone>],
[<sevendaystomine:smallstone>,<sevendaystomine:smallstone>,<sevendaystomine:smallstone>]]);

#Tetera
recipes.addShaped("cobblestone_hammer",<tetra:duplex_tool_modular>.withTag({"duplex/basic_hammer_right_material": "basic_hammer/log", "duplex/binding_material": "duplex_binding/vine", "duplex/basic_hammer_left_material": "basic_hammer/log", honing_progress: 620, HideFlags: 1, "duplex/handle": "duplex/basic_handle", "duplex/binding": "duplex/binding", "duplex/head_left": "duplex/basic_hammer_left", "duplex/basic_handle_material": "basic_handle/stick", "duplex/head_right": "duplex/basic_hammer_right"}),[
[stone,fiber],
[stick,stone]]);