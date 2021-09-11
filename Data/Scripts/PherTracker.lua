local pherTrigger = script:GetCustomProperty("PherTrigger"):WaitForObject()
local hitboxTrigger = script.parent:FindChildByName("HitboxTrigger")
local root = script:FindTemplateRoot();

local numTrack = 5
local pheromones = {}
Current = nil

-- forget pheromones too far away
local function ForgetPheromone()
	-- remove the pheromone that is furthest away
	if (#pheromones>numTrack) then
		local D = 0
		local I = -1
		for i,pher in ipairs(pheromones) do
			if (Object.IsValid(pher)) then
				local p0 = pher:GetWorldPosition()
				local p1 = hitboxTrigger:GetWorldPosition()
				local distance = (p0-p1).size
				-- cannot forget the latest added pheromone
				if (distance>D and i~=#pheromones) then
					D = distance
					I = i
				end
			end
		end
		if (I>=0) then

			CoreDebug.DrawBox(pheromones[I]:GetWorldPosition(), Vector3.New(50), {
				duration = 1,
				color = Color.RED,
				thickness = 5
			})

			table.remove(pheromones, I)
		end
	end
end

-- get the closest pheromone
local function GetClosestPheromone(filter)
	local f = function(distance)
		return false
	end
	filter = (filter or f)
	local D = 99999999999999
	local I = -1
	local threshold = pherTrigger:GetScale().x*100 * 0.24
	local forward = root:GetWorldTransform():GetForwardVector()
	for i,pher in ipairs(pheromones) do
		if (Object.IsValid(pher)) then
			local p0 = pher:GetWorldPosition()
			local p1 = hitboxTrigger:GetWorldPosition() + (forward * threshold)

			local offset = Vector3.New(0,0,50)
			CoreDebug.DrawLine(p0+offset, p1+offset, {
				duration = dt,
				color = Color.YELLOW,
				thickness = 3
			})

			CoreDebug.DrawBox(p0, Vector3.New(50), {
				duration = dt,
				color = Color.BLUE,
				thickness = 3
			})

			local d = (p0-p1)
			local dot = d .. forward
			local distance = d.size
			if (distance<D) then
				if (dot>0 or filter(distance)) then
					D = distance
					I = i
				end
			end
		end
	end
	return I
end

-- forget invalid/removed pheromones that is currently being tracked
local function ForgetInvalidPheromones()
	local validPheromones = {}
	for i,pher in ipairs(pheromones) do
		if Object.IsValid(pher) then
			table.insert(validPheromones, pher)
		end
	end
	if (#validPheromones ~= #pheromones) then
		print("forgot some pheromones...")
	end
	pheromones = validPheromones
end

-- continuously track pheromones
function Tick(dt)
	local i = GetClosestPheromone()
	if (i>=0) then
		Current = pheromones[i]
	end

	if (Object.IsValid(Current)) then
		local offset = Vector3.New(0,0,50)
		CoreDebug.DrawLine(script.parent:GetWorldPosition()+offset, Current:GetWorldPosition()+offset, {
			duration = dt,
			color = Color.GREEN,
			thickness = 6
		})
	end
end

-- make sure we dont have multiple entries of any pheromone
local function RemoveDuplicatePheromones()

	local uniquePheromones = {}
	for i,pher in ipairs(pheromones) do
		uniquePheromones[pher] = i
	end

	pheromones = {}
	for pher,_ in pairs(uniquePheromones) do
		table.insert(pheromones, pher)
	end

end

local function OnBeginOverlap(trigger, hit)
	if hit:IsA("CoreObject") and hit.name == "Pheromone" and (hit.team == 0 or hit.team == hitboxTrigger.team)  then -- make sure the teams match, but neatural stuff always passes

		-- insert pheromones we are tracking
		table.insert(pheromones, hit)
		-- forget pheromones
		ForgetPheromone();
		-- forget invalid ones if we have here
		ForgetInvalidPheromones()
		-- remove duplicates
		RemoveDuplicatePheromones()

		--print(#pheromones)

		Current = hit

	end
end

-- periodically forget invalid
local PeriodicallyForget = nil
PeriodicallyForget = function ()
	Task.Wait(1)

	-- first lets forget invalid pheromones
	ForgetInvalidPheromones()

	-- track far away pheromones if they are the closest ants remember
	local filter = function(distance)
		return distance>pherTrigger:GetScale().x*100*2
	end
	local i = GetClosestPheromone(filter)
	if (i>=0) then
		Current = pheromones[i]
	end

	Task.Spawn(PeriodicallyForget)
end
Task.Spawn(PeriodicallyForget)

pherTrigger.beginOverlapEvent:Connect(OnBeginOverlap)