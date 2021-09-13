local PHER_CLIENT = script:GetCustomProperty("PheromoneClient")
local ClickSound = script:GetCustomProperty("ClickSound"):WaitForObject()
local DeleteSound = script:GetCustomProperty("DeleteSound"):WaitForObject()
local ClientVisual = script:GetCustomProperty("ClientVisual"):WaitForObject()
	  ClientVisual:SetScale(Vector3.New(1,1,3))
local EraserVisual = script:GetCustomProperty("EraserVisual"):WaitForObject()
local IS_ERASING = nil

function Tick(dt)
	local hit = UI.GetCursorHitResult()
	if (hit) then
		local pos = hit:GetImpactPosition()
		local n = hit:GetImpactNormal()

		local rot = hit:GetTransform():GetRotation() * Rotation.New(0, -90, 0)
		ClientVisual:SetWorldRotation(rot)
		ClientVisual:SetWorldPosition(pos + n*10)
		EraserVisual:SetWorldPosition(pos)
	end
end

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

Events.Connect("PherSwitch", function (pherName, color)
	ClientVisual:SetColor(color * 100 * Color.New(1, 1, 1, 0.2))
	if (IS_ERASING==nil) then
		ClientVisual.visibility = Visibility.FORCE_ON
	end
end) 

Events.Connect("EraseToggled", function (isErasing)
	if (isErasing) then
		ClientVisual.visibility = Visibility.FORCE_OFF
		EraserVisual.visibility = Visibility.FORCE_ON
	else
		ClientVisual.visibility = Visibility.FORCE_ON
		EraserVisual.visibility = Visibility.FORCE_OFF
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