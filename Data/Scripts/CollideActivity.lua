local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local PherTracker = activityHandler:GetCustomProperty("PherTracker"):WaitForObject()
local ant = activityHandler.parent.parent
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))

local SPEED = ant:GetCustomProperty("Speed")

local function reflect(lightVector, normalVector)
	return lightVector - 2 * normalVector * (lightVector .. normalVector)
end

local Collide = {}

local currentResult = nil

function Collide.tick(activity, dt)
	-- project a ray forward, checking for obstacles
	local opts = {
		checkObjects = World.FindObjectsByName("Border Wall")
	}
	local hitResult = World.Raycast(ant:GetPosition(), ant:GetTransform():TransformPosition(Vector3.FORWARD * 100), opts)
	if hitResult and hitResult.other.name ~= "Pheromone" then
		-- disabled for now...
		activity.priority = Priorities.URGENT + 1 -- it should always fire
		currentResult = hitResult
	end
end

function Collide.start(activity)
	if currentResult then
		local forwardVec = ant:GetTransform():GetForwardVector()
		AntMover.Reflect(ant, forwardVec, currentResult:GetImpactNormal())
		activity.priority = Priorities.INACTIVE
		PherTracker.context.Current = nil -- so the pheremone doesn't lock on
	end
end

local activity = activityHandler:AddActivity("Collide", Collide)