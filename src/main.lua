--[[
main.lua

Reuben DeLeon c2012
All rights reserved
]]

local levels = require("levels")
local engine = require("engine")

display.setStatusBar(display.HiddenStatusBar)

engine.initEngine()

local gameTime = 0

function onUpdate()
  gameTime = gameTime + 1
  
  engine.updateDraw(gameTime)
end

Runtime:addEventListener("enterFrame", onUpdate)
