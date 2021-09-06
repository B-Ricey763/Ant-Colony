local player = Game.GetLocalPlayer()

player.bindingPressedEvent:Connect(function (p, binding)
	if binding == "ability_extra_24" then
		script.parent.visibility = script.parent.visibility == Visibility.FORCE_OFF and Visibility.FORCE_ON or Visibility.FORCE_OFF
	end
end)