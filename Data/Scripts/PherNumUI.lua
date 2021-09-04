local num = script.parent
local player = Game.GetLocalPlayer()
local NestLevels = require(script:GetCustomProperty("NestLevels"))

local function GetMax(str)
	if player:GetResource("NestLevel") > 0 then
		return NestLevels[player:GetResource("NestLevel")][str]
	end
	return ""
end

player.resourceChangedEvent:Connect(function (_, name, val)
	if name == "Pher" then
		num.text = val .. "/" .. GetMax("maxPher") 
	end
end)