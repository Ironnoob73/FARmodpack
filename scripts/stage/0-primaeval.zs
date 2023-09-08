import crafttweaker.item.IIngredient;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

val paper=<ore:paper>;
val fiber=<ore:itemTieNormal>;fiber.add(<sevendaystomine:plantfiber>,<emergingtechnology:syntheticsilk>,<minecraft:string>);
val stick=<minecraft:stick>;
val plank=<sevendaystomine:woodplank>;
val stone=<sevendaystomine:smallstone>;

recipes.removeByRecipeName("sevendaystomine:stone_axe");
recipes.addShaped("rough_stone_axe",<sevendaystomine:stoneaxe>,[[stone,fiber],[stick,null]]);
recipes.removeByRecipeName("sevendaystomine:stone_shovel");
recipes.addShaped("rough_stone_shovel",<sevendaystomine:stoneshovel>,[[null,fiber],[stick,stone]]);
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

recipes.addShapeless("woodsticks_by_axe",stick*2,[<sevendaystomine:stoneaxe>.anyDamage().transformDamage(1),<sevendaystomine:woodplank>]);
recipes.addShapedMirrored("stickblock_weak",<randomthings:blockofsticks>,[
[fiber,stick],
[stick,fiber]]);
recipes.remove(<minecraft:wooden_pickaxe>);
/*recipes.addShapedMirrored("wooden_pickaxe",<minecraft:wooden_pickaxe>,[
[fiber,plank],
[null,stick]]);*/
val dismantleEmptycan = LootTweaker.newTable("tetra:dismantle_emptycan");
    val dismantleEmptycanPool = dismantleEmptycan.addPool("dismantle_emptycan", 1, 1, 0, 0);
        dismantleEmptycanPool.addItemEntry(<sevendaystomine:scrapiron>,1,0,[
            {"function": "tetra:fortune_enchant","count": {"min": 0,"max": 0.3},"requiredCapability": "hammer","capabilityLevel": 1}],
            []);
val boardsFromLog = LootTweaker.newTable("tetra:boards_from_log");
    val boardsFromLogPool = boardsFromLog.addPool("boards_from_tree", 1, 1, 0, 0);
        boardsFromLogPool.addItemEntry(<sevendaystomine:woodplank>,1,0,[
            {"function": "minecraft:set_count","count":{"max":4,"min":1}},
            {"function": "tetra:fortune_enchant","count": {"min": 0,"max": 0.3},"requiredCapability": "axe","capabilityLevel": 1}],
            []);
val sticksFromBoard = LootTweaker.newTable("tetra:sticks_from_board");
    val sticksFromBoardPool = sticksFromBoard.addPool("sticks_from_board", 1, 1, 0, 0);
        sticksFromBoardPool.addItemEntry(<minecraft:stick>,1,0,[
            {"function": "minecraft:set_count","count":{"max":2,"min":1}},
            {"function": "tetra:fortune_enchant","count": {"min": 0,"max": 0.3},"requiredCapability": "axe","capabilityLevel": 1}],
            []);

recipes.remove(<ftgumod:idea_table>);
recipes.addShapedMirrored("idea_table",<ftgumod:idea_table>,[
[<ftgumod:parchment_empty>,plank],
[plank,<randomthings:blockofsticks>]]);

