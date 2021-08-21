local nest = script.parent
local workerAnt = nest:GetCustomProperty("WorkerAnt")
local LIFESPAN = nest:GetCustomProperty("AntLifespan")

local function BreedAnt(ref)
	local ant = World.SpawnAsset(ref, { position = nest:GetWorldPosition()})
	ant.lifeSpan = LIFESPAN -- seconds, but this will refresh each time they return to the colony
	print(ant.lifeSpan)
end

Events.ConnectForPlayer("Breed", function (player, breedType)
	if player:GetPrivateNetworkedData("Nest"):GetObject() == nest then
		local food = nest:GetCustomProperty("Food")
		if breedType == "Worker" and food >= 3 then
			nest:SetNetworkedCustomProperty("Food", food - 3)
			BreedAnt(workerAnt)
		end
	end
end)