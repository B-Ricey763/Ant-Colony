local root = script:GetCustomProperty("Root"):WaitForObject()

-- Wait for everything to load
Task.Wait(0.5)
if root.name == "Nest" then
	script.parent:SetSmartProperty("Stroke Color", root:GetCustomProperty("CustomTeamColor"))
else
	script.parent:SetSmartProperty("Color", root:GetCustomProperty("CustomTeamColor"))
end
