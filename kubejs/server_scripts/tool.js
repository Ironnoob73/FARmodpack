onEvent('item.registry', event => {
  event.create('iron_wood_hammer', item => {
    item.displayName('Test Item')
  })
})
onEvent('item.registry.tool_tiers', event => {
    event.add('iron_wood_hammer', tier => {
      tier.uses = 250
      tier.speed = 6.0
      tier.attackDamageBonus = 2.0
      tier.level = 2
      tier.enchantmentValue = 14
      tier.repairIngredient = '#forge:ingots/iron'
    })
  })