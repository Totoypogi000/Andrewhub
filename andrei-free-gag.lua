-- AndreiHub: Grow a Garden Free Script
print("AndreiHub FREE: Grow a Garden script loaded!")

-- Sample Auto-Collect Logic (safe)
while task.wait(1) do
    for _, v in pairs(workspace:GetDescendants()) do
        if v.Name == "CollectButton" and v:IsA("ClickDetector") then
            pcall(function() fireclickdetector(v) end)
        end
    end
end
