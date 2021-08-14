local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local ant = activityHandler.parent.parent

local SPEED = ant:GetCustomProperty("Speed")

local Roam = {}

function Roam.tickHighestPriority(activity, dt)
	AntMover(ant, ant:GetTransform():GetForwardVector(), SPEED)
end

local activity = activityHandler:AddActivity("Roam", Roam)
activity.priority = Priorities.IDLE