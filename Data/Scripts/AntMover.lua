return function (ant, forward, dist)
	local trans = Transform.New(
		Rotation.New(forward, Vector3.UP),
		ant:GetTransform():TransformPosition(Vector3.FORWARD * dist),
		Vector3.ONE
	)
	ant:SetTransform(trans)
end