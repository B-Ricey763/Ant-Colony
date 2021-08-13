local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local PherTracker = activityHandler:GetCustomProperty("PherTracker"):WaitForObject()
local ant = activityHandler.parent

local SPEED = ant:GetCustomProperty("Speed")

local function reflect(lightVector, normalVector)
	return lightVector - 2 * normalVector * (lightVector .. normalVector)
end

local Collide = {}

local currentResult = nil

function Collide.tick(activity, dt)
	-- project a ray forward, checking for obstacles
	local hitResult = World.Raycast(ant:GetPosition(), ant:GetTransform():TransformPosition(Vector3.FORWARD * 100))
	if hitResult and hitResult.other.name ~= "Pheromone" then
		activity.priority = Priorities.URGENT + 1 -- it should always fire
		currentResult = hitResult
	end
end

function Collide.tickHighestPriority(activity, dt)
	if currentResult then
		local forwardVec = ant:GetTransform():GetForwardVector()
		local reflection = reflect(forwardVec, currentResult:GetImpactNormal()) * Vector3.New(1, 1, 0)
		ant:SetRotation(Rotation.New(reflection, Vector3.UP))
		ant:SetPosition(ant:GetPosition() + forwardVec)
		activity.priority = Priorities.INACTIVE
		PherTracker.context.Current = nil -- so the pheremone doesn't lock on
	end
end

local activity = activityHandler:AddActivity("Collide", Collide)