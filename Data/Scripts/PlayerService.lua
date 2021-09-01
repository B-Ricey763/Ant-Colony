local playerPrison = script:GetCustomProperty("PlayerPrison"):WaitForObject()

-- So they don't interfere with the camera 
local function LockPlayer(player)
	-- player.isVisible = false
	player:AttachToCoreObject(playerPrison)
end

local function OnPlayerJoined(player)
	player:SetResource("NestLevel", 1) -- so code doesn't error
	LockPlayer(player)
end

local function OnPlayerLeft(player)
	
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)