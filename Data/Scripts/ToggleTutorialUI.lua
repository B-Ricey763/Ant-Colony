
local propDefaultCamera = script:GetCustomProperty("DefaultCamera"):WaitForObject()
local propTutorialCamera = script:GetCustomProperty("TutorialCamera"):WaitForObject() 
local parent = script.parent
local player = Game.GetLocalPlayer()
local InitPosition = propTutorialCamera:GetPosition()

local viewTutorial = true
parent.visibility = Visibility.FORCE_OFF

player.bindingPressedEvent:Connect(function (p, binding)
	if binding == "ability_extra_35" then
		if viewTutorial then
			player:SetOverrideCamera(propTutorialCamera)
			propTutorialCamera:SetPosition(InitPosition)
			parent.visibility = Visibility.FORCE_ON
		else
			player:ClearOverrideCamera()
			parent.visibility = Visibility.FORCE_OFF
		end
		viewTutorial = (not viewTutorial)
	end
end)