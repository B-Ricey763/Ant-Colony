local foodSource = script.parent.parent
local antTrigger = script:GetCustomProperty("AntTrigger"):WaitForObject()

local SLOW_MULT = foodSource:GetCustomProperty("SlowMultiplier")

local function OnBeginOverlap(trigger, hit)
	local ant = hit:FindAncestorByName("Ant")
	if Object.IsValid(ant) and hit.name == "HitboxTrigger" and ant:GetCustomProperty("Type") == "Worker" then
		-- we can do this multiple times since it is a boolean, it cannot stack!
		ant:SetNetworkedCustomProperty("CarryingFood", true)
		ant:SetNetworkedCustomProperty("SpeedMultiplier", SLOW_MULT) -- to make the ant slower
	end
end

antTrigger.beginOverlapEvent:Connect(OnBeginOverlap)