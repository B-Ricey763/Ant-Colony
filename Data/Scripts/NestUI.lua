local player = Game.GetLocalPlayer()
local panel = script.parent
local container = panel.parent
local healthBar = script:GetCustomProperty("HealthBar"):WaitForObject()
local foodBar = script:GetCustomProperty("FoodBar"):WaitForObject()
local closeButton = script:GetCustomProperty("CloseButton"):WaitForObject()
local Billboard = require(script:GetCustomProperty("Billboard"))
local Dumpster = require(script:GetCustomProperty("Dumpster"))
local workerBreedButton = script:GetCustomProperty("WorkerBreedButton"):WaitForObject()
local antName = script:GetCustomProperty("AntName"):WaitForObject()
local antCost = script:GetCustomProperty("AntCost"):WaitForObject()
local queue = script:GetCustomProperty("Queue"):WaitForObject()
local cycleButton = script:GetCustomProperty("CycleButton"):WaitForObject()
local AntTypes = require(script:GetCustomProperty("AntTypes"))
local breedBar = script:GetCustomProperty("BreedBar"):WaitForObject()
local antNum = script:GetCustomProperty("AntNum"):WaitForObject()
local currentDump = nil
local currentAntType = AntTypes[1] -- which is a worker right now

local function UpdateAntType(antType)
	antName.text = antType.name
	antCost.text = ("Cost: %i food"):format(antType.cost)

	queue.text = ("%i queued"):format(player:GetResource(antType.name .. "Queued"))
	antNum.text = ("%i total"):format(player:GetResource(antType.name .. "Num"))
end

Events.Connect("NestUI", function (nestRef)
	container.visibility = Visibility.INHERIT
	local nest = nestRef:WaitForObject()
	currentDump = Dumpster.New()
	currentDump:Dump(Billboard.New(nest, panel, Vector3.UP * 1000))

	UpdateAntType(currentAntType)

	-- update progress bar UI's whenever their respective properties change
	-- the initial update
	local function UpdateBar(bar, keyWord)
		bar.progress = nest:GetCustomProperty(keyWord) / nest:GetCustomProperty("Max" .. keyWord)
		bar:FindChildByName("Status").text = keyWord.. ": " .. nest:GetCustomProperty(keyWord) .. "/" .. nest:GetCustomProperty("Max".. keyWord)
	end
	UpdateBar(foodBar, "Food")
	UpdateBar(healthBar, "Health")
	currentDump:Dump(nest.networkedPropertyChangedEvent:Connect(function (obj, property)
		if property == "Food" then
			UpdateBar(foodBar, "Food")
		elseif property == "Health" then
			UpdateBar(healthBar, "Health")
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

player.resourceChangedEvent:Connect(function (player, resource)
	if resource == currentAntType.name .. "Queued" then
		queue.text = ("%i queued"):format(player:GetResource(resource))
	elseif resource == currentAntType.name .. "Num" then
		antNum.text = ("%i total"):format(player:GetResource(resource))
	end
end)
