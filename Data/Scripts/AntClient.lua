local ant = script.parent.parent
local foodVis = script:GetCustomProperty("FoodVisual"):WaitForObject()

ant.networkedPropertyChangedEvent:Connect(function (object, property)
	if property == "CarryingFood" then
		foodVis.visibility = ant:GetCustomProperty("CarryingFood") == true and Visibility.INHERIT or Visibility.FORCE_OFF
	end
end)