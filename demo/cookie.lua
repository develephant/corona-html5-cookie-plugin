--#############################################################################
--# Cookie Plugin for Corona HTML5
--# (c)2018 C. Byerley (develephant)
--#############################################################################
local lib

local platform = system.getInfo("platform")

if platform == 'html5' then
	-- use native JS plugin
	lib = require("cookie_js")
else
	-- wrapper for non web platforms
	local CoronaLibrary = require "CoronaLibrary"
	-- Create stub library for simulator
	lib = CoronaLibrary:new{ name='cookie', publisherId='com.develephant' }

	-- Default implementations
	local function defaultFunction()
    print( "WARNING: The '" .. lib.name .. "' library is not available on this platform." )
    return "HTML5 Build Required"
	end

	lib.set = defaultFunction
	lib.get = defaultFunction
	lib.delete = defaultFunction
end

-- Return an instance
return lib