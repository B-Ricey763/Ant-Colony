
local function OnFoodRetrieved(position, num)
    UI.ShowFlyUpText("+" .. tostring(num), position+Vector3.New(0,0,300), {color=Color.YELLOW, isBig=true, duration=2})
end

Events.Connect("EVENT_FOOD_RETRIEVED", OnFoodRetrieved)