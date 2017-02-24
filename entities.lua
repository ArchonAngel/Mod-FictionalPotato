data:extend(
{
  {
    type = "furnace",
    name = "electric-furnace-2",
    icon = "__base__/graphics/icons/electric-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "electric-furnace-2"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 10},
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 2,
    crafting_categories = {"smelting", "fluid-furnace"},
    result_inventory_size = 0,
    crafting_speed = 2,
    energy_usage = "180kW",
    source_inventory_size = 0,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      animation_speed = 0.5,
      shift = {0.421875, 0}
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = true
    },
    fast_replaceable_group = "furnace"
  },
  {
    type = "locomotive",
    name = "turbo-locomotive",
    order = "xxx",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "diesel-locomotive"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-0.85, -2.6}, {0.9, 2.5}},
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 2000,
    max_speed = 12,
    max_power = "50000kW",
    reversing_power_modifier = 0.6,
    braking_force = 10000,
    friction_force = 0.0015,
    vertical_selection_shift = -0.5,
    -- this is a percentage of current speed that will be subtracted
    air_resistance = 0.002,
    connection_distance = 3.3,
    joint_distance = 4.6,
    energy_per_hit_point = 5,
    resistances =
    {
      {
        type = "fire",
        decrease = 15,
        percent = 50
      },
      {
        type = "physical",
        decrease = 15,
        percent = 30
      },
      {
        type = "impact",
        decrease = 50,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 30
      },
      {
        type = "acid",
        decrease = 10,
        percent = 20
      }
    },
    energy_source =
    {
      type = "burner",
      effectivity = 1000,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 210,
          position = {0, 0},
          slow_down_factor = 3,
          starting_frame = 1,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5,
          height = 2,
          height_deviation = 0.2,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.06,
        }
      }
    },
    front_light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -16},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -16},
        size = 2,
        intensity = 0.6
      }
    },
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    pictures =
    {
      priority = "very-low",
      width = 238,
      height = 234,
      direction_count = 256,
      filenames =
      {
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift = {0.0, -0.5}
    },

    wheels =
    {
      priority = "very-low",
      width = 115,
      height = 115,
      direction_count = 256,
      filenames =
      {
        "__base__/graphics/entity/diesel-locomotive/train-wheels-01.png",
        "__base__/graphics/entity/diesel-locomotive/train-wheels-02.png"
      },
      line_length = 8,
      lines_per_file = 16
    },

    rail_category = "regular",

    stop_trigger =
    {
      -- left side
      {
        type = "create-smoke",
        repeat_count = 125,
        entity_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the left
        speed = {-0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
      },
      -- right side
      {
        type = "create-smoke",
        repeat_count = 125,
        entity_name = "smoke-train-stop",
        initial_height = 0,
        -- smoke goes to the right
        speed = {0.03, 0},
        speed_multiplier = 0.75,
        speed_multiplier_deviation = 1.1,
        offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
      },
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/train-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5;
  },
  {
    type = "corpse",
    name = "small-biter-fast-corpse",
    icon = "__base__/graphics/icons/small-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-a[biter]-a[small]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 60,
    final_render_layer = "corpse",
    animation = biterdieanimation(smallbiterscale, small_biter_tint1, small_biter_tint2)
  },
  {
    type = "decorative",
    name = "decorative-with-object-layer-collisions",
    flags = {"placeable-neutral", "not-on-map"},
    collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"},
    icon = "__base__/graphics/icons/small-stone-rock.png",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    render_layer = "decorative",
    order = "z",
    pictures =
    {
      {
        filename = "__base__/graphics/entity/decorative/small-stone-rock/small-stone-rock-01.png",
        width = 47,
        height = 37,
        shift = {0.21, -0.18},
        tint = {r=1, g=0, b=0, a=1}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 }
  },
  {
    type = "electric-energy-interface",
    name = "electric-energy-interface-test",
    icon = "__base__/graphics/icons/small-biter-corpse.png",
    flags = {"placeable-neutral", "player-creation"},
    max_health = 500,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      buffer_capacity = "50MJ",
      usage_priority = "primary-input",
      input_flow_limit = "1500kW",
      output_flow_limit = "0kW"
    },
    order="b[bomb]",
    subgroup = "equipment"
  }
})

local roboport2 = util.table.deepcopy(data.raw.roboport.roboport)
roboport2.name = "roboport2"
roboport2.logistics_radius = 50
roboport2.minable.result = "roboport2"
roboport2.fast_replaceable_group = "roboport"
data.raw.roboport.roboport2 = roboport2

data.raw.roboport.roboport.fast_replaceable_group = "roboport"

local labfast = util.table.deepcopy(data.raw.lab.lab)
labfast.name = "labfast"
labfast.researching_speed = 2
data.raw.lab.labfast = labfast

local beacon2 = util.table.deepcopy(data.raw.beacon["beacon"])
beacon2.name = "beacon2"
beacon2.place_result = "beacon2"
beacon2.minable.result = "beacon2"
beacon2.fast_replaceable_group = "beacon"
data.raw.beacon.beacon2 = beacon2

local cannon_projectile2 = util.table.deepcopy(data.raw.projectile["cannon-projectile"])
cannon_projectile2.name = "test-decelerating-cannon-projectile"
cannon_projectile2.acceleration = -0.1
data.raw.projectile["test-decelerating-cannon-projectile"] = cannon_projectile2


data.raw.beacon["beacon"].fast_replaceable_group = "beacon"

local fastCorpse = util.table.deepcopy(data.raw.corpse["big-biter-corpse"])
fastCorpse.name = "fast-corpse"
fastCorpse.time_before_removed = 10
fastCorpse.dying_speed = 1
data.raw.corpse["fast-corpse"] = fastCorpse

data.raw["boiler"]["boiler"].additional_pastable_entities = {"pipe"}


local cargoWagon2 = util.table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
cargoWagon2.name = "cargo-wagon-with-grid"
cargoWagon2.equipment_grid = "large-equipment-grid"
cargoWagon2.minable = {mining_time = 1, result = cargoWagon2.name}
data.raw["cargo-wagon"][cargoWagon2.name] = cargoWagon2

local car2 = util.table.deepcopy(data.raw.car["car"])
car2.name = "car-with-grid"
car2.equipment_grid = "large-equipment-grid"
car2.minable = {mining_time = 1, result = car2.name}
data.raw.car[car2.name] = car2
