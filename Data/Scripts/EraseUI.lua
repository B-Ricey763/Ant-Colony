local button = script.parent
local highlight = script:GetCustomProperty("Highlight"):WaitForObject()

button.clickedEvent:Connect(function ()
	Events.BroadcastToServer("EraseToggle")
end)

Events.Connect("EraseToggled", function (isErasing)
	print("Recieved")
	highlight.visibility = isErasing and Visibility.INHERIT or Visibility.FORCE_OFF
end)


