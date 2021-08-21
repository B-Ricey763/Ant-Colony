local DIST_TO_GROUND = 100
local function flatten(vec)
	return vec * Vector3.New(1, 1, 0)
end

local function GetAntSpeed(ant)
	return ant:GetCustomProperty("Speed") * ant:GetCustomProperty("SpeedMultiplier")
end

local function CastToGround(ant)
	return World.Raycast(ant:GetWorldPosition(), ant:GetWorldPosition() - Vector3.UP * 10000)
end

local AntMover = {}

function AntMover.Forward(ant, forward, mult)
	local dist = GetAntSpeed(ant) * (mult or 1) -- to handle nil cases
	-- Make ant respect gravity
	local groundResult = CastToGround(ant)
	local heightOffGround = ant:GetWorldPosition().z
	if groundResult and groundResult.other.name ~= "Pheromone" then -- may need to check for other objects in the future
		heightOffGround = groundResult:GetImpactPosition().z + DIST_TO_GROUND
	end
	local rot = Rotation.New(flatten(forward), Vector3.UP)
	local trans = Transform.New(
		rot,
		flatten(ant:GetWorldPosition()) + rot*Vector3.New(dist, 0, heightOffGround),
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