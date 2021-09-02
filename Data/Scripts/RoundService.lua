local TableUtil = require(script:GetCustomProperty("TableUtil"))
local Dumpster = require(script:GetCustomProperty("Dumpster"))
local NestLevels = require(script:GetCustomProperty("NestLevels"))

local PHER_PLOTTER = script:GetCustomProperty("PheromonePlotter")
local NEST_ASSET = script:GetCustomProperty("Nest")
local FOOD_SOURCE = script:GetCustomProperty("FoodSource")
local ROUND_STATE = 1

local nestLocations = script:GetCustomProperty("NestLocations"):WaitForObject()
local foodLocations = script:GetCustomProperty("FoodLocations"):WaitForObject()

local occupiedNestLocations = {}
local occupiedFoodLocations = {}
local currentDump = nil

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
	local nest = World.SpawnAsset(NEST_ASSET, { position = GetRandomNestPos(), parent = World.GetRootObject() })
	player:SetResource("NestLevel", 1)
	player:SetResource("Health", NestLevels[1].maxHealth)
	player:SetResource("Pher", 0)
	player:SetResource("Ants", 0)
	player:SetResource("Food", 10) -- a generic number
	-- both the player and nest have refs to each other
	nest:SetNetworkedCustomProperty("ownerId", player.id)
	nest:FindDescendantByName("HitboxTrigger").team = player.team
	player:SetPrivateNetworkedData("Nest", nest:GetReference())
	-- we have to delay this just because the client script might not run immediately
	Task.Spawn(function()
		Events.BroadcastToPlayer(player, "MoveCamera", nest:GetWorldPosition() + Vector3.UP * 1000)
	end, 2)
	return nest
end

local function NewFood()
	local food = World.SpawnAsset(FOOD_SOURCE, { position = GetRandomFoodPos(), parent = World.GetRootObject() })
	return food
end

local function GivePherPlotter(player)
	local pp = World.SpawnAsset(PHER_PLOTTER)
	pp:Equip(player)
	return pp
end

Events.Connect("GameStateChanged", function (oldState, newState)
	if newState == ROUND_STATE then
		currentDump = Dumpster.New()
		for i, player in ipairs(Game.GetPlayers()) do
			player.team = i -- assign each player a team number, 1-4
			currentDump:Dump(NewColony(player))

			local plotter = GivePherPlotter(player)	
			-- this might be redundant
			currentDump:Dump(function ()
				if Object.IsValid(plotter) then
					plotter:Destroy()
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
	elseif newState == ROUND_STATE + 1 then
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




