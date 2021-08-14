local pherTrigger = script:GetCustomProperty("PherTrigger"):WaitForObject()

Current = nil

local function OnBeginOverlap(trigger, hit)
	if hit:IsA("CoreObject") and hit.name == "Pheromone" then
		Current = hit
	end
end

pherTrigger.beginOverlapEvent:Connect(OnBeginOverlap)