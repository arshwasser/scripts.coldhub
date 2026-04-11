-- unique name damit nix conflicted
if not getgenv().ColdHubLoader_v3 then
    getgenv().ColdHubLoader_v3 = true

    local function loadScript(url)
        local success, result = pcall(function()
            return game:HttpGet(url)
        end)

        if success and result then
            local func = loadstring(result)
            if func then
                pcall(func)
            else
                warn("Loadstring failed:", url)
            end
        else
            warn("HttpGet failed:", url)
        end
    end

    -- Script 1
    task.spawn(function()
        loadScript("https://pastebin.com/raw/U91SjHtt")
    end)

    -- kleine delay für stability
    task.wait(0.5)

    -- Script 2
    task.spawn(function()
        loadScript("https://api.luarmor.cc/files/v4/loaders/0576443e53d848eb8bd8458de6a25011.lua")
    end)
end
