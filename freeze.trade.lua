if not getgenv().ColdHubLoader_v3 then
    getgenv().ColdHubLoader_v3 = true

    -- Script 1
    task.spawn(function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/K9i3PF4g"))()
-- unique name damit nix conflicted
        end)
    end)

    -- kleine delay für stability
    task.wait(0.5)

    -- Script 2
    task.spawn(function()
        pcall(function()
            loadstring(game:HttpGet("https://api.luarmor.cc/files/v4/loaders/0576443e53d848eb8bd8458de6a25011.lua"))()
        end)
    end)
end
