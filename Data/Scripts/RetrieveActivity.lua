local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local PherTracker = activityHandler:GetCustomProperty("PherTracker"):WaitForObject()
local ant = activityHandler.parent.parent

local RetrieveActivity = {}

local retrievePher = nil

function RetrieveActivity.tick(activity, dt)
	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) and currentPher:GetCustomProperty("Type") == "Retrieve" then
		retrievePher = currentPher
		activity.priority = Priorities.PRIMARY + 25 -- should be pretty important
	end
end

function RetrieveActivity.tickHighestPriority(activity, dt)
	if Object.IsValid(retrievePher) then
		local arrived = AntMover.MoveTo(ant, retrievePher, dt)
		if arrived then
			local diff = retrievePher:GetWorldPosition() - ant:GetWorldPosition()
			activity.priority = Priorities.INACTIVE
			PherTracker.context.Current = nil
			retrievePher = nil
			AntMover.Forward(ant, -diff:GetNormalized(), dt)
		end
	else
		retrievePher = nil
		activity.priority = Priorities.INACTIVE
	end
end

activityHandler:AddActivity("RetrieveActivity", RetrieveActivity)