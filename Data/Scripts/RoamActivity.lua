local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local ant = activityHandler.parent.parent

local ROAM_SPREAD = 2

local Roam = {}

local timeLeft = 0
local randDir = 0

function Roam.tickHighestPriority(activity, dt)
	-- very clever system to keep ant going in a nice way
	if timeLeft <= 0 then
		timeLeft = math.random() * 2 -- to get decimal numbers
		randDir = math.random() - 0.5 -- random number from -.5 to .5
	end
	-- this just gets the ant moving in a somewhat random pattern
	-- local rot = Rotation.New(0, 0, randDir)
	AntMover.Forward(ant, ant:GetTransform():GetForwardVector(), dt)

	timeLeft = timeLeft - dt
end

local activity = activityHandler:AddActivity("Roam", Roam)
activity.priority = Priorities.IDLE