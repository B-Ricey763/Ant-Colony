local pherButtons = script:GetCustomProperty("PherButtons"):WaitForObject()
local pherType = script:GetCustomProperty("PherType"):WaitForObject()
local border = script:GetCustomProperty("Border"):WaitForObject()

local DisplayNames = {
	Follow = "Attract All",
	Food = "Attract Worker",
	Fight = "Attract Soldier",
	Block = "Repel All"
}

Events.Connect("PherSwitch", function (pherName)
	pherType.text = DisplayNames[pherName]
	-- haha butt
	for i, butt in pairs(pherButtons:GetChildren()) do
		if butt.name == pherName then
			border.parent = butt
		end
	end
end) 

for i, butt in pairs(pherButtons:GetChildren()) do
	butt.clickedEvent:Connect(function ()
		Events.BroadcastToServer("SwitchToPher", butt.name)
	end)
end

Events.Connect("GameStateChanged", function (old, new)
	if new ~= 1 then
		script.parent.visibility = Visibility.FORCE_OFF
	else
		script.parent.visibility = Visibility.INHERIT
	end
end)
