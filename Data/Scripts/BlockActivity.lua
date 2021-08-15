local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local PherTracker = activityHandler:GetCustomProperty("PherTracker"):WaitForObject()
local ant = activityHandler.parent.parent

local BlockActivity = {}

function BlockActivity.tick(activity, dt)
	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) and currentPher:GetCustomProperty("Type") == "Block" then
		activity.priority = Priorities.PRIMARY -- should be pretty important
	end
end

function BlockActivity.start(activity)
	local currentPher = PherTracker.context.Current
	if Object.IsValid(currentPher) then
		local result = World.Raycast(ant:GetPosition(), currentPher:GetPosition())
		if result and result.other == currentPher then
			AntMover.Reflect(ant, ant:GetTransform():GetForwardVector(), result:GetImpactNormal())
			activity.priority = Priorities.INACTIVE
			PherTracker.context.Current = nil
		end
	end
end

activityHandler:AddActivity("BlockActivity", BlockActivity)