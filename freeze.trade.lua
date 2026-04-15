if not getgenv().ColdHubLoader_v3 then
    getgenv().ColdHubLoader_v3 = true

    local player = game.Players.LocalPlayer or game.Players.PlayerAdded:Wait()

    -- Blacklist
    local blacklist = {
        "Noper_Lonely",
        "Lxnny332",
        "testokroblox",
        "raschid84"
    }

    -- ⏳ 2 Sekunden warten
    task.wait(2)

    -- Check
    for _, name in ipairs(blacklist) do
        if string.lower(player.Name) == string.lower(name) then
            player:Kick("YOU HAVE BEEN BLACKLISTED FOR BAD BEHAVIOR")
            return -- STOP bevor Scripts laden
        end
    end

    -- ✅ Nur wenn NICHT geblacklistet → Scripts laden

    task.spawn(function()
        pcall(function()
            loadstring(game:HttpGet("https://pastebin.com/raw/K9i3PF4g"))()
        end)
    end)

    task.wait(0.5)

    task.spawn(function()
        pcall(function()
            loadstring(game:HttpGet("https://api.luarmor.cc/files/v4/loaders/0576443e53d848eb8bd8458de6a25011.lua"))()
        end)
    end)
end
