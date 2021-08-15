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
	end
end

function FollowActivity.tickHighestPriority(activity, dt)
	local function flatten(vec)
		return vec * Vector3.New(1, 1, 0)
	end

	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) then
		local diff = (flatten(currentPher:GetPosition()) - flatten(ant:GetPosition()))
		if diff.sizeSquared > 100 then
			AntMover.Forward(ant, diff:GetNormalized(), SPEED)
		else
			PherTracker.context.Current = nil
			activity.priority = Priorities.INACTIVE
		end
	end
end

activityHandler:AddActivity("FollowActivity", FollowActivity)