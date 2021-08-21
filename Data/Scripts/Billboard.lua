--[[
	Wrapper for a UI panel to make it act like a billboard gui 
	from Roblox: https://developer.roblox.com/en-us/api-reference/class/BillboardGui

	It only models one BillboardGui behavior, offset (I can't do scale yet since
	problems arise with aspect ratios and keeping the gui looking the same). This means
	the ui panel will always be the same size on your screen, locked to the adornee's world position.

	When the adornee is destroyed, the billboard stops and destroys the UIPanel
	associated with it. Make sure to handle this in your code -- don't want to access a dead
	ui object!
	
	Example usage:

		local Billboard = require(script:GetCustomProperty("Billboard"))
		local uiPanel = script:GetCustomProperty("MyPanel"):WaitForObject()
		local randomCube = script:GetCustomProperty("Cube"):WaitForObject()
		-- Third parameter is optional
		local b = Billboard.New(randomCube, uiPanel, Vector3.New(100, 0, 100))

]]
local Billboard = {}
Billboard.__index = Billboard

--[[
	Create a new billboard. The adornee should
	either be a CoreObject or a player. World offset is
	an optional Vector3 parameter to offset the gui from the object
]]
function Billboard.New(adornee, uiPanel, worldOffset)
	assert(adornee:IsA("Player") or adornee:IsA("CoreObject"), "First arugment must be either a player or CoreObject")
	assert(uiPanel:IsA("UIPanel"), "Second argument must be a UIPanel")

	local self = setmetatable({}, Billboard)
	self.adornee = adornee
	self.panel = uiPanel
	self._worldOffset = worldOffset or Vector3.ZERO

	adornee.destroyEvent:Connect(function ()
		self:Destroy()
	end)
	uiPanel.destroyEvent:Connect(function ()
		self:Destroy()
	end)

	self:SetActive(true)

	return self
end

function Billboard:_setup()
	self._task = Task.Spawn(function()
		if Object.IsValid(self.adornee) then -- sometimes it could error without this line
			local screenPos = UI.GetScreenPosition(self.adornee:GetWorldPosition() + self._worldOffset)	
			if screenPos then
				-- The object is in the camera view, show it!
				self.panel.x = screenPos.x
				self.panel.y = screenPos.y
			end
			-- if it's not in the cam view, its still off screen 
		end
	end)
	self._task.repeatCount = -1
end

function Billboard:SetActive(active)
	assert(type(active) == "boolean", "Argument must be a boolean")

	if active then
		self:_setup()
	else
		self._task:Cancel()
	end
end

function Billboard:Destroy()
	self:SetActive(false)
end

return Billboard