local i1 = game:GetService("Workspace").Islands["Sky Island Hitbox"]
local i2 = game:GetService("Workspace").Islands["Moon Outpost Hitbox"]
local i4 = game:GetService("Workspace").Islands["The Aether Hitbox"]
local i3 = game:GetService("Workspace").Islands["Mars Hitbox"]

local c1 = game:GetService("Workspace").TimedChests["Sky Chest"].Glow
local c2 = game:GetService("Workspace").TimedChests["Aether Chest"].Glow

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Brain Simulator", "BloodTheme")
local Tab = Window:NewTab("Brain Simulator")
local Section = Tab:NewSection("Misc")
local Section2 = Tab:NewSection("Island TP")
local Section3 = Tab:NewSection("Gems")

Section3:NewButton("Auto Bring all Bags", "ButtonInfo", function()
       while wait() do
    for _, object in pairs (game.Workspace.CurrencyZones.Home.Drops:GetChildren()) do
    local O = object:FindFirstChild("Bag")
    if object.Name == "Bag" then
O.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, 0)
    
    end
    end
    end
       
    end)



Section3:NewButton("Auto Bring All Safe", "ButtonInfo", function()
   while wait() do
    for _, object in pairs (game.Workspace.CurrencyZones.Home.Drops:GetChildren()) do
    local O = object:FindFirstChild("Safe")
    if object.Name == "Safe" then
O.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, 0)
    
    end
    end
    end
end)


Section3:NewButton("Auto Bring All Gems", "ButtonInfo", function()
    while wait() do
    for _, object in pairs (game:GetService("Workspace").CurrencyZones.Home.Drops:GetChildren()) do
          if object.Name == "Single" then
              local u = object.Gem
              
            u.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 0, 0)
                  
      end
          end
end
end)


Section:NewButton("Claim Chests", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = c1.CFrame + Vector3.new(0, 5, 0)
    wait(2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = c2.CFrame + Vector3.new(0, 5, 0)
    
end)

Section2:NewButton("Unlock All Islands", "ButtonInfo", function()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i1.CFrame + Vector3.new(0, 5, 0)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i2.CFrame + Vector3.new(0, 5, 0)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i3.CFrame + Vector3.new(0, 5, 0)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i4.CFrame + Vector3.new(0, 5, 0)

end)


Section2:NewButton("SkyIsland", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i1.CFrame + Vector3.new(0, 5, 0)
end)

Section2:NewButton("Moon Outpost", "ButtonInfo", function()
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i2.CFrame + Vector3.new(0, 5, 0)
end)

Section2:NewButton("Mars", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i3.CFrame + Vector3.new(0, 5, 0)
    end)

Section2:NewButton("The Aether", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = i4.CFrame + Vector3.new(0, 5, 0)
    end)


Section:NewToggle("Toggle AutoClick", "ToggleInfo", function(state)
    if state then
        clicker = true
        print("Toggle On")
    else
 clicker = false
        print("Toggle Off")
end
end)

while wait() do
    if clicker == true then
local p = game.Players.LocalPlayer.Name

local o = game:GetService("ReplicatedStorage").Systems.Clicking.RemoteEvents:FindFirstChild(p)

o:FireServer()

end
end
