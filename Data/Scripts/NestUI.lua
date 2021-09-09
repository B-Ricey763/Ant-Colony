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
local NestLevels = require(script:GetCustomProperty("NestLevels"))
local antNum = script:GetCustomProperty("AntNum"):WaitForObject()
local totalAntNum = script:GetCustomProperty("TotalAntNum"):WaitForObject()
local currentDump = nil
local currentAntIndex = 1

local function GetMax(str)
	if player:GetResource("NestLevel") > 0 then
		return NestLevels[player:GetResource("NestLevel")][str]
	end
	return ""
end

local function UpdateAntType(index)
	currentAntIndex = index 
	local antType = AntTypes[currentAntIndex]
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

	UpdateAntType(1)

	-- update progress bar UI's whenever their respective properties change
	-- the initial update
	local function UpdateBar(bar, keyWord)
		bar.progress = player:GetResource(keyWord) / GetMax("max" .. keyWord)
		bar:FindChildByName("Status").text = keyWord.. ": " .. player:GetResource(keyWord) .. "/" .. GetMax("max".. keyWord)
	end
	UpdateBar(foodBar, "Food")
	UpdateBar(healthBar, "Health")
	currentDump:Dump(player.resourceChangedEvent:Connect(function (obj, property)
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

cycleButton.clickedEvent:Connect(function ()
	UpdateAntType(currentAntIndex % #AntTypes + 1)
end)

workerBreedButton.clickedEvent:Connect(function ()
	Events.BroadcastToServer("Breed", AntTypes[currentAntIndex].name)
end)

closeButton.clickedEvent:Connect(function ()
	Events.Broadcast("NestUIClosed")
	currentDump:Burn()
	currentDump = nil 
end)

player.resourceChangedEvent:Connect(function (player, resource)
	if resource == AntTypes[currentAntIndex].name .. "Queued" then
		queue.text = ("%i queued"):format(player:GetResource(resource))
	elseif resource == AntTypes[currentAntIndex].name .. "Num" then
		antNum.text = ("%i total"):format(player:GetResource(resource))
	elseif resource == "Ants" then
		totalAntNum.text = player:GetResource(resource) .. " total ants"
	end
end)