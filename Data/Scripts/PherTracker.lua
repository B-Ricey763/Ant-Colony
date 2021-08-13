local pherTrigger = script:GetCustomProperty("PherTrigger"):WaitForObject()

Current = nil

local function OnBeginOverlap(trigger, hit)
	if hit:IsA("CoreObject") then
		local hitPher = hit:FindAncestorByName("Pheromone")
		if Object.IsValid(hitPher) then
			Current = hitPher
		end
	end
end

pherTrigger.beginOverlapEvent:Connect(OnBeginOverlap)