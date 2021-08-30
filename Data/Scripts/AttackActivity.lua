local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local PherTracker = activityHandler:GetCustomProperty("PherTracker"):WaitForObject()
local ant = activityHandler.parent.parent
local trigger = script:GetCustomProperty("PherTrigger"):WaitForObject()

local AttackActivity = {}

local target = nil
local lastAttackTime = 0

trigger.beginOverlapEvent:Connect(function (trig, hit)
	if hit.name == "HitboxTrigger" then
		activityHandler:FindActivity("Attack").priority = Priorities.URGENT
		target = hit:FindAncestorByName("Ant")
	end
end)

local function Attack(ant)
	-- shouldn't have to send an event for all clients, but I think that's the only way
	Events.BroadcastToAllPlayers("Attack", ant:GetReference())

	ant:SetNetworkedCustomProperty("Health", ant:GetCustomProperty("Health") - 1)
	print("Attacked!")
end

function AttackActivity.tickHighestPriority(activity, dt)
	if not Object.IsValid(target) then
		activity.priority = Priorities.INACTIVE
		return 
	end

	local dist = (ant:GetWorldPosition() - target:GetWorldPosition())
	if dist.size > 1000 then
		-- we lose interest and go away
		activity.priority = Priorities.INACTIVE
		target = nil
	elseif dist.size > 100 then
		local hit, diff = AntMover.MoveTo(ant, target, 1, 500)
	elseif time() > lastAttackTime + 3 then
		Attack(target)
		lastAttackTime = time()
	end
end

activityHandler:AddActivity("Attack", AttackActivity)