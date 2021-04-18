if game.PlaceId == 155615604 then -- Prison Life

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis hub V2 - Prison Life", "BloodTheme")

    -- MAIN
    local Main = Window:NewTab("Utilities")
    local MainSection = Main:NewSection("Main")

    MainSection:NewDropdown("Give Gun", "Gives the character a gun", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)

    MainSection:NewDropdown("Gun Mod", "Makes the fire rate to max, turns into an auto, and has infinite ammo.", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 100
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)

    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

elseif game.PlaceId == 3956818381 then -- Ninja Legends

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Rex Hub V2 - Ninja Legends", "BloodTheme")

    -- MAIN
    local Utilities = Window:NewTab("Main")
    local MainSection = Utilities:NewSection("Utilities")

    MainSection:NewToggle("Auto Swing", "Makes your player autoswing", function(v)
        getgenv().autoswing = v
        while true do
            if not getgenv().autoswing then return end
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("ninjitsuGain") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    break
                end
            end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
            wait(0.1)
        end
    end)

    MainSection:NewToggle("Auto Sell", "Makes your player autosell", function(v)
        getgenv().autosell = v
        while true do
            if getgenv().autoswing == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end)

    MainSection:NewButton("Unlock all islands", "Unlocks all islands", function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)
    
    MainSection:NewToggle("Auto buy Swords", "Automatically buys all the swords.", function(v)
        getgenv().buyswords = v
        while true do
            if not getgenv().buyswords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)

    MainSection:NewToggle("Auto buy Belts", "Automatically buys all the belts.", function(v)
        getgenv().buybelts = v
        while true do
            if not getgenv().buybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
end
if game.PlaceId == 286090429 then --arsenal
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub V2 - Arsenal", "BloodTheme")

    --MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewToggle("Aimbot", "Automatically aims for the character.", function(state)
        if state then
             loadstring(game:HttpGet("https://pastebin.com/raw/gFhLdCbc"))()
        else
            print("Toggle Off")
        end
    end)

    MainSection:NewToggle("Kill all", "Kills all the players in the enemy team.", function(state)
        if state then
             loadstring(game:HttpGet("https://raw.githubusercontent.com/TERIHAX/Scripts/main/ArsenalKillAll.lua"))()
        else
            print("Toggle Off")
        end
    end)
    --PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewSlider("Walkspeed", "Changes the character's walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
        warn("Could not change walkspeed")
    end)

    PlayerSection:NewSlider("Walkspeed", "Changes the character's walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
        warn("Could not change jumppower")
    end)
    --VISUALS
    local Visuals = Window:NewTab("Visuals")
    local VisualsSection = Visuals:NewSection("Visuals")

    VisualsSection:NewToggle("ESP", "Makes you view all of the players in the server.", function(state)
        if state then
            loadstring(game:HttpGet("https://pastebin.com/raw/V7meMhzr"))()
        else
            print("ESP Disabled.")
        end
    end)
end
if game.PlaceId == 4246487209 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub V2 - Boss fighting sim", "BloodTheme")
     
    --MISC
    local Misc = Window:NewTab("Misc")
    local MiscellaneousSection = Misc:NewSection("Miscellaneous")

    MiscellaneousSection:NewToggle("Auto farm", "This isn't out yet", function(state)
        if state then
            loadstring(game:HttpGet("https://pastebin.com/raw/V2jzrRFx"))()
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Axis Hub";
                Text = "Disabled auto farm";
                Icon = "http://www.roblox.com/asset/?id=6693768785";
                Duration = 10;
            })
        end
    end)
end
if game.PlaceId == 1962086868 then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Axis Hub";
        Text = "Tower of hell being worked on.";
        Icon = "http://www.roblox.com/asset/?id=6693768785";
        Duration = 10;
    })
end     
