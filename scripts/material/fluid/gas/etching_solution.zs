import mods.mekatweaker.Gas;
import mods.mekatweaker.GasFactory;
var EtchingSolution = GasFactory.createGas("etching_solution");
EtchingSolution.setIcon("blocks/etching_solution");
EtchingSolution.setIconFlowing("blocks/etching_solution_flow");
EtchingSolution.setNeedFluid(true);
//EtchingSolution.setNeedBucket(true);
EtchingSolution.register();
mods.rustic.Condenser.addRecipe(<opencomputers:material:1>,[<ore:dustSulfur>,<ore:dustIron>,<ore:dustSulfur>],null,<ore:itemEmptyBucket>,<liquid:water>*256,1000);