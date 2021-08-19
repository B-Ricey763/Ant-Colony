local TableUtil = {}

--[[
	Returns the index of a value in a table
	If it doesn't exist, returns nil
]]
function TableUtil.find(tab, value)
	assert(type(tab) == "table", "First argument must be a table")

	for i, v in ipairs(tab) do
		if v == value then
			return i
		end
	end
	return nil
end

--[[
	Shortcut for creating a table. In the original roblox
	impl, it allocates memory for count, but I can't do that.
	This means that if initialValue is nil, this function is essentially
	useless
]]
function TableUtil.create(count, initialValue)
	assert(type(count) == "number", "First argument must be a number")

	local t = {}
	for i = 1, count do
		t[i] = initialValue
	end
	return t
end

function TableUtil.clear(tab)
	for k, v in pairs(tab) do
		tab[k] = nil
	end
end

--[[
	Calls a function for each index of a table.
	The return of the function is put into a new table
]]
function TableUtil.map(tab, callback)
	assert(type(tab) == "table", "First argument must be a table")
	assert(type(callback) == "function", "Second argument must be a function")

	local newTab = {}
	for k, v in pairs(tab) do
		newTab[k] = callback(v, k, tab)
	end
	return newTab
end

--[[
	Tries to print a table in a human readable way.
	Doesn't handle arrays very well, it treats all keys as 
	dict keys (array keys don't matter, but are still printed).
	In order to prevent some infinite recursion from happening with a 
	cyclic table reference, I have a hard coded max.
	I'm not very good at string formatting, as you can see
]]
function TableUtil.print(tab)
	assert(type(tab) == "table", "First agrument must be a table")
	-- I'm too stupid to check for cyclic references,
	-- so I'll just leave a hard-code max table print limit
	local MAX_DEPTH = 3

	-- not neccessary, just less characters
	local function GetTabs(depth)
		return string.rep("\t", depth)
	end

	-- recursive func responsible for generating string
	local function GetStr(t, depth)
		local str = "{\n"
		for k, v in pairs(t) do
			if type(v) == "table" and depth <= MAX_DEPTH then
				str = string.format("%s%s%s = %s", str, GetTabs(depth), k, GetStr(v, depth + 1))
			else
				str = string.format("%s%s%s = %s,\n", str, GetTabs(depth), k, v)
			end
		end
		return string.format("%s%s},\n", str, GetTabs(depth - 1))
	end
	print(GetStr(tab, 1))
end


return TableUtil