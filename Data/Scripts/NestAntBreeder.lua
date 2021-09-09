local nest = script.parent
local LIFESPAN = nest:GetCustomProperty("AntLifespan")
local AntTypes = require(nest:GetCustomProperty("AntTypes"))
local TableUtil = require(nest:GetCustomProperty("TableUtil"))
local NestLevels = require(nest:GetCustomProperty("NestLevels"))
local SpawnSound = script:GetCustomProperty("SpawnSound"):WaitForObject()

local ANT_REFS = {
	Worker = nest:GetCustomProperty("WorkerAnt"),
	Soldier = nest:GetCustomProperty("SoldierAnt")
}

local function GetMax(player, str)
	return NestLevels[player:GetResource("NestLevel")][str]
end

local function FindAntTypeByName(name)
	for i, ant in ipairs(AntTypes) do
		if ant.name == name then
			return ant
		end
	end
end

local function RandOrientAnt(antObj)
	local randDir = math.random(360)
	local rot = Rotation.New(0, 0, randDir)
	antObj:SetRotation(rot)
end
local function BreedAnt(player, ant)
	SpawnSound:Play()

	local antFolder = nest:GetCustomProperty("Ants"):WaitForObject()
	local antObject = World.SpawnAsset(ANT_REFS[ant.name], { position = nest:GetWorldPosition(), parent = antFolder })
	antObject.lifeSpan = LIFESPAN -- seconds, but this will refresh each time they return to the colony
	antObject:FindDescendantByName("HitboxTrigger").team = player.team
	-- add to count when spawned, remove when killed
	player:AddResource(ant.name .. "Num", 1)
	player:AddResource("Ants", 1)
	antObject.destroyEvent:Connect(function ()
		player:RemoveResource(ant.name .. "Num", 1)
		player:RemoveResource("Ants", 1)
	end)
	-- Make the ant go in a random direction off spawn
	RandOrientAnt(antObject)
end

Events.ConnectForPlayer("Breed", function (player, breedType)
	if player.id == nest:GetCustomProperty("ownerId") then
		local ant = FindAntTypeByName(breedType)
		local food = player:GetResource("Food")
		if ant and food >= ant.cost and player:GetResource("Ants") < GetMax(player, "maxAnts") then
			player:RemoveResource("Food", ant.cost)
			local queuedName = ant.name .. "Queued"
			player:AddResource(queuedName, 1)
			
			-- this makes sure the ants are spawned in an orderly fasion!
			if not ant.clearingQueue then
				ant.clearingQueue = true
				while player:GetResource(queuedName) > 0 do
					Task.Wait(ant.breedTime)

					if not Object.IsValid(nest) then return end

					BreedAnt(player, ant)
					player:RemoveResource(queuedName, 1)
				end
				ant.clearingQueue = false
			end
		end
	end
end)
