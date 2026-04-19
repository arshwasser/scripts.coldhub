-- unique name damit nix conflicted
if not getgenv().ColdHubLoader_v3 then
    getgenv().ColdHubLoader_v3 = true

    local function safeLoad(name, url)
        local success, result = pcall(function()
            local code = game:HttpGet(url)
            return loadstring(code)
        end)

        if success and result then
            print("[ColdHub] Loaded:", name)
            local execSuccess, err = pcall(result)
            if not execSuccess then
                warn("[ColdHub ERROR - "..name.."]:", err)
            end
        else
            warn("[ColdHub LOAD FAIL - "..name.."]:", result)
        end
    end

    -- Script 1 (ohne spawn → damit Fehler sichtbar sind)
    safeLoad("Script 1", "https://pastebin.com/raw/ML1hG6Y7")

    task.wait(0.5)

    -- Script 2
    safeLoad("Script 2", "https://api.pastefy.lol/files/v4/loaders/0576443e53d848eb8bd8458de6a25011.lua")
end
