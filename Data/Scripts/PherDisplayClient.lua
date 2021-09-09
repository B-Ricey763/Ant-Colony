local PHER_CLIENT = script:GetCustomProperty("PheromoneClient")
local ClickSound = script:GetCustomProperty("ClickSound"):WaitForObject()
local DeleteSound = script:GetCustomProperty("DeleteSound"):WaitForObject()

Events.Connect("SpawnPher", function (id, pos, color)
	ClickSound:Play()
	local p = World.SpawnAsset(PHER_CLIENT, { parent = script.parent, position = pos })
	p:SetColor(color*100)
	p.name = id

	local player = Game.GetLocalPlayer()
	local p0 = player:GetViewWorldPosition()
	local dir = (pos - p0):GetNormalized()
	local hitResult = World.Raycast(pos-(dir*100), pos+(dir*100), {ignorePlayers = true})
	if (hitResult) then
		local n = hitResult:GetImpactNormal();
		--CoreDebug.DrawLine(hitResult:GetImpactPosition(), hitResult:GetImpactPosition() + n*100 , {thickness = 3, color = Color.GREEN, duration = 10})

		local rot = hitResult:GetTransform():GetRotation() * Rotation.New(0, -90, 0)
		p:SetWorldRotation(rot)
		p:SetWorldPosition(pos + n*10)
		p:SetScale(Vector3.New(1,1,3))
	end
end)

Events.Connect("DestroyPher", function (id)
	local pher = script.parent:FindChildByName(id) 
	if Object.IsValid(pher) then
		DeleteSound:Play()
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