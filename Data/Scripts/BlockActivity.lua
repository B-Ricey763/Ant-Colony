local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local PherTracker = activityHandler:GetCustomProperty("PherTracker"):WaitForObject()
local ant = activityHandler.parent.parent

local BlockActivity = {}

function BlockActivity.tick(activity, dt)
	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) and currentPher:GetCustomProperty("Type") == "Block" then
		activity.priority = Priorities.PRIMARY + 50 -- should be pretty important
	else
		activity.priority = Priorities.INACTIVE
	end
end

function BlockActivity.tickHighestPriority(activity)
	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) then
		local closePos = currentPher:GetPosition() + ( currentPher:GetPosition() - ant:GetPosition()):GetNormalized() * 50
		local result = World.Raycast(closePos, currentPher:GetPosition())
		if result and result.other == currentPher then
			AntMover.Reflect(ant, ant:GetTransform():GetForwardVector(), result:GetImpactNormal())
		end
	end
	activity.priority = Priorities.INACTIVE
	PherTracker.context.Current = nil
end

activityHandler:AddActivity("Block", BlockActivity)