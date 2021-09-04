local PHER_CLIENT = script:GetCustomProperty("PheromoneClient")

Events.Connect("SpawnPher", function (id, pos, color)
	local p = World.SpawnAsset(PHER_CLIENT, { parent = script.parent, position = pos })
	p:SetColor(color)
	p.name = id 
end)

Events.Connect("DestroyPher", function (id)
	local pher = script.parent:FindChildByName(id) 
	if Object.IsValid(pher) then
		pher:Destroy()
	end
end)

Events.Connect("GameStateChanged", function (old, new)
	if new == 2 then
		for _, pher in ipairs(script.parent:GetChildren()) do
			if pher ~= script then
				pher:Destroy()
			end
		end
	end
end)