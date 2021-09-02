local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local PherTracker = activityHandler:GetCustomProperty("PherTracker"):WaitForObject()
local ant = activityHandler.parent.parent
local trigger = script:GetCustomProperty("PherTrigger"):WaitForObject()
local hitboxTrig = script:GetCustomProperty("HitboxTrigger"):WaitForObject()

local ATTACK_SPEED = ant:GetCustomProperty("AttackSpeed")
local DAMAGE = ant:GetCustomProperty("Damage")

local AttackActivity = {}

local target = nil
local lastAttackTime = 0

local function flatten(vec)
	return vec * Vector3.New(1, 1, 0)
end

trigger.beginOverlapEvent:Connect(function (trig, hit)
	if hit.name == "HitboxTrigger" and not ant:IsAncestorOf(hit) and hit.team ~= hitboxTrig.team then 
		activityHandler:FindActivity("Attack").priority = Priorities.URGENT
		target = hit:FindAncestorByName("Ant") or hit:FindAncestorByName("Nest")
	end
end)

local function Attack(t)
	-- shouldn't have to send an event for all clients, but I think that's the only way
	Events.BroadcastToAllPlayers("Attack", ant:GetReference())

	if t.name == "Ant" then
		t:SetNetworkedCustomProperty("Health", t:GetCustomProperty("Health") - DAMAGE)
	elseif t.name == "Nest" then
		local owner = Game.FindPlayer(t:GetCustomProperty("ownerId"))
		owner:RemoveResource("Health", DAMAGE)
		if owner:GetResource("Health") <= 0 then
			-- WE KILLED THEM!!!!!
			Events.Broadcast("KilledNest", ant, owner, t)
		end
	end
end

function AttackActivity.tickHighestPriority(activity, dt)
	if not Object.IsValid(target) then
		activity.priority = Priorities.INACTIVE
		return 
	end

	local dist = (flatten(ant:GetWorldPosition()) - flatten(target:GetWorldPosition()))
	if dist.size > 1000 then
		-- we lose interest and go away
		activity.priority = Priorities.INACTIVE
		target = nil
	elseif dist.size > 100 then
		local hit, diff = AntMover.MoveTo(ant, target, 1, 500)
	elseif time() > lastAttackTime + ATTACK_SPEED then
		Attack(target)
		lastAttackTime = time()
	end
end

activityHandler:AddActivity("Attack", AttackActivity)