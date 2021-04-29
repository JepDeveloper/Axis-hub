if game.PlaceId == 155615604 then -- Prison Life
    game.StarterGui:SetCore("SendNotification", {
        Title = "Axis Hub";
        Text = "Successfully loaded on prison life!";
        Icon = "http://www.roblox.com/asset/?id=6693768785";
        Duration = 10;
    })
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
            module["FireRate"] = 0
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 10
            module["ReloadTime"] = 0
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
    game.StarterGui:SetCore("SendNotification", {
        Title = "Axis Hub";
        Text = "Succesfully loaded on Ninja Legends!";
        Icon = "http://www.roblox.com/asset/?id=6693768785";
        Duration = 10;
    })
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub V2 - Ninja Legends", "BloodTheme")

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
    game.StarterGui:SetCore("SendNotification", {
        Title = "Axis Hub";
        Text = "Succesfully loaded on Arsenal!";
        Icon = "http://www.roblox.com/asset/?id=6693768785";
        Duration = 10;
    })
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

    MainSection:NewToggle("Silent aim", "Same as aimbot but different.", function(state)
        if state then
             loadstring(game:HttpGet("https://raw.githubusercontent.com/froscpi49/Silent-Aim/main/silentaim.lua"))()
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
if game.PlaceId == 2041312716 then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Axis Hub";
        Text = "Succesfully loaded on ragdoll engine!";
        Icon = "http://www.roblox.com/asset/?id=6693768785";
        Duration = 10;
    })
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub V2 - Ragdoll engine", "BloodTheme")

    --main
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewSlider("High speed", "Changes the current character's walk speed.", 500, 20, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    MainSection:NewSlider("High jump power", "Changes the current character's jump power.", 500, 20, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    --player
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player cheats")
end
if game.PlaceId == 5847495283 then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Axis Hub";
        Text = "Succesfully loaded Axis Hub V2!";
        Icon = "http://www.roblox.com/asset/?id=6693768785";
        Duration = 10;
    })
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub V2 - n the jojo game", "BloodTheme")

    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewToggle("No cooldown", "Adds no cooldown to the player.", function(state)
        if state then
            loadstring(game:HttpGet("https://pastebin.com/raw/WVV4yBuh"))()
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Axis Hub";
                Text = "Disabled no cooldown!";
                Icon = "http://www.roblox.com/asset/?id=6693768785";
                Duration = 10;
            })
        end
    end)
end

if game.PlaceId == 606849621 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub V2 - Jailbreak", "BloodTheme")

    --main
    local Misc = Window:NewTab("Misc")
    local MiscellaneousSection = Misc:NewSection("Miscellaneous")
    

    MiscellaneousSection:NewButton("No cage", "Makes the character get out of jail.", function()
        print("Clicked")
    end)
end

if game.PlaceId == 1004691966 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub V2 - Solera hotels", "BloodTheme")

    local Other = Window:NewTab("Other")
    local OtherSection = Other:NewSection("Just other stuff.")

    OtherSection:NewButton("No clip", "No clips", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/w0XEUW3y"))()
    end)

    --credits

    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Thanks to Zerio#0880 for making the tutorial!")

    local Credits2Section = Credits:NewSection("All scripting made by iCyphy!")
end    
