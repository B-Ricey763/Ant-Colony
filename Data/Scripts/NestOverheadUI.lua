local player = Game.GetLocalPlayer()
local nest = script:GetCustomProperty("Nest"):WaitForObject()
local billboard = require(script:GetCustomProperty("Billboard"))
local NestLevels = require(script:GetCustomProperty("NestLevels"))
local health = script:GetCustomProperty("Health"):WaitForObject()
local name = script:GetCustomProperty("Name"):WaitForObject()
local manageButton = script:GetCustomProperty("ManageButton"):WaitForObject()
local owner = nil

local function GetMax(str)
	if owner:GetResource("NestLevel") > 0 then
		return NestLevels[owner:GetResource("NestLevel")][str]
	end
	return ""
end

local function Display()
	name.text = owner.name .. "'s Nest"
	health.progress = owner:GetResource("Health") / GetMax("maxHealth") 
	owner.resourceChangedEvent:Connect(function (p, resource, amount)
		if resource == "Health" then
			health.progress = amount / GetMax("maxHealth")
		end
	end)
end

-- This is stupid because I don't know if the owner will be set or not, oh well!!!
local function Manage()
	owner = Game.FindPlayer(nest:GetCustomProperty("ownerId"))
	if owner then
		Display()
	end

	if player.id ~= nest:GetCustomProperty("ownerId") then return end

	manageButton.visibility = Visibility.INHERIT
	manageButton.clickedEvent:Connect(function ()
		-- show the nest ui
		Events.Broadcast("NestUI", nest:GetReference())
		script.parent.visibility = Visibility.FORCE_OFF
	end)
end

Events.Connect("NestUIClosed", function ()
	script.parent.visibility = Visibility.FORCE_ON
end)

-- Handle both cases
Manage()
nest.networkedPropertyChangedEvent:Connect(function (owner, name)
	if name == "ownerId" then
		Manage()
	end
end)


local b = billboard.New(nest, script.parent, Vector3.UP * 500)