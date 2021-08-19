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
	Events.BroadcastToPlayer(player, "MoveCamera", nest:GetWorldPosition() + Vector3.UP * 1000)
end

Events.Connect("GameStateChanged", function (oldState, newState)
	if newState == ROUND_STATE then
		currentDump = Dumpster.New()
		for i, player in ipairs(Game.GetPlayers()) do
			NewColony(player)
		end
		currentDump:Dump(function ()
			TableUtil.clear(occupiedLocations)
		end)
	elseif newState == ROUND_STATE + 1 then
		currentDump:Burn()
		currentDump = nil
	end
end)