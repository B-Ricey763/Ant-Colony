local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local ant = activityHandler.parent
local SPEED = ant:GetCustomProperty("Speed")

local Roam = {}

function Roam.tickHighestPriority(activity, dt)
	ant:SetPosition(ant:GetTransform():TransformPosition(Vector3.FORWARD * SPEED))
end

local activity = activityHandler:AddActivity("Roam", Roam)
activity.priority = Priorities.IDLE