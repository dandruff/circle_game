--[[
main.lua

Reuben DeLeon c2012
All rights reserved
]]

local levels = require("levels")

-- Engine Stuff
local myFont = native.systemFont

for k, v in pairs(native.getFontNames()) do
  if v == "Courier New" then
    myFont = "Courier New"
    break
  end
end

local textTitle = display.newText( "The Circle Game!", 26, -26, myFont, 22 )

local level, level_mov, level_config = levels.getLevel(1)


local textObject = display.newText(level, 26, 0, myFont, 16 )
textObject:setTextColor( 255,255,255 )
