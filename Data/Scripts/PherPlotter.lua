local plotAbility = script:GetCustomProperty("PlotAbility"):WaitForObject()
local switchAbility = script:GetCustomProperty("SwitchAbility"):WaitForObject()
local deleteAbility = script:GetCustomProperty("DeleteAbility"):WaitForObject()
local pher = script:GetCustomProperty("Pheromone")

local PHER_TYPES = {
	"Follow",
	"Food",
	"Block",
}

local PHER_COLORS = {
	Color.CYAN,
	Color.GREEN,
	Color.ORANGE,
}

local pherIndex = 1
local mouseUpdated = false
local function WaitForMouseUpdate()
	mouseUpdated = false
	Events.BroadcastToPlayer(plotAbility.owner, "GetMouseHit")
	repeat Task.Wait() until mouseUpdated
end

local function OnPlotExecute(ability)
	WaitForMouseUpdate()

	local hit = ability:GetTargetData().hitObject
	if Object.IsValid(hit) and not hit.parent:GetCustomProperty("HasUI") then
		local newPher = World.SpawnAsset(pher, { position = ability:GetTargetData():GetHitPosition() })
		newPher:SetNetworkedCustomProperty("Type", PHER_TYPES[pherIndex])
		newPher:SetColor(PHER_COLORS[pherIndex])
	elseif Object.IsValid(hit) then
		-- this is kinda lazy way to do it, but we DO NOT want a pheromone spawning whenever they click
		Events.BroadcastToPlayer(ability.owner, hit.parent.name .. "UI",hit.parent:GetReference())
	end
end

local function OnSwitchExecute(ability)
	pherIndex = pherIndex % #PHER_TYPES + 1
	-- also need to notify client for UI update
end

local function OnDeleteExecute(ability)
	WaitForMouseUpdate()

	local hitObj = ability:GetTargetData().hitObject
	if Object.IsValid(hitObj) and hitObj.name == "Pheromone" then
		hitObj:Destroy()
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

deleteAbility.executeEvent:Connect(OnDeleteExecute)
switchAbility.executeEvent:Connect(OnSwitchExecute)
plotAbility.executeEvent:Connect(OnPlotExecute)
Events.ConnectForPlayer("MouseHit", OnMouseHitRecieved)