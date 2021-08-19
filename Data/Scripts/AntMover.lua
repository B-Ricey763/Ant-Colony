local function flatten(vec)
	return vec * Vector3.New(1, 1, 0)
end

local function GetAntSpeed(ant)
	return ant:GetCustomProperty("Speed") * ant:GetCustomProperty("SpeedMultiplier")
end

local AntMover = {}

function AntMover.Forward(ant, forward, mult)
	local dist = GetAntSpeed(ant) * (mult or 1) -- to handle nil cases
	local trans = Transform.New(
		Rotation.New(flatten(forward), Vector3.UP),
		ant:GetTransform():TransformPosition(Vector3.FORWARD * dist),
		Vector3.ONE
	)
	ant:SetTransform(trans)
end

function AntMover.Reflect(ant, light, normal)
	local lightVector = flatten(light)
	local normalVector = flatten(normal)
	local reflection =  lightVector - 2 * normalVector * (lightVector .. normalVector)
	AntMover.Forward(ant, reflection, 0) -- just to keep the api consistent
end

function AntMover.MoveTo(ant, object, mult)
	local function flatten(vec)
		return vec * Vector3.New(1, 1, 0)
	end

	local diff = (flatten(object:GetWorldPosition()) - flatten(ant:GetWorldPosition()))
	if diff.sizeSquared > 100 then
		AntMover.Forward(ant, diff:GetNormalized(), mult)
	else
		return true
	end
	return false
end

return AntMover