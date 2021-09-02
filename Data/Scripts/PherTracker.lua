local pherTrigger = script:GetCustomProperty("PherTrigger"):WaitForObject()
local hitboxTrigger = script.parent:FindChildByName("HitboxTrigger")

Current = nil

local function OnBeginOverlap(trigger, hit)
	if hit:IsA("CoreObject") and hit.name == "Pheromone" and hit.team == hitboxTrigger.team  then
		Current = hit
	end
end

pherTrigger.beginOverlapEvent:Connect(OnBeginOverlap)