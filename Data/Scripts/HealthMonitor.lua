local ant = script.parent.parent

ant.networkedPropertyChangedEvent:Connect(function (obj, property)
	if property == "Health" then
		local health = ant:GetCustomProperty("Health")
		if health <= 0 then
			ant:Destroy()
		end
	end
end)