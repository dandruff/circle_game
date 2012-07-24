--[[
engine.lua

Reuben DeLeon c2012
All rights reserved
]]

-- engine
module(..., package.seeall)

local levels = require("levels")

local currentLevel_index
local currentLevel_move
local currentLevel_draw


currentLocation = {
  x = -1, 
  y = -1,
}

moveCharacter = {
  ["Up"] = function()
      local level, level_mov, levels.getLevel(currentLevel)
    end, 
  ["Down"] = function()
  
    end,
  ["Left"] = function()
  
    end,
  ["Right"] = function()
  
    end,
}