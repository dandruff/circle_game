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
      goto_map = 2,   -- map index 
      goto_pos = 5,   -- level string index
    },
    ["B"] = {
      goto_map = 3,   -- map index
      goto_pos = 277, -- level string index
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
  return level_db[level_index], movlevel_db[level_index], cfglevel_db[level_index]
end
--    10X26

local LEVEL_2 = [==[
+===   ===================+
|      |                  |
|   T  |    T      T      |
|      |____              |
|            \____________|
|                         
|       ____ /------------|
|      |                  |
|   T  |    T      T      |
|      |                  |
+=========================+
]==]

local LEVEL_2_MOV = [==[
....AAA....................
.      .                   .
.   .  .    .       .      .
.      .....               .
.          .................
.                          A
.          .................
.      .....               .
.   .  .                   .
.      .                   .
...........................
]==]

local LEVEL_3 = [==[
+=== ++===================+
|          |=======|      |
|  T       |<(^^,)>|      |
|          ======++=      |
|                         |
                        
|                         |
|  T                      |
|                         |
|                         |
+=========================+
]==]

local LEVEL_3_MOV = [==[
...........................
.          .........       .
.  .       .........       .
.          .........       .
.                          .
A                          A
.                          .
.  .                       .
.                          .
.                          .
...........................
]==]
