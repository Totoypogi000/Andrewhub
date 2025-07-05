-- AndreiHub: Grow a Garden Premium Script
print("AndreiHub PREMIUM: Grow a Garden script loaded!")

-- Sample: Premium features placeholder
game.StarterGui:SetCore("SendNotification", {
    Title = "AndreiHub Premium",
    Text = "Premium features activated!",
    Duration = 5
})

-- Same auto-collect logic
while task.wait(0.5) do
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name == "CollectButton" and v:IsA("ClickDetector") then
            pcall(function() fireclickdetector(v) end)
        end
    end
end
