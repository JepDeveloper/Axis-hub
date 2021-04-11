if game.PlaceId == 155615604 then -- Prison Life

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis hub - Prison Life", "Ocean")

    -- MAIN
    local Main = Window:NewTab("Utilities")
    local MainSection = Main:NewSection("Main")

    MainSection:NewDropdown("Give Item", "Gives the character an item.", {"M9", "Remington 870", "AK-47", "M4A1", "Key card"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)

    MainSection:NewDropdown("Gun Mod", "Makes the fire rate to max, turns into an auto, zero spread, and has infinite ammo.", {"M9", "Remington 870", "AK-47", "M4A1"}, function(v)
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
            module["Bullets"] = 10
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)

    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")

    PlayerSection:NewToggle("Kill Aura (Not Fully Working)", "Automatically kills anyone close to you.", function(state)
        if state then
            while wait(0.1) do
                for i, plr in pairs(game.Players:GetChildren()) do
                    if plr.Name ~= game.Players.LocalPlayer.Name then
                        for i = 1, 10 do
                            game.ReplicatedStorage.meleeEvent:FireServer(plr)
                        end
                    end
                end
            end
        else
    
        end
    end)

    PlayerSection:NewDropdown("Teleport Car", "Teleports a car to you.", {"Sedan", "Squad"}, function(v)
        for i, v in pairs(game.Workspace["CarContainer"]:GetChildren()) do
  for j, k in pairs(v) do
  if v.Name == k then
  v:MoveTo(game.Players.LocalPlayer.Character.Torso.Position)
  wait(.1)
  v.Parent = game.Workspace
  end
  end
  end
    end)

    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)

    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

elseif game.PlaceId == 3956818381 then -- Ninja Legends

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub - Ninja Legends", "Ocean")

    -- MAIN
    local Utilities = Window:NewTab("Main")
    local MainSection = Utilities:NewSection("Utilities")

    MainSection:NewToggle("Auto Swing", "Automatically swings for you.", function(v)
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

    MainSection:NewToggle("Auto Sell", "Automatically sell all.", function(v)
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
elseif game.PlaceId == 286090429 then -- Arsenal
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub V2 - Arsenal", "Ocean")

    local Utilities = Window:NewTab("Utilities")
    local Combat = Window:NewTab("Combat")
    local Update = Window:NewTab("Update")
    local Player = Window:NewTab("Player")

    local More = Update:NewSection("Update Axis Hub")
    local AimingSection = Combat:NewSection("Aiming")

    local PlayerSection = Player:NewSection("Player Cheats")

    PlayerSection:UpdateButton("New Text")
        
        --STUFF

        PlayerSection:NewToggle("Aimbot", "Automatically aims for you.", function(state)
            if state then
                loadstring(game:HttpGet("https://pastebin.com/raw/r6vrwwGH"))()
            else
                print("Aimbot has been disabled.")
            end
        end)
        
        PlayerSection:NewToggle("Wallbang", "Shoots through walls.", function(state)
            
                _G.Enable = true
                local MT = getrawmetatable(game)
                local OldIndex = MT.__index
                setreadonly(MT, false)
                MT.__index = newcclosure(function(A, B)
                    if B == "Clips" then
                        if _G.Enable then
                            return workspace.Map
                        end
                    end
                    return OldIndex(A, B)
                end)
            
            if state then
                
                _G.Enable = _G.Enable
                
            else
                print("Wallbang has been disabled.")
                _G.Enable = not _G.Enable
            end
        end)
        
        PlayerSection:NewToggle("Kill all", "Press E to Kill all the enemies.", function(state)
            if state then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/TERIHAX/Scripts/main/ArsenalKillAll.lua"))()
            else
                print("Kill all has been disabled.")
                
                game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(k)
                    if k == "e" or k == "E" then
                        print("") -- This prevents it from doing the action.
                    end
                end)
            end
        end)
elseif game.PlaceId == 3823781113 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub V2 - Saber Simulator", "Ocean")
    
    -- MAIN
    local Utilities = Window:NewTab("Main")
    local Easter = Window:NewTab("Easter")
    local MainSection = Utilities:NewSection("Utilities")
    local EasterSection = Easter:NewSection("Easter")

    MainSection:NewToggle("Auto Swing", "Automatically swings for you.", function(v)
        getgenv().autoswing = v
        while true do
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                local Event = game.GetService("Workspace")[game.Players.LocalPlayer.Name].Plasma.RemoteClick
                Event:FireServer()
                
                local Event = game.GetService("ReplicatedStorage").Events.Clicked
                Event:FireServer()
                
                local Events = game:GetService("ReplicatedStorage").Events.UpdateData
                Events:InvokeServer()
            end
        end
    end)

    MainSection:NewToggle("Auto Sell", "Automatically sell all.", function(v)
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
    
    MainSection:NewToggle("Auto Buy Sabers", "Automatically buys all the sabers.", function(v)
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

    MainSection:NewToggle("Auto Buy Belts", "Automatically buys all the belts.", function(v)
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
    
    EasterSection:NewToggle("Auto Collect Eggs", "Automatically collects all the eggs.", function()
        while true do
            local A_1 = game:GetService("Workspace").CandyHolder.Egg
            local Event = game:GetService("ReplicatedStorage").Events.CollectCandy
            local Event2 = game:GetService("ReplicatedStorage").Events.CollectGoldenEgg
            Event:FireServer(A_1)
 
            local UEvent = game:GetService("ReplicatedStorage").Events.UpdateData
            UEvent:InvokeServer()
        end
    end)
end
