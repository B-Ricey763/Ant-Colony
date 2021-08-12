local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local ant = activityHandler.parent
local SPEED = ant:GetCustomProperty("Speed")

local function reflect(lightVector, normalVector)
	return lightVector - 2 * normalVector * (lightVector .. normalVector)
end

local Collide = {}

function Collide.tick(activity, dt)
	-- project a ray forward, checking for obstacles
	local hitResult = World.Raycast(ant:GetPosition(), ant:GetTransform():TransformPosition(Vector3.FORWARD * 100))
	if hitResult and hitResult.other.name ~= "Pheromone" then
		activity.priority = Priorities.URGENT + 1 -- it should always fire
	end
end

function Collide.tickHighestPriority(activity, dt)
	-- local reflection = reflect(npc:GetTransform():GetForwardVector(), hitResult:GetImpactNormal()) * Vector3.New(1, 1, 0)
	-- npc:SetRotation(Rotation.New(reflection, Vector3.UP))
	-- npc:SetPosition(npc:GetPosition() + npc:GetTransform():GetForwardVector())
	-- tracker.Current = nil -- so the pheremone doesn't lock on
	-- activity.priority = Priorities.INACTIVE
end

local activity = activityHandler:AddActivity("Collide", Collide)