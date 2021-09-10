local damageSound = script:GetCustomProperty("DamageSound")
local nest = script.parent.parent


repeat Task.Wait(0.1) until nest:GetCustomProperty("ownerId")

local player = Game.FindPlayer(nest:GetCustomProperty("ownerId"))
player.resourceChangedEvent:Connect(function (name, newVal)
	if name == "Health" then
		damageSound:Play()
	end
end)