local player = Game.GetLocalPlayer()
local cam = script:GetCustomProperty("Camera"):WaitForObject()
local CAM_SPEED = script:GetCustomProperty("Speed")
local ROT_SPEED = script:GetCustomProperty("RotationSpeed")
local ROTATION_BINDING = script:GetCustomProperty("RotationBinding")
local propOverrideCamera = script:GetCustomProperty("OverrideCamera"):WaitForObject()
local overrideSpeed = propOverrideCamera:GetCustomProperty("Speed")
local player_direction = Vector3.ZERO
local previousCursorPosition = nil

UI.SetCursorVisible(true) -- so cam is not locked to screen

-- Whenever the player moves, the camera moves
player.movementHook:Connect(function (player, params)
	-- can only control if we are viewing via default camera
	player_direction = params.direction
end)

function Tick(dt)

	-- move camera at constant speed respecting deltatime
	if (player:GetOverrideCamera()) then
		propOverrideCamera:SetWorldPosition(propOverrideCamera:GetWorldPosition() + (player_direction * overrideSpeed * dt) )
	else
		cam:SetWorldPosition(cam:GetWorldPosition() + (player_direction * CAM_SPEED * dt) )
	end

	-- Finding the delta was not my idea: 
	-- Credit: Draggable Top-Down Camera by WaveParadigm
	if player:IsBindingPressed(ROTATION_BINDING) then
		local cursorPosition = UI.GetCursorPosition()
		if not previousCursorPosition then
			previousCursorPosition = cursorPosition
		end

		local screenDelta = cursorPosition - previousCursorPosition
		previousCursorPosition = cursorPosition

		local nextY = cam:GetRotation().y - screenDelta.y
		-- clamp the pitch so you can't loop around
		local clampedY = nextY < 85 and nextY > -85 and -screenDelta.y or 0
		cam:SetRotation(cam:GetRotation() + Rotation.New(0, clampedY, screenDelta.x) * ROT_SPEED)
	else
		previousCursorPosition = nil
	end
end

Events.Connect("MoveCamera", function (pos, target)
	cam:SetPosition(pos)
	cam:LookAt(target)
end)