local TableUtil = require(script:GetCustomProperty("TableUtil"))
local Dumpster = require(script:GetCustomProperty("Dumpster"))
local NestLevels = require(script:GetCustomProperty("NestLevels"))

local PHER_PLOTTER = script:GetCustomProperty("PheromonePlotter")
local NEST_ASSET = script:GetCustomProperty("Nest")
local FOOD_SOURCE = script:GetCustomProperty("FoodSource")
local ROUND_STATE = 1

local nestLocations = script:GetCustomProperty("NestLocations"):WaitForObject()
local foodLocations = script:GetCustomProperty("FoodLocations"):WaitForObject()
local nestFolder = script:GetCustomProperty("Nests"):WaitForObject()
local foodFolder = script:GetCustomProperty("FoodSources"):WaitForObject()
local antFolder = script:GetCustomProperty("Ants"):WaitForObject()
local pherFolder = script:GetCustomProperty("Pheromones"):WaitForObject()

local occupiedNestLocations = {}
local occupiedFoodLocations = {}
local currentDump = nil

local function ClearChildren(object)
	for _, child in ipairs(object:GetChildren()) do
		child:Destroy()
	end
end

local function GetRandomNestPos()
	for _, location in ipairs(nestLocations:GetChildren()) do
		if not TableUtil.find(occupiedNestLocations, location) then
			table.insert(occupiedNestLocations, location)
			return location:GetWorldPosition()
		end
	end
end

local function GetRandomFoodPos()
	for _, location in ipairs(foodLocations:GetChildren()) do
		if not TableUtil.find(occupiedFoodLocations, location) then
			table.insert(occupiedFoodLocations, location)
			return location:GetWorldPosition()
		end
	end
end
local function NewColony(player)
	player:ClearResources()
	player:SetResource("NestLevel", 1)
	Task.Wait(3)
	player:SetResource("Health", NestLevels[1].maxHealth)
	player:SetResource("Pher", 0)
	player:SetResource("Ants", 0)
	player:SetResource("Food", 10) -- a generic number
	local nest = World.SpawnAsset(NEST_ASSET, { position = GetRandomNestPos(), parent = nestFolder })
	nest:SetNetworkedCustomProperty("ownerId", player.id)
	nest:SetNetworkedCustomProperty("Ants", antFolder)
	-- both the player and nest have refs to each other
	nest:FindDescendantByName("HitboxTrigger").team = player.team
	player:SetPrivateNetworkedData("Nest", nest:GetReference())
	-- we have to delay this just because the client script might not run immediately
	Task.Spawn(function()
		Events.BroadcastToPlayer(player, "MoveCamera", nest:GetWorldPosition() + Vector3.UP * 1000)
	end, 2)

	return nest
end

local function NewFood()
	local food = World.SpawnAsset(FOOD_SOURCE, { position = GetRandomFoodPos(), parent = foodFolder })
	return food
end

local function GivePherPlotter(player)
	local pp = World.SpawnAsset(PHER_PLOTTER)
	pp:SetNetworkedCustomProperty("Pheromones", pherFolder)
	pp:Equip(player)
	return pp
end

local function AwardWinner()
	local winner = nil
	for _, player in ipairs(Game.GetPlayers()) do
		if not winner or player:GetResource("Ants") > winner:GetResource("Ants") then
			winner = player
		end
	end

	print(winner.name .. " was the winner!")
end


Events.Connect("GameStateChanged", function (oldState, newState)
	if newState == ROUND_STATE then
		currentDump = Dumpster.New()
		for i, player in ipairs(Game.GetPlayers()) do
			player.team = i -- assign each player a team number, 1-4
			currentDump:Dump(NewColony(player))

			local plotter = GivePherPlotter(player)	
			-- this might be redundant
			currentDump:Dump(function() 
				-- This just cleans up everything, works like a charm!
				for _, equip in ipairs(player:GetEquipment()) do
					equip:Unequip()
				end
			end)
		end

		for i = 1, #foodLocations:GetChildren() do
			currentDump:Dump(NewFood())
		end

		currentDump:Dump(function ()
			TableUtil.clear(occupiedNestLocations)
			TableUtil.clear(occupiedFoodLocations)
		end)

		-- A failsafe just in case not everything gets destroyed
		currentDump:Dump(function ()
			ClearChildren(antFolder)
			ClearChildren(nestFolder)
			ClearChildren(foodFolder)
			ClearChildren(pherFolder)
		end)
	elseif newState == ROUND_STATE + 1 then
		-- check for winner
		AwardWinner()
		-- clean up all of the items we added
		currentDump:Burn()
		currentDump = nil
	end
end)

Events.Connect("KilledNest", function (killerAnt, victimPlayer, victimNest)
	local killerPlayer
	for _, player in ipairs(Game.GetPlayers()) do
		if player.team == killerAnt:FindDescendantByName("HitboxTrigger").team then
			killerPlayer = player
		end
	end

	-- Add on the bounty
	killerPlayer:SetResource("Food", killerPlayer:GetResource("Food") + victimPlayer:GetResource("Food"))

	for _, equip in ipairs(victimPlayer:GetEquipment()) do
		equip:Unequip()
	end
	-- For right now, just get rid of the nest. This is subjec to change
	victimNest:Destroy()
end) 




