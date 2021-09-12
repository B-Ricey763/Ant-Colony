local vfx = script:GetCustomProperty("AttackVFX"):WaitForObject()
local sfx = script:GetCustomProperty("AttackSFX"):WaitForObject()

local e = Events.Connect("Attack", function (ant)
	-- there should be a better way, 
	if Object.IsValid(script) and Object.IsValid(ant:GetObject()) and Object.IsValid(script.parent) -- why Core, just why??
	and ant:GetObject():IsAncestorOf(script.parent) then
		vfx:Play()
		sfx:Play()
	end
end)

script.destroyEvent:Connect(function ()
	e:Disconnect()
end)