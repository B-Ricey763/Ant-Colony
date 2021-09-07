local timeText = script:GetCustomProperty("TimeText"):WaitForObject()

local currentState = nil
Events.Connect("GameStateChanged", function (old, new, dir, dirEnd)
	currentState = new
	while currentState == 1 do
		timeText.text = string.format("Time Left: %i", math.floor(dirEnd - time()))
		Task.Wait(1)
	end
end)
