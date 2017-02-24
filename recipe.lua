data:extend(
{
  {
    type = "recipe-category",
    name = "fluid-furnace"
  },
  {
    type = "recipe",
    name = "light-oil-to-petroleum-gas",
    category = "fluid-furnace",
    enabled = "true",
    energy_required = 2,
    ingredients =
    {
      {type="fluid", name="light-oil", amount=1}
    },
    results=
    {
      {type="fluid", name="petroleum-gas", amount=4}
    },
    subgroup = "fluid",
    order = "a[oil-processing]-a[advance-light-oil-processing]"
  },
  {
    type = "recipe",
    name = "heated-light-oil-to-heated-petroleum-gas",
    category = "crafting-with-fluid",
    enabled = true,
    energy_required = 1,
    ingredients = 
    {
      {type="fluid", name="light-oil", amount=1, minimum_temperature = 75, maximum_temperature = 90}
    },
    results = 
    {
      {type="fluid", name="petroleum-gas", amount=1, temperature=80}
    },
    subgroup = "fluid",
    order = "a[oil-processing]-a[heated-light-oil-processing]"
  }
})
