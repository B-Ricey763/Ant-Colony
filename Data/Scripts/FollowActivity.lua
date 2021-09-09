local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local PherTracker = activityHandler:GetCustomProperty("PherTracker"):WaitForObject()
local ant = activityHandler.parent.parent

local SPEED = ant:GetCustomProperty("Speed")

local FollowActivity = {}

function FollowActivity.tick(activity, dt)
	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) and currentPher:GetCustomProperty("Type") == "Follow" then
		activity.priority = Priorities.PRIMARY - 50 -- should get overwritten by more urgent events
	else
		activity.priority = Priorities.INACTIVE
	end
end

function FollowActivity.tickHighestPriority(activity, dt)
	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) then
		local arrived = AntMover.MoveTo(ant, currentPher, dt)
		if arrived then
			activity.priority = Priorities.INACTIVE
			PherTracker.context.Current = nil
		end
	end
end

activityHandler:AddActivity("Follow", FollowActivity)