--[[
engine.lua

Reuben DeLeon c2012
All rights reserved
]]

-- engine
module(..., package.seeall)

local levels = require("levels")

local currentLevel_ndx
local currentLevel_mov
local currentLevel_gfx
local currentLevel_cfg

local textObject_Map

local currentLocation
local playerChar = "O"

function initEngine()
  -- Engine Stuff
  local myFont = native.systemFont

  for k, v in pairs(native.getFontNames()) do
    if v == "Courier New" then
      myFont = "Courier New"
      break
    end
  end

  textObject_Map = display.newText("", 160, 70, myFont, 16 )
  textObject_Map:setTextColor( 255,255,255 )
end

function updateDraw(gameTime)
  if currentLevel_ndx then
    local level = string.sub(currentLevel_gfx, 1)
    
    -- draw the person    
    level = string.sub(level, 1, currentLocation - 1) .. playerChar .. string.sub(level, currentLocation + 1, -1)
    
    -- draw the current level
    textObject_Map.text = level
  else  
    setLevel(1)
  end
end

function setLevel(levelIndex)
  currentLevel_ndx = levelIndex
  currentLevel_gfx, currentLevel_mov, currentLevel_cfg = levels.getLevel(levelIndex)
  
  currentLocation = currentLevel_cfg.start
end

local function teleportAttempt(moveSpace)


end

moveCharacter = {
  ["Up"] = function()
      local attempt = currentLocation - levels.LEVEL_WIDTH
      
      -- attempt is out of bounds
      if attempt <= 0 then return end
      
      local moveSpace = currentLevel_mov[attempt]
      
      if moveSpace == '.' then return end
      
      currentLocation = attempt
      
      teleportAttempt(moveSpace)
    end, 
  ["Down"] = function()
      local attempt = currentLocation + levels.LEVEL_WIDTH
      
      -- attempt is out of bounds
      if attempt > (levels.LEVEL_WIDTH * levels.LEVEL_HEIGHT) then return end
      
      local moveSpace = currentLevel_mov[attempt]
      
      if moveSpace == '.' then return end
      
      currentLocation = attempt
      
      teleportAttempt(moveSpace)
    end,
  ["Left"] = function()
      local attempt = currentLocation - 1
      
      -- attempt is out of bounds
      if attempt % levels.LEVEL_WIDTH == 0 then return end
      
      local moveSpace = currentLevel_mov[attempt]
      
      if moveSpace == '.' then return end
      
      currentLocation = attempt
      
      teleportAttempt(moveSpace)
    end,
  ["Right"] = function()
      local attempt = currentLocation + 1
      
      -- attempt is out of bounds
      if attempt % levels.LEVEL_WIDTH == levels.LEVEL_WIDTH - 1 then return end
      
      local moveSpace = currentLevel_mov[attempt]
      
      if moveSpace == '.' then return end
      
      currentLocation = attempt
      
      teleportAttempt(moveSpace)
    end,
}