local activityHandler = script.parent
local Priorities = require(activityHandler:GetCustomProperty("Priorities"))
local AntMover = require(activityHandler:GetCustomProperty("AntMover"))
local PherTracker = activityHandler:GetCustomProperty("PherTracker"):WaitForObject()
local ant = activityHandler.parent.parent
local trigger = script:GetCustomProperty("PherTrigger"):WaitForObject()
local hitboxTrig = script:GetCustomProperty("HitboxTrigger"):WaitForObject()

local ATTACK_SPEED = ant:GetCustomProperty("AttackSpeed")
local DAMAGE = ant:GetCustomProperty("Damage")
local MIN_DISTS = {
	Ant = 100,
	Nest = 1000,
}

local AttackActivity = {}

local target = nil
local lastAttackTime = 0

local function flatten(vec)
	return vec * Vector3.New(1, 1, 0)
end

local function ConsiderAttack(trig, hit)
	if hit.name == "HitboxTrigger" and (not ant:IsAncestorOf(hit)) and (hit.team ~= hitboxTrig.team) then 
		print(hitboxTrig.team)
		print(hit.team)
		activityHandler:FindActivity("Attack").priority = Priorities.URGENT
		target = hit:FindAncestorByName("Ant") or hit:FindAncestorByName("Nest")
	end
end

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
	if not (Object.IsValid(target) and Object.IsValid(ant)) then
		activity.priority = Priorities.INACTIVE
		return 
	end

	local offset = Vector3.New(0,0,50)
	CoreDebug.DrawLine(ant:GetWorldPosition()+offset, target:GetWorldPosition()+offset, {
		duration = dt,
		color = Color.RED,
		thickness = 8
	})

	CoreDebug.DrawBox(target:GetWorldPosition(), Vector3.New(50), {
		duration = dt,
		color = Color.RED,
		thickness = 8
	})

	local minDist = MIN_DISTS[target.name] or 100 -- default just in case
	local dist = (flatten(ant:GetWorldPosition()) - flatten(target:GetWorldPosition()))
	if dist.size > 1000 then
		-- we lose interest and go away
		activity.priority = Priorities.INACTIVE
		target = nil
	elseif dist.size > minDist then
		local hit, diff = AntMover.MoveTo(ant, target, dt, 500)
	elseif time() > lastAttackTime + ATTACK_SPEED then
		Attack(target)
		lastAttackTime = time()
	end
end

activityHandler:AddActivity("Attack", AttackActivity)

trigger.beginOverlapEvent:Connect(ConsiderAttack)
-- Let everything intialize
Task.Wait(0.5)
for _, hit in ipairs(trigger:GetOverlappingObjects()) do
	ConsiderAttack(trigger, hit)
end