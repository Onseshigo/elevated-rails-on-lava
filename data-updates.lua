require("prototypes.technology")

local changed_tiles = {}
local changed_tiles_setting = settings.startup["elevated-rails-on-lava-changed-tiles"].value
for tile in changed_tiles_setting:gmatch("([^,]+)") do
    table.insert(changed_tiles, tile:match("^%s*(.-)%s*$"))
end

for _, tile in ipairs(changed_tiles) do
    if data.raw.tile[tile] then
        data.raw.tile[tile].collision_mask.layers["rail"] = nil
        data.raw.tile[tile].collision_mask.layers["rail_support"] = true
    else
        log("tile not found: \"" .. tile .. "\"")
    end
end