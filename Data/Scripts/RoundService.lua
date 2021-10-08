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

local TEAM_COLORS = {
	Color.RED,
	Color.BLUE,
	Color.GREEN,
	Color.YELLOW
}

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
	--Task.Wait(1)
	player:SetResource("Health", NestLevels[1].maxHealth)
	player:SetResource("Pher", 0)
	player:SetResource("Ants", 0)
	player:SetResource("Food", 10) -- a generic number
	local nest = World.SpawnAsset(NEST_ASSET, { position = GetRandomNestPos(), parent = nestFolder })
	nest:SetNetworkedCustomProperty("CustomTeamColor", TEAM_COLORS[player.team])
	nest:SetNetworkedCustomProperty("ownerId", player.id)
	nest:SetNetworkedCustomProperty("Ants", antFolder)
	-- both the player and nest have refs to each other
	nest:FindDescendantByName("HitboxTrigger").team = player.team
	
	-- set team to all pheromones
	local pheromones = nest:FindDescendantsByName("Pheromone")
	for _,pher in ipairs(pheromones) do
		pher.team = player.team
	end

	player:SetPrivateNetworkedData("Nest", nest:GetReference())
	-- move the camera to look at the nest
	Task.Spawn(function()
		Events.BroadcastToPlayer(player, "MoveCamera", nest:GetWorldPosition() + Vector3.UP * 1000 - (Vector3.RIGHT+Vector3.FORWARD) * 1000, nest:GetWorldPosition())
	end, 0.5)


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

	Events.Broadcast("PlayerVictory", winner)
end


Events.Connect("GameStateChanged", function (oldState, newState)
	if newState == ROUND_STATE then

		-- transfer everyone to new game instance of this game, should not be hardcoded...
		if (not Game.IsAcceptingPlayers()) then
			Game.TransferAllPlayersToGame("e73755/ant-colony")
			return
		end

		currentDump = Dumpster.New()

		local teamNum = 1

		-- handle player join
		local function HandlePlayer(player)

			player.team = teamNum
			currentDump:Dump(NewColony(player))

			local plotter = GivePherPlotter(player)	
			-- this might be redundant
			currentDump:Dump(function() 
				-- This just cleans up everything, works like a charm!
				for _, equip in ipairs(player:GetEquipment()) do
					equip:Unequip()
				end
			end)

			teamNum = teamNum + 1

			-- stop players joining
			if (teamNum>4) then
				Game.StopAcceptingPlayers()
			end
		end

		-- handle player leaving
		local function HandlePlayerLeft(player)
			local nest = player:GetPrivateNetworkedData("Nest")
			if (nest) then
				Events.BroadcastToPlayer(player, "NestDestroyed")
				-- For right now, just get rid of the nest. This is subjec to change
				nest:GetObject():Destroy()
			end
		end

		-- Handle players joining in progress
		currentDump:Dump(Game.playerJoinedEvent:Connect(function (plr)
			HandlePlayer(plr)
		end))

		-- Hanlde players initially
		for i, player in ipairs(Game.GetPlayers()) do
			HandlePlayer(player)
		end

		-- handle player leaving
		Game.playerLeftEvent:Connect(function (plr)
			HandlePlayerLeft(plr)
		end)

		for i = 1, #foodLocations:GetChildren() do
			currentDump:Dump(NewFood())
		end

		currentDump:Dump(function ()
			TableUtil.clear(occupiedNestLocations)
			TableUtil.clear(occupiedFoodLocations)
		end)

		-- A failsafe just in case not everything gets destroyed
		currentDump:Dump(function ()
			ClearChildren(nestFolder)
			ClearChildren(foodFolder)
			ClearChildren(pherFolder)
		end)
	elseif newState == ROUND_STATE + 1 then
		-- check for winner
		AwardWinner()

		-- quick fix: don't accept anymore players, allow only 1 round per game instance for now
		-- otherwise it bugs
		Game.StopAcceptingPlayers()

		-- clean up all of the items we added
		currentDump:Burn()
		currentDump = nil
	elseif newState == ROUND_STATE - 1 then
		-- Can't do this bc of scoreboard at end of round
		ClearChildren(antFolder)
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
	Events.BroadcastToPlayer(killerPlayer, "EVENT_FOOD_RETRIEVED", victimNest:GetWorldPosition(), victimPlayer:GetResource("Food"))

	for _, equip in ipairs(victimPlayer:GetEquipment()) do
		equip:Unequip()
	end

	Events.BroadcastToPlayer(victimPlayer, "NestDestroyed")
	-- For right now, just get rid of the nest. This is subjec to change
	victimNest:Destroy()
end) 
