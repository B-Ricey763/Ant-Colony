local nest = script.parent
local LIFESPAN = nest:GetCustomProperty("AntLifespan")
local AntTypes = require(nest:GetCustomProperty("AntTypes"))
local TableUtil = require(nest:GetCustomProperty("TableUtil"))

local ANT_REFS = {
	Worker = nest:GetCustomProperty("WorkerAnt")
}

local function FindAntTypeByName(name)
	for i, ant in ipairs(AntTypes) do
		if ant.name == name then
			return ant
		end
	end
end

local function BreedAnt(player, ant)
	local antObject = World.SpawnAsset(ANT_REFS[ant.name], { position = nest:GetWorldPosition()})
	antObject.lifeSpan = LIFESPAN -- seconds, but this will refresh each time they return to the colony
	player:AddResource(ant.name .. "Num", 1)
end

Events.ConnectForPlayer("Breed", function (player, breedType)
	if player:GetPrivateNetworkedData("Nest"):GetObject() == nest then
		local ant = FindAntTypeByName(breedType)
		local food = nest:GetCustomProperty("Food")
		if ant and food >= ant.cost then
			nest:SetNetworkedCustomProperty("Food", food - ant.cost)
			local queuedName = ant.name .. "Queued"
			player:AddResource(queuedName, 1)
			
			-- this makes sure the ants are spawned in an orderly fasion!
			if not ant.clearingQueue then
				ant.clearingQueue = true
				while player:GetResource(queuedName) > 0 do
					Task.Wait(ant.breedTime)
					BreedAnt(player, ant)
					player:RemoveResource(queuedName, 1)
				end
				ant.clearingQueue = false
			end
		end
	end
end)
