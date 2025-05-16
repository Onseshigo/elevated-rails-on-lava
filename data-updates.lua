require("prototypes.technology")

local changed_tiles = {}
local changed_tiles_setting = settings.startup["elevated-rails-on-lava-changed-tiles"].value
for tile in changed_tiles_setting:gmatch("([^,]+)") do
    table.insert(changed_tiles, tile:match("^%s*(.-)%s*$"))
end

for _, value in ipairs(changed_tiles) do
    data.raw.tile[value].collision_mask.layers["rail"] = nil
    data.raw.tile[value].collision_mask.layers["rail_support"] = true
end