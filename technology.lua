data:extend(
{
  {
    type = "technology",
    name = "long-research",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
    },
    prerequisites = {},
    unit =
    {
      count = 1,
      ingredients = {
        {"science-pack-1", 1},
      },
      -- time = 600000 -- This is 10x the number of steps that rocket defence uses,
        -- roughly the limit of precision that we can achieve
      time = 600
    },
    order = "a"
  }
})
