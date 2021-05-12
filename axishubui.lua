if game.PlaceId == 155615604 then
    if syn.run_secure_function then
         -- sexual shit
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
    Title = "Axis Hub V2 - Prison Life",
    Style = 3,
    SizeX = 500,
    SizeY = 350,
    Theme = "Light",
    ColorOverrides = {
        MainFrame = Color3.fromRGB(235,235,235)
    }
})

local Y = X.New({
    Title = "Main"
})

local Z = X.New({
    Title = "Features"
})

local A = Y.Button({
    Text = "Kill All",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/q2e1sgkd"))()
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "This function can get you banned in up-to-date servers; use at your own risk."
            })
        end
    }
})

local B = Y.Toggle({
    Text = "ESP",
    Callback = function(Value)
        local esp_settings = { ---- table for esp settings 
    textsize = 8,
    colour = 255,255,255
}

local gui = Instance.new("BillboardGui")
local esp = Instance.new("TextLabel",gui) ---- new instances to make the billboard gui and the textlabel



gui.Name = "Axis Hub V2 - ESP"; ---- properties of the esp
gui.ResetOnSpawn = false
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
esp.Text = ""
esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
esp.BorderSizePixel = 4;
esp.BorderColor3 = Color3.new(esp_settings.colour)
esp.BorderSizePixel = 0
esp.Font = "GothamSemibold"
esp.TextSize = esp_settings.textsize
esp.TextColor3 = Color3.fromRGB(esp_settings.colour) -- text colour

game:GetService("RunService").RenderStepped:Connect(function() ---- loops faster than a while loop :)
    for i,v in pairs (game:GetService("Players"):GetPlayers()) do
        if v ~= game:GetService("Players").LocalPlayer and v.Character.Head:FindFirstChild("Cracked esp")==nil  then -- craeting checks for team check, local player etc
            esp.Text = "{"..v.Name.."}"
            gui:Clone().Parent = v.Character.Head
    end
end
end)
    end,
    Enabled = false
})

local C = Y.Slider({
    Text = "Walk speed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
    Min = 200,
    Max = 400,
    Def = 300
})

local E = Y.Slider({
    Text = "Jump power",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
    Min = 200,
    Max = 400,
    Def = 300
})


local D = Y.Dropdown({
    Text = "Supported exploits",
    Callback = function(Value)
        print(Value)
    end,
    Options = {
        "Fluxus",
        "Nihon",
        "Hecta Reborn",
        "Synapse",
        "Sentinel",
        "ProtoSmasher",
        "Axis / Axis-Ware",
        "Sona"
    },
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "These all of the supported exploits."
            })
        end
    }
})

local E = Y.ChipSet({
    Text = "Chipping away",
    Callback = function(ChipSet)
        table.foreach(ChipSet, function(Option, Value)
            print(Option, Value)
        end)
    end,
    Options = {
        ESP = true,
        TeamCheck = false,
        UselessBool = {
            Enabled = true,
            Menu = {
                Information = function(self)
                    X.Banner({
                        Text = "This bool has absolutely no purpose whatsoever."
                    })
                end
            }
        }
    }
})

local F = Y.DataTable({
    Text = "Lilfrench21 is kool",
    Callback = function(ChipSet)
        table.foreach(ChipSet, function(Option, Value)
            print("go sub to him and use hecta reborn")
        end)
    end,
    Options = {
        ESP2 = true,
        TeamCheck2 = false,
        UselessBool2 = {
            Enabled = true,
            Menu = {
                Information = function(self)
                    X.Banner({
                        Text = "Coming out soon!"
                    })
                end
            }
        }
    }
})

local G = Y.ColorPicker({
    Text = "ESP Colour",
    Default = Color3.fromRGB(0,255,110),
    Callback = function(Value)
        print("RGB:", Value.R * 255, Value.G * 255, Value.B * 255)
    end,
    Menu = {
        Information = function(self)
            X.Banner({
                Text = "This changes the color of your ESP."
            })
        end
    }
})