recipes.remove(<minecraft:crafting_table>);
recipes.addShapedMirrored("crafting_table",<minecraft:crafting_table>,[
[plank,<sevendaystomine:stoneaxe>.anyDamage().transformDamage(1)],
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

val plankOak=<minecraft:planks>;
val plankSpruce=<minecraft:planks:1>;
val plankBirch=<minecraft:planks:2>;
val plankJungle=<minecraft:planks:3>;
val plankAcacia=<minecraft:planks:4>;
val plankDarkoak=<minecraft:planks:5>;
val plankSarcedoak=<biomesoplenty:planks_0>;
val plankCherry=<biomesoplenty:planks_0:1>;
val plankUmbran=<biomesoplenty:planks_0:2>;
val plankFir=<biomesoplenty:planks_0:3>;
val plankEthereal=<biomesoplenty:planks_0:4>;
val plankMagic=<biomesoplenty:planks_0:5>;
val plankMangrove=<biomesoplenty:planks_0:6>;
val plankPalm=<biomesoplenty:planks_0:7>;
val plankRedwood=<biomesoplenty:planks_0:8>;
val plankWillow=<biomesoplenty:planks_0:9>;
val plankPine=<biomesoplenty:planks_0:10>;
val plankHellbark=<biomesoplenty:planks_0:11>;
val plankJacaranda=<biomesoplenty:planks_0:12>;
val plankMahogany=<biomesoplenty:planks_0:13>;
val plankEbony=<biomesoplenty:planks_0:14>;
val plankEucalyptus=<biomesoplenty:planks_0:15>;
val plankSpectre=<randomthings:spectreplank>;
val plankOlive=<rustic:planks>;
val plankIronwood=<rustic:planks:1>;
recipes.addShapeless("oakplanks_readd",plankOak*4,[<minecraft:log>]);
recipes.addShapeless("spruceplanks_readd",plankSpruce*4,[<minecraft:log:1>]);
recipes.addShapeless("birchplanks_readd",plankBirch*4,[<minecraft:log:2>]);
recipes.addShapeless("jungleplanks_readd",plankJungle*4,[<minecraft:log:3>]);
recipes.addShapeless("acaciaplanks_readd",plankAcacia*4,[<minecraft:log2>]);
recipes.addShapeless("darkoakplanks_readd",plankDarkoak*4,[<minecraft:log2:1>]);
val boardFromPlank = LootTweaker.newTable("tetra:board_from_plank");
    val boardFromPlankPool = boardFromPlank.addPool("board_from_plank", 1, 1, 0, 0);
        boardFromPlankPool.addItemEntry(<sevendaystomine:woodplank>,1,0,[],[]);
recipes.addShaped("sticks_from_plank",<minecraft:stick>*2,[[<ore:plankWood>],[<ore:plankWood>]]);
recipes.removeByRecipeName("randomthings:customworkbench");
val workbench=<ore:workbench>;workbench.add(<randomthings:customworkbench>);
recipes.addShaped("craftingtable_oak",<randomthings:customworkbench>.withTag({woodName:"minecraft:planks",woodMeta:0}),
[[plankOak,plankOak],[plankOak,plankOak]]);
recipes.addShaped("craftingtable_spruce",<randomthings:customworkbench>.withTag({woodName:"minecraft:planks",woodMeta:1}),
[[plankSpruce,plankSpruce],[plankSpruce,plankSpruce]]);
recipes.addShaped("craftingtable_birch",<randomthings:customworkbench>.withTag({woodName:"minecraft:planks",woodMeta:2}),
[[plankBirch,plankBirch],[plankBirch,plankBirch]]);
recipes.addShaped("craftingtable_jungle",<randomthings:customworkbench>.withTag({woodName:"minecraft:planks",woodMeta:3}),
[[plankJungle,plankJungle],[plankJungle,plankJungle]]);
recipes.addShaped("craftingtable_acacia",<randomthings:customworkbench>.withTag({woodName:"minecraft:planks",woodMeta:4}),
[[plankAcacia,plankAcacia],[plankAcacia,plankAcacia]]);
recipes.addShaped("craftingtable_darkoak",<randomthings:customworkbench>.withTag({woodName:"minecraft:planks",woodMeta:5}),
[[plankDarkoak,plankDarkoak],[plankDarkoak,plankDarkoak]]);
recipes.addShaped("craftingtable_sarcedoak",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:0}),
[[plankSarcedoak,plankSarcedoak],[plankSarcedoak,plankSarcedoak]]);
recipes.addShaped("craftingtable_cherry",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:1}),
[[plankCherry,plankCherry],[plankCherry,plankCherry]]);
recipes.addShaped("craftingtable_umbran",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:2}),
[[plankUmbran,plankUmbran],[plankUmbran,plankUmbran]]);
recipes.addShaped("craftingtable_fir",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:3}),
[[plankFir,plankFir],[plankFir,plankFir]]);
recipes.addShaped("craftingtable_ethereal",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:4}),
[[plankEthereal,plankEthereal],[plankEthereal,plankEthereal]]);
recipes.addShaped("craftingtable_magic",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:5}),
[[plankMagic,plankMagic],[plankMagic,plankMagic]]);
recipes.addShaped("craftingtable_mangrove",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:6}),
[[plankMangrove,plankMangrove],[plankMangrove,plankMangrove]]);
recipes.addShaped("craftingtable_palm",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:7}),
[[plankPalm,plankPalm],[plankPalm,plankPalm]]);
recipes.addShaped("craftingtable_redwood",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:8}),
[[plankRedwood,plankRedwood],[plankRedwood,plankRedwood]]);
recipes.addShaped("craftingtable_willow",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:9}),
[[plankWillow,plankWillow],[plankWillow,plankWillow]]);
recipes.addShaped("craftingtable_pine",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:10}),
[[plankPine,plankPine],[plankPine,plankPine]]);
recipes.addShaped("craftingtable_hellbark",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:11}),
[[plankHellbark,plankHellbark],[plankHellbark,plankHellbark]]);
recipes.addShaped("craftingtable_jacaranda",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:12}),
[[plankJacaranda,plankJacaranda],[plankJacaranda,plankJacaranda]]);
recipes.addShaped("craftingtable_mahogany",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:13}),
[[plankMahogany,plankMahogany],[plankMahogany,plankMahogany]]);
recipes.addShaped("craftingtable_ebony",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:14}),
[[plankEbony,plankEbony],[plankEbony,plankEbony]]);
recipes.addShaped("craftingtable_eucalyptus",<randomthings:customworkbench>.withTag({woodName:"biomesoplenty:planks_0",woodMeta:15}),
[[plankEucalyptus,plankEucalyptus],[plankEucalyptus,plankEucalyptus]]);
recipes.addShaped("craftingtable_spectre",<randomthings:customworkbench>.withTag({woodName:"randomthings:spectreplank",woodMeta:0}),
[[plankSpectre,plankSpectre],[plankSpectre,plankSpectre]]);
recipes.addShaped("craftingtable_olive",<randomthings:customworkbench>.withTag({woodName:"rustic:planks",woodMeta:0}),
[[plankOlive,plankOlive],[plankOlive,plankOlive]]);
recipes.addShaped("craftingtable_ironwood",<randomthings:customworkbench>.withTag({woodName:"rustic:planks",woodMeta:1}),
[[plankIronwood,plankIronwood],[plankIronwood,plankIronwood]]);
val crate=<ore:cfmCrate>;crate.add(<cfm:crate>,<cfm:crate_spruce>,<cfm:crate_birch>,<cfm:crate_jungle>,<cfm:crate_acacia>,<cfm:crate_dark_oak>);
recipes.removeByRecipeName("cfm:crate");
recipes.addShaped("crate_oak",<cfm:crate>,[[null,plankOak,null],[plankOak,null,plankOak],[null,plankOak,null]]);
recipes.removeByRecipeName("cfm:crate_spruce");
recipes.addShaped("crate_spruce",<cfm:crate_spruce>,[[null,plankSpruce,null],[plankSpruce,null,plankSpruce],[null,plankSpruce,null]]);
recipes.removeByRecipeName("cfm:crate_birch");
recipes.addShaped("crate_birch",<cfm:crate_birch>,[[null,plankBirch,null],[plankBirch,null,plankBirch],[null,plankBirch,null]]);
recipes.removeByRecipeName("cfm:crate_jungle");
recipes.addShaped("crate_jungle",<cfm:crate_jungle>,[[null,plankJungle,null],[plankJungle,null,plankJungle],[null,plankJungle,null]]);
recipes.removeByRecipeName("cfm:crate_acacia");
recipes.addShaped("crate_acacia",<cfm:crate_acacia>,[[null,plankAcacia,null],[plankAcacia,null,plankAcacia],[null,plankAcacia,null]]);
recipes.removeByRecipeName("cfm:crate_dark_oak");
recipes.addShaped("crate_dark_oak",<cfm:crate_dark_oak>,[[null,plankDarkoak,null],[plankDarkoak,null,plankDarkoak],[null,plankDarkoak,null]]);
val OtherPlank = [
    <biomesoplenty:planks_0:*>,
    <randomthings:spectreplank>,
    <rustic:planks:*>,
    <advancedrocketry:planks>,
    <chisel:planks-oak:*>,
    <chisel:planks-spruce:*>,
    <chisel:planks-birch:*>,
    <chisel:planks-jungle:*>,
    <chisel:planks-acacia:*>,
    <chisel:planks-dark-oak:*>,
    <defiledlands:tenebra_planks>,
    <erebus:planks:*>,
    <extraplanets:kepler22b_planks:*>,
    <extrautils2:ironwood_planks:*>,
    <galaxyspace:barnarda_c_blocks:6>,
    <quark:stained_planks:*>,
    <quark:vertical_planks:*>
]as IIngredient[];
for item in OtherPlank{recipes.addShaped(<cfm:crate>,[[null,item,null],[item,null,item],[null,item,null]]);}

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