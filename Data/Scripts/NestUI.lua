local panel = script.parent
local container = panel.parent
local healthBar = script:GetCustomProperty("HealthBar"):WaitForObject()
local foodBar = script:GetCustomProperty("FoodBar"):WaitForObject()
local closeButton = script:GetCustomProperty("CloseButton"):WaitForObject()
local Billboard = require(script:GetCustomProperty("Billboard"))
local Dumpster = require(script:GetCustomProperty("Dumpster"))
local workerBreedButton = script:GetCustomProperty("WorkerBreedButton"):WaitForObject()

local currentDump = nil
Events.Connect("NestUI", function (nestRef)
	container.visibility = Visibility.INHERIT
	local nest = nestRef:WaitForObject()
	currentDump= Dumpster.New()

	currentDump:Dump(Billboard.New(nest, panel, Vector3.UP * 1000))

	-- update progress bar UI's whenever their respective properties change
	-- the initial update
	foodBar.progress = nest:GetCustomProperty("Food") / nest:GetCustomProperty("MaxFood")
	healthBar.progress = nest:GetCustomProperty("Health") / nest:GetCustomProperty("MaxHealth")
	currentDump:Dump(nest.networkedPropertyChangedEvent:Connect(function (obj, property)
		if property == "Food" then
			foodBar.progress = nest:GetCustomProperty("Food") / nest:GetCustomProperty("MaxFood")
		elseif property == "Health" then
			healthBar.progress = nest:GetCustomProperty("Health") / nest:GetCustomProperty("MaxHealth")
		end
	end))

	-- This just hides the UI
	currentDump:Dump(function ()
		container.visibility = Visibility.FORCE_OFF
	end)
end)

workerBreedButton.clickedEvent:Connect(function ()
	Events.BroadcastToServer("Breed", "Worker")
end)

closeButton.clickedEvent:Connect(function ()
	currentDump:Burn()
	currentDump = nil 
end)


