--[[
levels.lua

Reuben DeLeon c2012
All rights reserved
]]

-- levels
module(..., package.seeall)


LEVEL_WIDTH = 27
LEVEL_HEIGHT = 10

local LEVEL_1 = [==[
+===   ===================+
|                         |
|                         |
|                         |
|                         |
|              __         |
|             /||\        |
|            <O__O>       |
|             /__\        |
|             _][_\       |
+=========================+
]==]

local LEVEL_1_MOV = [==[
....AAA....................
.                         .
.                    S    .
.                         .
.                         .
.              ..         .
.             ....        .
.            ......       .
.             ....        .
.              BB..       .
...........................
]==]

local LEVEL_1_CONFIG = {
  lookup = {
    ["A"] = {
      goto = 2,   -- map index 
      from = 5,   -- level string index
    },
    ["B"] = {
      goto = 3,   -- map index
      from = 277, -- level string index
    },
  },
  start = 79,
}


local level_db = {
  [1] = LEVEL_1,
}

local movlevel_db = {
  [1] = LEVEL_1_MOV,
}

local cfglevel_db = {
  [1] = LEVEL_1_CONFIG,
}

function getLevel(level_index)
  return level_db[level_index], movlevel_db[level_index], cfglevel_db
end