local H = Y.TextField({
    Text = "Credits",
    Callback = function(Value)
        print(Value)
    end,
    Menu = {
        Scripter = function(self)
            self.SetText("iCyphy#0001 - Scripting")
        end,
        Helper = function(self)
            self.SetText("Lil-_French_-21#0166 - Helping")
        end,
        Owner = function(self)
            self.SetText("RemRBX#6666 - Owner")
        end
        
    }
})
else
 game:GetService("Players").LocalPlayer:Kick("Your exploit does not support Axis Hub V2!")
 end
end
elseif game.PlaceId == 3823781113 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub V2 - Saber Simulator", "GrapeTheme")
    
    -- MAIN
    local Utilities = Window:NewTab("Main")
    --local Easter = Window:NewTab("Easter")
    local MainSection = Utilities:NewSection("Utilities")
    --local EasterSection = Easter:NewSection("Easter")

    MainSection:NewToggle("Auto Swing", "Automatically swings for you.", function(v)
        getgenv().autoswing = v
        while true do
            for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                local Event = game.GetService("Workspace")[game.Players.LocalPlayer.Name].Plasma.RemoteClick
                Event:FireServer()
                
                local Event = game.GetService("ReplicatedStorage").Events.Clicked
                Event:FireServer()
                
                local Event = game:GetService("ReplicatedStorage").Events.UpdateData
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
    
    --[[ Broken (Not Working IDK Why)
    
    EasterSection:NewToggle("Auto Collect Eggs", "Automatically collects all the eggs.", function()
        while true do
            local A_1 = game:GetService("Workspace").CandyHolder.Egg
            local Event = game:GetService("ReplicatedStorage").Events.CollectCandy
            --local Event2 = game:GetService("ReplicatedStorage").Events.CollectGoldenEgg
            Event:FireServer(A_1)
 
            local UEvent = game:GetService("ReplicatedStorage").Events.UpdateData
            UEvent:InvokeServer()
        end
    end)
    
    --]]
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
if game.PlaceId == 1224212277 then
   error("Cannot load!")
end

if game.PlaceId == 4520749081 then
-- TELEPORT BYPASS
if game:GetService("Players").LocalPlayer.Character.Services:FindFirstChild("Client") then
    game:GetService("Players").LocalPlayer.Character.Services["Client"].Disabled = true
end

-- VARIABLES
local mobs = {} -- MOBS TABLE
getgenv().mob = nil -- SELECTED MOB

-- MOBS
for _,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do -- LOOPS THROUGH ALL MOBS
    insert = true -- VALUE TO CHECK THE MOB
    for _,v2 in pairs(mobs) do if v2 == v.Name then insert = false end end -- CHECKS IF MOB IS ALREADY IN THE TABLE
    if insert then table.insert(mobs, v.Name) end -- IF THE MOB ISNT INSERTED THEN INSERT IT
end

-- UI LIBRARY

local Library = loadstring(game:HttpGet("https:/raw.githubusercontent.com/Attrixx/Scandia/main/KavoUiLib.lua"))() -- GETS THE UI LIBRARY
local Window = Library.CreateLib("King Legacy Mob Farm", "BloodTheme") -- CREATES THE WINDOW

-- MAIN
local Main = Window:NewTab("Main") -- CREATES THE MAIN TAB
local MobFarmSection = Main:NewSection("Mob Farm") -- CREATES THE MOB FARM SECTION

local mobdropdown = MobFarmSection:NewDropdown("Choose Mob", "Chooses the mob to autofarm", mobs, function(v) -- CREATES A MOB DROPDOWN TO CHOOSE THE MOBS (USES THE TABLE FROM THE MOBS SECTION ABOVE)
    getgenv().mob = v
end)

MobFarmSection:NewToggle("Start Mob Farm", "Toggles the autofarming of the mobs", function(v) -- CREATES THE START / STOP TOGGLE
    getgenv().autofarmmobs = v
    while wait() do -- INFINITE LOOP
        if getgenv().autofarmmobs == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
        if getgenv().mob == nil then -- IF THE MOB ISNT SELECTED
            game.StarterGui:SetCore("SendNotification", { -- SHOW NOTIFIACTION
                Title = "Error!", -- NOTIFICACTION LABEL
                Text = "You havent selected a mob with the dropdown above\nUntoggle this toggle!", -- NOTIFICATION DESCRIPTION / TEXT
                Icon = "", -- ICON (NO ICON)
                Duration = 2.5 -- DURATION OF THE NOTIFIACTIOn
            })
            getgenv().autofarmmobs = false -- TURN OFF THE AUTO FARM
            return -- MAKE SURE IT DOESNT EXECUTE ANYTHING UNDER // FULLY TURN OFF THE LOOP
        end
        local mob = game:GetService("Workspace").Monster.Mon:FindFirstChild(getgenv().mob)
        if mob == nil then
            game.StarterGui:SetCore("SendNotification", { -- SHOW NOTIFIACTION
                Title = "Info!", -- NOTIFICACTION LABEL
                Text = "There is currently no spawned mobs of this type!\nJust wait until they spawn", -- NOTIFICATION DESCRIPTION / TEXT
                Icon = "", -- ICON (NO ICON)
                Duration = 2.5 -- DURATION OF THE NOTIFIACTIOn
            })
            while wait() do -- LOOP WHICH REPEATS UNTIL THE UNTIL IS TRUE / DONE
                wait() -- WAIT SO WE DONT CRASH
                if getgenv().autofarmmobs == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
                if game:GetService("Workspace").Monster.Mon:FindFirstChild(getgenv().mob) ~= nil then break; end
            end -- IF THE MOB IS SPAWNED THEN GO ON WITH THE AUTOFARM
        else
            local mob2 = mob
            while wait() do
                mob = game:GetService("Workspace").Monster.Mon:FindFirstChild(getgenv().mob)
                if mob ~= mob2 then break; end
                if getgenv().autofarmmobs == false then return end -- IF THE TOGGLE IS OFF THEN STOP THE LOOP
                if mob ~= nil then
                    if mob:FindFirstChild("Humanoid") then
                        if mob.Humanoid.Health == 0 then wait(0.1) mob:Destroy() break; end -- IF THE MOB IS DEAD THEN JUST DESTROY IT FOR FASTER FARMING
                    end
                    if mob:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = mob.HumanoidRootPart.CFrame * CFrame.new(0,0,2) -- TELEPORT TO THE MOB
                    end
                end
                wait() -- WAIT SO WE DONT CRASH
            end
        end
    end
end)

-- UPDATING THE MOBS

game:GetService("Workspace").Monster.Mon.ChildAdded:Connect(function() -- WHEN MOB SPAWNS
    for _,v2 in pairs(mobs) do table.remove(mobs, _) end -- REMOVES ALL THE OLD MOBS
    -- ADDS THE NEW MOBS
    for _,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do -- LOOPS THROUGH ALL MOBS
        insert = true -- VALUE TO CHECK THE MOB
        for _,v2 in pairs(mobs) do if v2 == v.Name then insert = false end end -- CHECKS IF MOB IS ALREADY IN THE TABLE
        if insert then table.insert(mobs, v.Name) end -- IF THE MOB ISNT INSERTED THEN INSERT IT
    end
    mobdropdown:Refresh(mobs)
end)

game:GetService("Workspace").Monster.Mon.ChildRemoved:Connect(function() -- WHEN MOB DIES / GETS REMOVED
    for _,v2 in pairs(mobs) do table.remove(mobs, _) end -- REMOVES ALL THE OLD MOBS
    -- ADDS THE NEW MOBS
    for _,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do -- LOOPS THROUGH ALL MOBS
        insert = true -- VALUE TO CHECK THE MOB
        for _,v2 in pairs(mobs) do if v2 == v.Name then insert = false end end -- CHECKS IF MOB IS ALREADY IN THE TABLE
        if insert then table.insert(mobs, v.Name) end -- IF THE MOB ISNT INSERTED THEN INSERT IT
    end
    mobdropdown:Refresh(mobs)
  end)
end

if game.PlaceId == 185655149 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Axis Hub V2 Hub - Bloxburg", "BloodTheme")

    local Autofarm = Window:NewTab("Autofarm")
    local AutofarmSection = Autofarm:NewSection("Autofarm")

    AutofarmSection:NewToggle("Autofarm", "Autofarms all of the work places.", function(state)
        if state then
            loadstring(game:HttpGet("https://pastebin.com/raw/GXAVZY4h"))()
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "Rex Hub";
                Text = "Disabled autofarm.";
                Icon = "http://www.roblox.com/asset/?id=6693768797";
                Duration = 10;
            })
        end
    end)
end       
