repeat wait() until game:IsLoaded() and game:FindFirstChild("CoreGui") and pcall(function() return game.CoreGui end)

local github_base_url = "https://raw.githubusercontent.com/Totoypogi000/AndreiHub/main/scripts/"

local _function = {
    ["getid"] = function()
        local g = game.GameId
        if premium then
            if g == 7436755782 then return "andrei-premium-gag.lua"
        else
            if g == 7436755782 then return "andrei-free-gag.lua"
        end
    end,
    ["gamename"] = function()
        local g = game.GameId
        if g == 7436755782 then return "Grow a Garden"
        else return "Unknown Game"
        end
    end,
    ["load"] = function(url)
        local script_content = game:HttpGet(url)
        return (loadstring or load)(script_content)()
    end
}

local script_id, game_name = _function.getid(), _function.gamename()

if script_id then
    game.StarterGui:SetCore("SendNotification", {
        Title = "AndreiHub Loaded!",
        Text = game_name .. " script running...",
        Icon = "rbxassetid://12222142",
        Duration = 5
    })

    _function.load(github_base_url .. script_id)
end
