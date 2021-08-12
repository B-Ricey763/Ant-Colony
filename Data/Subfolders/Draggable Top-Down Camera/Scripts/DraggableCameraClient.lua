--[[
    DraggableCameraClient
    By: WaveParadigm

    This component will make the cursor always visible on your screen.
    By holding down the binding specified on this script's parent (default: right click)
    and moving the mouse, the camera will move through the world. You can
    also define a scroll speed.

    Parts of this code were taken and modified from v2_BoardInteractionController.lua
    from Manticore Games's Mergelandia.
]]--

local player = Game.GetLocalPlayer()
local camera = script:GetCustomProperty("Camera"):WaitForObject()

local cameraMoveBinding = script.parent:GetCustomProperty("CameraMoveBinding") or "ability_secondary"
local scrollSpeed = script.parent:GetCustomProperty("ScrollSpeed") or 100
local xBounds = script.parent:GetCustomProperty("ClampX") or Vector2.New(-10000, 10000)
local yBounds = script.parent:GetCustomProperty("ClampY") or Vector2.New(-10000, 10000)

if (xBounds.x > xBounds.y or yBounds.x > yBounds.y) then
    warn("Please make sure your X and Y camera boundaries are in order from smaller value to larger value.")
end

local previousCursorPosition = nil
function Tick(dt)
    if (player:IsBindingPressed(cameraMoveBinding)) then
        -- Player is holding the button to move the camera.
        -- Track cursor displacement to move world.
        local cursorPosition = UI.GetCursorPosition()
        if (previousCursorPosition == nil) then
            previousCursorPosition = cursorPosition
        end

        local screenDelta = cursorPosition - previousCursorPosition
        previousCursorPosition = cursorPosition

        local localDelta = Rotation.New(0, 0, camera:GetWorldRotation().z) * Vector3.New(screenDelta, 0)
        local scaledDelta = scrollSpeed * dt * Vector3.New(-localDelta.y, localDelta.x, 0)

        -- To "drag" the world, we move the camera in the inverse direction
        local localCameraPos = camera:GetPosition() - scaledDelta

        -- You could clamp the camera's X and Y coordinates here if you wanted.
        -- For now there are the custom property params to hardcode coordinates,
        -- But feel free to modify this code to suit your needs.
        localCameraPos.x = CoreMath.Clamp(localCameraPos.x, xBounds.x, xBounds.y)
        localCameraPos.y = CoreMath.Clamp(localCameraPos.y, yBounds.x, yBounds.y)
        camera:SetPosition(localCameraPos)
    else
        previousCursorPosition = nil
    end
end

-- Init
UI.SetCursorVisible(true)
UI.SetCanCursorInteractWithUI(true)