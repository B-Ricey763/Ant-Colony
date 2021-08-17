local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local ant = activityHandler.parent.parent

local SPEED = ant:GetCustomProperty("Speed")
local ROAM_SPREAD = 2

local Roam = {}

function Roam.tickHighestPriority(activity, dt)
	-- this just gets the ant moving in a somewhat random pattern
	local rot = Rotation.New(0, 0, math.random(-ROAM_SPREAD, ROAM_SPREAD))
	AntMover.Forward(ant, rot * ant:GetTransform():GetForwardVector(), SPEED)
end

local activity = activityHandler:AddActivity("Roam", Roam)
activity.priority = Priorities.IDLE