local GAME_SCRIPTS = {
    [6961824067] = "https://raw.githubusercontent.com/Duckycashy/LiquidHub/main/FlingThingsandPeople.lua", 
    [0] = "https://raw.githubusercontent.com/YourUsername/YourRepo/main/script2.lua", 

}

local scriptUrl = GAME_SCRIPTS[game.PlaceId]

if scriptUrl then
    game.StarterGui:SetCore("SendNotification", {
      Title = "Liquid Loader",
      Text = "Success! Fetching Script...",
      Duration = 5,
})
    
    local success, err = pcall(function()
        loadstring(game:HttpGet(scriptUrl))()
    end)
    
    if not success then
        warn(" Failed to load script: " .. tostring(err))
    end
else
    print(" Current Place ID not found in the script map. Script skipped.")
end
