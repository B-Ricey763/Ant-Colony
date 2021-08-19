local nest = script.parent.parent
local antTrigger = nest:GetCustomProperty("AntTrigger"):WaitForObject()

local function OnBeginOverlap(trigger, hit)
	local ant = hit:FindAncestorByName("Ant")
	if Object.IsValid(ant) and ant:GetCustomProperty("CarryingFood") == true and hit.name == "HitboxTrigger" then
		nest:SetNetworkedCustomProperty("Food", nest:GetCustomProperty("Food") + 1)
		-- reset ant
		ant:SetNetworkedCustomProperty("CarryingFood", false)
		ant:SetNetworkedCustomProperty("SpeedMultiplier", 1)
	end
end

antTrigger.beginOverlapEvent:Connect(OnBeginOverlap)