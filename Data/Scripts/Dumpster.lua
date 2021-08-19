--[[
	A roblox module ported to core. Here is the original: https://gist.github.com/Fraktality/f0ab4ad950698e9f08bb01bea486845e
	To get the API, go to the official post: https://forums.coregames.com/t/dumpster-for-all-your-garbage-collection-needs-a-port-of-maid-janitor-to-core/1852

	Very similar to maid or janitor, just a lot simpler
]]
local Dumpster = {} 
Dumpster.__index = Dumpster

local finalizers = {
	CoreObject = CoreObject.Destroy,
	EventListener = EventListener.Disconnect,
}

local function AssignFinalizer(item)
	local itemType = type(item)
	if itemType == "function" then
		return item
	end
	for typeName, finalizer in pairs(finalizers) do
		if itemType == "userdata" and item:IsA(typeName) then
			return finalizer
		end
	end
	error(("Can't dump item of type %q"):format(itemType == "userdata" and item.type or itemType))
end

function Dumpster.New()
	return setmetatable({}, Dumpster)
end

--[[
	Add an item that will eventually be disposed of
]]
function Dumpster:Dump(item)
	self[item] = AssignFinalizer(item)
	return item
end

function Dumpster:Burn()
	for item, finalizer in pairs(self) do
		finalizer(item)
	end

	-- In absense of table.clear, we have to manualy do this
	for k, v in pairs(self) do
		self[k] = nil
	end
end

return Dumpster