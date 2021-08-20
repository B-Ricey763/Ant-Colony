local TableUtil = require(script:GetCustomProperty("TableUtil"))
local Dumpster = require(script:GetCustomProperty("Dumpster"))

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
	local nest = World.SpawnAsset(NEST_ASSET, { position = GetRandomNestPos(), parent = World.GetRootObject() })
	player:SetPrivateNetworkedData("Nest", nest:GetReference())
	-- center player cam on nest so they know where it is
	Events.BroadcastToPlayer(player, "MoveCamera", nest:GetWorldPosition() + Vector3.UP * 1000)
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