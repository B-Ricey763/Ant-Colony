local root = script.parent.parent
local visual = script.parent
local velocity = Vector3.ZERO
local prevPosition = root:GetWorldPosition()

-- we wanna detach the visual part so we can manually move it nicely
visual:Detach()
function Tick(dt)
    -- move the visual along
    visual:MoveTo(root:GetWorldPosition(), 0.2)
    local q = Quaternion.New(Vector3.FORWARD, root:GetWorldPosition() - visual:GetWorldPosition())
    visual:RotateTo(q, 0.2)

    -- compute velocity in case we want to use it
    local prevVelocity = velocity
    velocity = (root:GetWorldPosition() - prevPosition)/dt

    ---
    -- Update previous position
    prevPosition = root:GetWorldPosition()
end

function OnDestroyed(obj)
    visual:Destroy()
end

root.destroyEvent:Connect(OnDestroyed)