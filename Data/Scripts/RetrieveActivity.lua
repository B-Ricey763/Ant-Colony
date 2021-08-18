local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local PherTracker = activityHandler:GetCustomProperty("PherTracker"):WaitForObject()
local ant = activityHandler.parent.parent

local SPEED = ant:GetCustomProperty("Speed")

local RetrieveActivity = {}

function RetrieveActivity.tick(activity, dt)
	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) and currentPher:GetCustomProperty("Type") == "Retrieve" then
		activity.priority = Priorities.PRIMARY + 25 -- should be pretty important
	else
		activity.priority = Priorities.INACTIVE
	end
end

function RetrieveActivity.tickHighestPriority(activity, dt)
	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) then
		local arrived = AntMover.MoveTo(ant, currentPher, SPEED)
		if arrived then
			local diff = currentPher:GetWorldPosition() - ant:GetWorldPosition()
			activity.priority = Priorities.INACTIVE
			PherTracker.context.Current = nil
			AntMover.Forward(ant, -diff:GetNormalized(), SPEED)
		end
	end
end

activityHandler:AddActivity("RetrieveActivity", RetrieveActivity)