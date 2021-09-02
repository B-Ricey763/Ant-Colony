local vfx = script:GetCustomProperty("AttackVFX"):WaitForObject()

Events.Connect("Attack", function (ant)
	-- there should be a better way, 
	if Object.IsValid(ant:GetObject()) and Object.IsValid(script.parent) -- why Core, just why??
	and ant:GetObject():IsAncestorOf(script.parent) then
		vfx:Play()
	end
end)