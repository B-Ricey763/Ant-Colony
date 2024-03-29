local plotAbility = script:GetCustomProperty("PlotAbility"):WaitForObject()
local switchAbility = script:GetCustomProperty("SwitchAbility"):WaitForObject()
local deleteAbility = script:GetCustomProperty("DeleteAbility"):WaitForObject()
local TableUtil = require(script:GetCustomProperty("TableUtil"))
local Dumpster = require(script:GetCustomProperty("Dumpster"))
local pher = script:GetCustomProperty("Pheromone")
local NestLevels = require(script:GetCustomProperty("NestLevels"))

local function GetMax(player, str)
	return NestLevels[player:GetResource("NestLevel")][str]
end

local PHER_TYPES = {
	"Follow",
	"Food",
	"Fight",
	"Block",
}

local PHER_COLORS = {
	Color.CYAN,
	Color.GREEN,
	Color.RED,
	Color.ORANGE,
}

local pherIndex = 0
local mouseUpdated = false
local function WaitForMouseUpdate()
	mouseUpdated = false
	Events.BroadcastToPlayer(plotAbility.owner, "GetMouseHit")
	repeat Task.Wait() until mouseUpdated
end

local isErasing = false

local function CastForPhers(start, fin)
	-- Change the number value to whatever readius you please
	return World.SpherecastAll(start, fin, 150, {
		shouldDebugRender = true,
		
	})
end

local function OnPlotExecute(ability)
	WaitForMouseUpdate()

	local hit = ability:GetTargetData().hitObject
	local hitPos = ability:GetTargetData():GetHitPosition()
	local pherFolder = script.parent:GetCustomProperty("Pheromones"):WaitForObject()
	if isErasing then
		local hits = CastForPhers(ability.owner:GetViewWorldPosition(), hitPos) 
		for _, hit in ipairs(hits) do
			if hit and hit.other.name == "Pheromone" then
				Events.BroadcastToPlayer(ability.owner, "DestroyPher", hit.other.id)
				hit.other:Destroy()
				ability.owner:RemoveResource("Pher", 1)
			end
		end
	elseif Object.IsValid(hit) and 
		not hit.parent:GetCustomProperty("HasUI") 
		and ability.owner:GetResource("Pher") < GetMax(ability.owner, "maxPher") 
	then

		local newPher = World.SpawnAsset(pher, { position = ability:GetTargetData():GetHitPosition(), parent = pherFolder })
		Events.BroadcastToPlayer(ability.owner, "SpawnPher", newPher.id, newPher:GetWorldPosition(), PHER_COLORS[pherIndex])
		newPher:SetNetworkedCustomProperty("Type", PHER_TYPES[pherIndex])
		newPher.team = ability.owner.team

		ability.owner:AddResource("Pher", 1)
	elseif Object.IsValid(hit) then
		-- this is kinda lazy way to do it, but we DO NOT want a pheromone spawning whenever they click
		Events.BroadcastToPlayer(ability.owner, hit.parent.name .. "UI",hit.parent:GetReference())
	end

end

local function OnSwitchExecute(ability)
	pherIndex = pherIndex % #PHER_TYPES + 1
	-- also need to notify client for UI update
	Events.BroadcastToPlayer(ability.owner,"PherSwitch", PHER_TYPES[pherIndex], PHER_COLORS[pherIndex])
end

local function SwitchToPher(player, name)
	if player == switchAbility.owner then
		local i =  TableUtil.find(PHER_TYPES, name)
		if i then
			-- very lazy way of doing it, but it should work!
			pherIndex = i - 1
			OnSwitchExecute(switchAbility)
		end
	end
end

local function OnDeleteExecute(ability)
	WaitForMouseUpdate()

	local hitObj = ability:GetTargetData().hitObject
	if Object.IsValid(hitObj) and hitObj.name == "Pheromone" then
		Events.BroadcastToPlayer(ability.owner, "DestroyPher", hitObj.id)
		hitObj:Destroy()
		ability.owner:RemoveResource("Pher", 1)
	end
end

local function OnMouseHitRecieved(player, hitPos, hitObj)
	if player == plotAbility.owner and hitPos and hitObj then
		local targetData = AbilityTarget.New()
		targetData:SetHitPosition(hitPos)
		targetData.hitObject = World.FindObjectById(hitObj)
		-- update both of them, since both use it
		plotAbility:SetTargetData(targetData)
		deleteAbility:SetTargetData(targetData)
		mouseUpdated = true
	end
end



local dump = Dumpster.New()
dump:Dump(deleteAbility.executeEvent:Connect(OnDeleteExecute))
dump:Dump(switchAbility.executeEvent:Connect(OnSwitchExecute))
dump:Dump(plotAbility.executeEvent:Connect(OnPlotExecute))
dump:Dump(Events.ConnectForPlayer("MouseHit", OnMouseHitRecieved))
dump:Dump(Events.ConnectForPlayer("SwitchToPher", SwitchToPher))


-- We call this to intialize the UI on the client side,
-- so it updates off the bat
repeat Task.Wait() until switchAbility.owner
OnSwitchExecute(switchAbility)
dump:Dump(switchAbility.owner.bindingPressedEvent:Connect(function (player, bind)
	if bind == "ability_extra_22" then -- the "e" key
		isErasing = not isErasing -- toggle erase mode
		Events.BroadcastToPlayer(player, "EraseToggled", isErasing)
	end
end))

dump:Dump(Events.ConnectForPlayer("EraseToggle", function (player)
	isErasing = not isErasing -- toggle erase mode
	Events.BroadcastToPlayer(player, "EraseToggled", isErasing)
end))

script.destroyEvent:Connect(function ()
	dump:Burn()
end)