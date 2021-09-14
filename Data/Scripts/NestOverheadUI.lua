local player = Game.GetLocalPlayer()
local nest = script:GetCustomProperty("Nest"):WaitForObject()
local billboard = require(script:GetCustomProperty("Billboard"))
local NestLevels = require(script:GetCustomProperty("NestLevels"))
local health = script:GetCustomProperty("Health"):WaitForObject()
local name = script:GetCustomProperty("Name"):WaitForObject()
local manageButton = script:GetCustomProperty("ManageButton"):WaitForObject()
local owner = nil
local currentVisibility = nil

local function GetMax(str)
	if owner and owner:GetResource("NestLevel") > 0 then
		return NestLevels[owner:GetResource("NestLevel")][str]
	end
	return -1
end

-- This is stupid because I don't know if the owner will be set or not, oh well!!!
local bHasLocalPlayer = false
local function SetupForLocalPlayer()

	-- only manage once for local player
	if (bHasLocalPlayer) then return end
	bHasLocalPlayer = true

	if player.id ~= nest:GetCustomProperty("ownerId") then return end
	-- Let the player know its theirs
	name.text = "Your nest"

	manageButton.visibility = Visibility.INHERIT
	manageButton.clickedEvent:Connect(function ()
		-- show the nest ui
		Events.Broadcast("NestUI", nest:GetReference())
		script.parent.visibility = Visibility.FORCE_OFF
	end)
end

local closeConn = Events.Connect("NestUIClosed", function ()
	if not Object.IsValid(script.parent) then return end
	
	script.parent.visibility = Visibility.FORCE_ON
end)

Events.Connect("ShowTutorial", function()
	if not Object.IsValid(script.parent) then return end
	currentVisibility = script.parent.visibility
	script.parent.visibility = Visibility.FORCE_OFF
end)

Events.Connect("HideTutorial", function()
	if not Object.IsValid(script.parent) then return end
	if (currentVisibility) then
		script.parent.visibility = currentVisibility
	end
end)

-- update function to detect changes
local tsk = nil
local update = function()
	-- end this task
	if (not Object.IsValid(nest)) then
		if (tsk) then
			tsk:Cancel()
		end
		return
	end

	local pl = Game.FindPlayer(nest:GetCustomProperty("ownerId"))
	if (Object.IsValid(pl)) then
		owner = pl
 		name.text = pl.name .. "'s Nest"
		SetupForLocalPlayer()

		-- update health
		if Object.IsValid(health) then
			health.progress = pl:GetResource("Health") / GetMax("maxHealth")
		end
	end
end
local tsk = Task.Spawn(update)
tsk.repeatCount = -1
tsk.repeatInterval = 0.1


script.destroyEvent:Connect(function ()
	closeConn:Disconnect()
end)


local b = billboard.New(nest, script.parent, Vector3.UP * 1000)