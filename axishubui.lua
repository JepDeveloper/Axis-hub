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
