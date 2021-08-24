local nest = script.parent.parent
local antTrigger = nest:GetCustomProperty("AntTrigger"):WaitForObject()
local NestLevels = require(nest:GetCustomProperty("NestLevels"))
local LIFESPAN = nest:GetCustomProperty("AntLifespan")

Task.Wait(0.5)
local player = Game.FindPlayer(nest:GetCustomProperty("ownerId"))

local function GetMax(player, str)
	return NestLevels[player:GetResource("NestLevel")][str]
end

local function OnBeginOverlap(trigger, hit)
	local ant = hit:FindAncestorByName("Ant")
	if Object.IsValid(ant) and hit.name == "HitboxTrigger" then
		if ant:GetCustomProperty("CarryingFood") == true and player:GetResource("Food") < GetMax(player, "maxFood") then
			player:AddResource("Food", 1)
			-- reset ant
			ant:SetNetworkedCustomProperty("CarryingFood", false)
			ant:SetNetworkedCustomProperty("SpeedMultiplier", 1)
		end
		ant.lifeSpan = LIFESPAN -- replenish ant lifespan
	end
end

antTrigger.beginOverlapEvent:Connect(OnBeginOverlap)