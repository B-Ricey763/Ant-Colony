local pherTrigger = script:GetCustomProperty("PherTrigger"):WaitForObject()
local hitboxTrigger = script.parent:FindChildByName("HitboxTrigger")

Current = nil

local function OnBeginOverlap(trigger, hit)
	if hit:IsA("CoreObject") and hit.name == "Pheromone" and 
	hit.team == 0 or hit.team == hitboxTrigger.team  then -- make sure the teams match, but neatural stuff always passes
		Current = hit
	end
end

pherTrigger.beginOverlapEvent:Connect(OnBeginOverlap)