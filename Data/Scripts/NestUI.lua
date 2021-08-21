local panel = script.parent
local container = panel.parent
local HealthBar = script:GetCustomProperty("HealthBar"):WaitForObject()
local FoodBar = script:GetCustomProperty("FoodBar"):WaitForObject()
local Billboard = require(script:GetCustomProperty("Billboard"))
local workerBreedButton = script:GetCustomProperty("WorkerBreedButton"):WaitForObject()

Events.Connect("NestUI", function (nestRef)
	container.visibility = Visibility.INHERIT
	local nest = nestRef:WaitForObject()

	local b = Billboard.New(nest, panel, Vector3.UP * 1000)
end)

workerBreedButton.clickedEvent:Connect(function ()
	Events.BroadcastToServer("Breed", "Worker")
end)
