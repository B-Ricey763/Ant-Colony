local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local PherTracker = activityHandler:GetCustomProperty("PherTracker"):WaitForObject()
local ant = activityHandler.parent.parent

local SPEED = ant:GetCustomProperty("Speed")

local FightFollowActivity = {}

function FightFollowActivity.tick(activity, dt)
	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) and currentPher:GetCustomProperty("Type") == "Fight" then
		activity.priority = Priorities.PRIMARY - 25
	else
		activity.priority = Priorities.INACTIVE
	end
end

function FightFollowActivity.tickHighestPriority(activity, dt)
	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) then
		local arrived = AntMover.MoveTo(ant, currentPher, dt)
		if arrived then
			activity.priority = Priorities.INACTIVE
			PherTracker.context.Current = nil
		end
	end
end

activityHandler:AddActivity("FightFollowActivity", FightFollowActivity)