#!/opt/local/bin/lua

--
-- See ../README.md
--

--
-- Run as: lua ch-1.lua [plain | compute]
--

local PLAIN   =  0
local COMPUTE =  1

local type = PLAIN
if   #arg >= 1 and arg [1] == "compute"
then type = COMPUTE
end

if   type == PLAIN
then print ("%TEXT")
end

if   type == COMPUTE
then
end
