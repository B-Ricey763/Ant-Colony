--Script by rangobuilds
--For the best possible results: Set the player's MovementControlMode to 'View Relative,' set the player's Facing Mode to 'Face Movement', and enable 'Adjustable Distance' on the camera.

local player = Game.GetLocalPlayer() repeat Task.Wait() until player --Waits for player before searching for camera.
local camera = player:GetActiveCamera() --Gets default camera associated with player.

local active = script:GetCustomProperty("active") --Activates or deactivates the script accordingly.
local rmb_down = false --Global check for the right mouse button

--These are necessary to manipulate the min/max values of the camera's pitch and yaw:
camera.rotationMode = RotationMode.CAMERA 
camera.hasFreeControl = true 

--If the right mouse button is pressed, rmb_down is set to true.
player.bindingPressedEvent:Connect(function(player, binding)
    if binding == "ability_secondary" then
        rmb_down = true
    end
end)

--If the right mouse button is released, rmb_down is set to false.
player.bindingReleasedEvent:Connect(function(player, binding)
    if binding == "ability_secondary" then
        rmb_down = false
    end
end)

--If the rmb_down is true, the pitch and yaw limits are reset. Otherwise, the pitch is set to the camera's current pitch and the yaw is set to the camera's current yaw whenever the right mouse button is released.
function rmbRotate()
    if active then
        if rmb_down then
            camera.isYawLimited = false
            camera.minPitch = -89
            camera.maxPitch = 89
        else
            camera.isYawLimited = true
            camera.minPitch = camera.currentPitch
            camera.maxPitch = camera.currentPitch
            camera.minYaw = camera.currentYaw
            camera.maxYaw = camera.currentYaw
        end
    end
end

function Tick()
    rmbRotate()
end