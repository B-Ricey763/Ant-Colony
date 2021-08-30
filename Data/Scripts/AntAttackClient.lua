local vfx = script:GetCustomProperty("AttackVFX"):WaitForObject()

Events.Connect("Attack", function (ant)
	-- there should be a better way, 
	if ant:GetObject():IsAncestorOf(script.parent) then
		vfx:Play()
	end
end)