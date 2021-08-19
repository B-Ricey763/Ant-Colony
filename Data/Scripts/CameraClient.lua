local player = Game.GetLocalPlayer()
local cam = script:GetCustomProperty("Camera"):WaitForObject()
local CAM_SPEED = script:GetCustomProperty("Speed")
local ROT_SPEED = script:GetCustomProperty("RotationSpeed")
local ROTATION_BINDING = script:GetCustomProperty("RotationBinding")

local previousCursorPosition = nil

UI.SetCursorVisible(true) -- so cam is not locked to screen

-- Whenever the player moves, the camera moves
player.movementHook:Connect(function (player, params)
	cam:SetPosition(cam:GetPosition() + params.direction * CAM_SPEED)
end)

function Tick(dt)
	-- Finding the delta was not my idea: 
	-- Credit: Draggable Top-Down Camera by WaveParadigm
	if player:IsBindingPressed(ROTATION_BINDING) then
		local cursorPosition = UI.GetCursorPosition()
		if not previousCursorPosition then
			previousCursorPosition = cursorPosition
		end

		local screenDelta = cursorPosition - previousCursorPosition
		previousCursorPosition = cursorPosition

		cam:SetRotation(cam:GetRotation() + Rotation.New(0, -screenDelta.y, screenDelta.x) * ROT_SPEED)
	else
		previousCursorPosition = nil
	end
end

Events.Connect("MoveCamera", function (pos)
	cam:SetPosition(pos)
end)