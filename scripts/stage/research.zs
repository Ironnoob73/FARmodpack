import mods.ResearchTable;
import ResearchTable.Category;
import ResearchTable.Builder;
#Immersive
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