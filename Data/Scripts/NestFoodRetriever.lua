local nest = script.parent.parent
local antTrigger = nest:GetCustomProperty("AntTrigger"):WaitForObject()
local LIFESPAN = nest:GetCustomProperty("AntLifespan")

local function OnBeginOverlap(trigger, hit)
	local ant = hit:FindAncestorByName("Ant")
	if Object.IsValid(ant) and hit.name == "HitboxTrigger" then
		if ant:GetCustomProperty("CarryingFood") == true then
			nest:SetNetworkedCustomProperty("Food", nest:GetCustomProperty("Food") + 1)
			-- reset ant
			ant:SetNetworkedCustomProperty("CarryingFood", false)
			ant:SetNetworkedCustomProperty("SpeedMultiplier", 1)
		end
		ant.lifeSpan = LIFESPAN -- replenish ant lifespan
	end
end

antTrigger.beginOverlapEvent:Connect(OnBeginOverlap)