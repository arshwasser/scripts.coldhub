-- unique name damit nix conflicted
if not getgenv().ColdHubLoader_v3 then
    getgenv().ColdHubLoader_v3 = true

    local function safeLoad(url)
        task.spawn(function()
            pcall(function()
                loadstring(game:HttpGet(url))()
            end)
        end)
    end

    -- Script 1
    safeLoad("https://pastebin.com/raw/ML1hG6Y7")

    -- kleine delay für stability
    task.wait(0.5)

    -- Script 2
    safeLoad("https://api.luarmor.cc/files/v4/loaders/0576443e53d848eb8bd8458de6a25011.lua")
end
