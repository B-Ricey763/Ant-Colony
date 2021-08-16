Events.Connect("GetMouseHit", function ()
	local hit = UI.GetCursorHitResult()
	if hit then
		Events.BroadcastToServer("MouseHit", hit:GetImpactPosition(), hit.other.id)
	else
		Events.BroadcastToServer("MouseHit", nil) -- send nothing, but server still needs to update
	end
end)