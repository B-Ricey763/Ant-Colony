local function OnFoodRetrieved(position)
    UI.ShowFlyUpText("+1", position+Vector3.New(0,0,300), {color=Color.YELLOW, isBig=true, duration=2})
end

Events.Connect("EVENT_FOOD_RETRIEVED", OnFoodRetrieved)