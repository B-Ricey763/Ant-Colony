local damageSound = script:GetCustomProperty("DamageSound"):WaitForObject()
local nest = script.parent.parent


repeat Task.Wait(0.1) until nest:GetCustomProperty("ownerId")

local player = Game.FindPlayer(nest:GetCustomProperty("ownerId"))
local conn = player.resourceChangedEvent:Connect(function (plr, name, newVal)
	if name == "Health" then
		damageSound:Play()
	end
end)

script.destroyEvent:Connect(function ()
	conn:Disconnect()
end)