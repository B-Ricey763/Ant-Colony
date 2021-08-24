local TableUtil = require(script:GetCustomProperty("TableUtil"))
local Dumpster = require(script:GetCustomProperty("Dumpster"))
local NestLevels = require(script:GetCustomProperty("NestLevels"))

local NEST_ASSET = script:GetCustomProperty("Nest")
local ROUND_STATE = 1

local nestLocations = script:GetCustomProperty("NestLocations"):WaitForObject()

local occupiedLocations = {}
local currentDump = nil

local function GetRandomNestPos()
	for _, location in ipairs(nestLocations:GetChildren()) do
		if not TableUtil.find(occupiedLocations, location) then
			table.insert(occupiedLocations, location)
			return location:GetWorldPosition()
		end
	end
end

local function NewColony(player)
	player:ClearResources()
	local nest = World.SpawnAsset(NEST_ASSET, { position = GetRandomNestPos(), parent = World.GetRootObject() })
	player:SetResource("NestLevel", 1)
	player:SetResource("Health", NestLevels[1].maxHealth)
	player:SetResource("Food", 10) -- a generic number
	-- both the player and nest have refs to each other
	nest:SetNetworkedCustomProperty("ownerId", player.id)
	player:SetPrivateNetworkedData("Nest", nest:GetReference())
	-- we have to delay this just because the client script might not run immediately
	Task.Spawn(function()
		Events.BroadcastToPlayer(player, "MoveCamera", nest:GetWorldPosition() + Vector3.UP * 1000)
	end, 2)
	return nest
end

Events.Connect("GameStateChanged", function (oldState, newState)
	if newState == ROUND_STATE then
		currentDump = Dumpster.New()
		for i, player in ipairs(Game.GetPlayers()) do
			local col = NewColony(player)
			currentDump:Dump(col)
		end

		currentDump:Dump(function ()
			TableUtil.clear(occupiedLocations)
		end)
	elseif newState == ROUND_STATE + 1 then
		currentDump:Burn()
		currentDump = nil
	end
end)