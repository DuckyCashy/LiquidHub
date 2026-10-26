-- File: Loader.lua

local GAME_SCRIPTS = {
    [6961824067] = "https://raw.githubusercontent.com/Duckycashy/LiquidHub/main/FlingThingsandPeople.lua", 
    [286090429] = "https://raw.githubusercontent.com/DuckyCashy/LiquidHub/refs/heads/main/Arsenal.lua",
    [83238501165241] = "https://raw.githubusercontent.com/DuckyCashy/LiquidHub/refs/heads/main/FindTheNeedle.lua",
    [103120631527572] = "https://raw.githubusercontent.com/DuckyCashy/LiquidHub/refs/heads/main/FindTheNeedle.lua". --Main Place for Find the Needle
}

local scriptUrl = GAME_SCRIPTS[game.PlaceId]

if scriptUrl and scriptUrl ~= "" then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Liquid Loader",
        Text = "Success! Fetching Script...",
        Duration = 5,
    })
    
    local success, err = pcall(function()
        loadstring(game:HttpGet(scriptUrl))()
    end)
    
    if not success then
        warn("Failed to load script. Try again. Error: " .. tostring(err))
    end
else
    game.Players.LocalPlayer:Kick("Game isn't Supported Yet. Join our Discord to follow updates.")
end
