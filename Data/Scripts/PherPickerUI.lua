local pherButtons = script:GetCustomProperty("PherButtons"):WaitForObject()
local pherType = script:GetCustomProperty("PherType"):WaitForObject()
local border = script:GetCustomProperty("Border"):WaitForObject()

Events.Connect("PherSwitch", function (pherName)
	pherType.text = pherName
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
