#reloadable
#loader mekatweaker
#priority 999
import mods.mekatweaker.Gas;
import mods.mekatweaker.GasFactory;
var EtchingSolution = GasFactory.createGas("etching_solution");
EtchingSolution.setIcon("blocks/etching_solution");
EtchingSolution.setIconFlowing("blocks/etching_solution_flow");
//EtchingSolution.setNeedFluid(true);
//EtchingSolution.setNeedBucket(true);
EtchingSolution.register();