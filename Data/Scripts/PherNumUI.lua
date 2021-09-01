local num = script.parent
local player = Game.GetLocalPlayer()
local NestLevels = require(script:GetCustomProperty("NestLevels"))

local function GetMax(player, str)
	return NestLevels[player:GetResource("NestLevel")][str]
end

Task.Wait(0.5)
num.text = (player:GetResource("Pher") or "0") .. "/" .. GetMax(player, "maxPher")
player.resourceChangedEvent:Connect(function (player, name, val)
	if name == "Pher" then
		num.text = val .. "/" .. GetMax(player, "maxPher") 
	end
end)