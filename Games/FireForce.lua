
local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()

local Window = Hawk:Window({
	ScriptName = "Hawk HUB | Fire Force",
	DestroyIfExists = true,
	Theme = "Dark"
})

Window:Close({
	visibility = true,
	Callback = function()
        Window:Destroy()
	end,
})
Window:Minimize({
	visibility = true,
	OpenButton = true,
	Callback = function()
	end,
})

local tab1 = Window:Tab("Player","Player")

tab1:Toggle("Auto Parry",false,function(xdd)
	if xdd == true then
        while true do 
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ParryEvent"):FireServer()
            wait()
            if xdd == false then
                break
            end
        end
    end 
end)

tab1:Button("Auto Radgoll",function()
    local args = {
        [1] = ""
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Ragdoll"):FireServer(unpack(args))    
end)

tab1:Button("Effect",function()
    local args = {
        [1] = "SuperRunning",
        [2] = "On"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("EffectsServer"):FireServer(unpack(args))      
end)

tab1:Toggle("Infinite M1",false,function(xdd)
	if xdd == true then
        while true do 
                local args = {
                    [1] = game:GetService("Players").LocalPlayer
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ReturnInCombat"):InvokeServer(unpack(args))
            wait()
            if xdd == false then
                break
            end
        end
    end 
end)

local valueee;
tab1:Slider("WalkSpeed",16,100,function(cal)
   valueee = cal
end)

tab1:Slider("JumpPower",0,100,function(cal)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    local jumpPowerValue = cal

    humanoid.JumpPower = jumpPowerValue
end)

tab1:Toggle("Kill Aura",false,function(xdd)
	if xdd == true then
        while true do 
            local args = {
                [1] = 1,
                [2] = game:GetService("Players").LocalPlayer.Character.FistCombat,
                [3] = CFrame.new(-512.5761108398438, 554.0997314453125, 5018.57568359375, 0.45619821548461914, 0, 0.8898782134056091, 0, 1, 0, -0.8898782134056091, 0, 0.45619821548461914),
                [4] = true
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CombatEvent"):FireServer(unpack(args))
            
            local args = {
                [1] = 2,
                [2] = game:GetService("Players").LocalPlayer.Character.FistCombat,
                [3] = CFrame.new(-512.5761108398438, 554.0997314453125, 5018.57568359375, 0.45619821548461914, 0, 0.8898782134056091, 0, 1, 0, -0.8898782134056091, 0, 0.45619821548461914),
                [4] = true
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CombatEvent"):FireServer(unpack(args))
            
            local args = {
                [1] = 3,
                [2] = game:GetService("Players").LocalPlayer.Character.FistCombat,
                [3] = CFrame.new(-516.3308715820312, 554.0997314453125, 5016.60302734375, 0.45619821548461914, 0, 0.8898782134056091, 0, 1, 0, -0.8898782134056091, 0, 0.45619821548461914),
                [4] = true
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CombatEvent"):FireServer(unpack(args))
            
            local args = {
                [1] = 4,
                [2] = game:GetService("Players").LocalPlayer.Character.FistCombat,
                [3] = CFrame.new(-396.8504333496094, 554.099853515625, 4873.791015625, -0.36109158396720886, 0, 0.9325303435325623, 0, 1, 0, -0.9325303435325623, 0, -0.36109158396720886),
                [4] = true
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CombatEvent"):FireServer(unpack(args))
            
            wait()
            if xdd == false then
                break
            end
        end
    end 
end)

tab1:Button("No Stun",function()
    local grip = workspace.Alive

    for _, v in pairs(grip:GetDescendants()) do
        if v:IsA("Model") and v:FindFirstChild("Humanoid") then
            local playerName = v:FindFirstChild("PlayerName")
            
            if playerName and playerName.Value == game.Players.LocalPlayer.Name then
                local attackStun = v:FindFirstChild("AttackStun")
                
                if attackStun then
                    v:Destroy()
                end
            end
        end
    end    
end)

local tab2 = Window:Tab("Teleport")

tab2:Button("Npc Teleport",function()
    local zone = game.Workspace.LiveNPCS
    local player = game.Players.LocalPlayer
    local char = player.Character
    
    for _, v in pairs(zone:GetChildren()) do
        if v.Name:match("RandomNPC") then
            char.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        end
    end   
end)

tab2:Button("Crook Teleport",function()
    local zone = game.Workspace.LiveNPCS
    local player = game.Players.LocalPlayer
    local char = player.Character
    
    for _, v in pairs(zone:GetChildren()) do
        if v.Name == "Crook" then
            char.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        end
    end    
end)

tab2:Button("Gregory Teleport",function()
    local zone = game.Workspace.LiveNPCS
    local player = game.Players.LocalPlayer
    local char = player.Character
    
    for _, v in pairs(zone:GetChildren()) do
        if v.Name == "Gregory" then
            char.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        end
    end    
end)

tab2:Button("Himiko Teleport",function()
    local zone = game.Workspace.LiveNPCS
    local player = game.Players.LocalPlayer
    local char = player.Character
    
    for _, v in pairs(zone:GetChildren()) do
        if v.Name == "Himiko" then
            char.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        end
    end 
end)

tab2:Button("Officer Rick Teleport",function()
    local zone = game.Workspace.LiveNPCS
    local player = game.Players.LocalPlayer
    local char = player.Character
    
    for _, v in pairs(zone:GetChildren()) do
        if v.Name == "Rick" then
            char.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        end
    end
end)

tab2:Button("Policeman Teleport",function()
    local zone = game.Workspace.LiveNPCS
    local player = game.Players.LocalPlayer
    local char = player.Character
    
    for _, v in pairs(zone:GetChildren()) do
        if v.Name == "PoliceMan" then
            char.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        end
    end    
end)

tab2:Button("Reight Teleport",function()
    local zone = game.Workspace.LiveNPCS
    local player = game.Players.LocalPlayer
    local char = player.Character
    
    for _, v in pairs(zone:GetChildren()) do
        if v.Name == "Reight" then
            char.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        end
    end 
end)

tab2:Button("Thales Teleport",function()
    local cframe = CFrame.new(-757.32959, 553.801819, 4945.59131, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    local player = game.Players.LocalPlayer
    local char = player.Character
    
    if char then
        char.HumanoidRootPart.CFrame = cframe
    end    
end)

tab2:Button("Police Station Teleport",function()
    local cframe = CFrame.new(-539.00293, 556.312378, 4675.37109, 0.130574167, 0, 0.991438746, 0, 1, 0, -0.991438746, 0, 0.130574167)
    local player = game.Players.LocalPlayer
    local char = player.Character
    
    if char then
        char.HumanoidRootPart.CFrame = cframe
    end    
end)

local tab3 = Window:Tab("AutoFarm")

tab3:Toggle("Civilian Farm To Closest",nil,function(lols)
    local player = game.Players.LocalPlayer
    local char = player.Character
    local tween = game:GetService("TweenService")
    getgenv().zone = game.Workspace.Alive

    if lols == true then
        repeat wait()
            for _, v in pairs(getgenv().zone:GetDescendants()) do
                if v.Name == "AdultCivilianNPC" and not v:FindFirstChild("IFRAMES") then
                    local targetCFrame = v.HumanoidRootPart.Position
                    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Cubic)
                    local tweenGoal = {Position = targetCFrame * Vector3.new(-4,0,0)}
        
                    local distance = (v.HumanoidRootPart.Position-char.HumanoidRootPart.Position).magnitude

                        local tweenInstance = tween:Create(char.HumanoidRootPart, tweenInfo, tweenGoal)
                        tweenInstance:Play()
                        mouse1release()
                        wait()
                        if v.Humanoid.Health <= 1 then
                            keypress(0x42)
                        end

                end
            end
        until lol == false
end
end)

local tab4 = Window:Tab("Credits")


tab4:Line()

tab4:KeyBind("UI Keybind","Q",function()
    Hawk:ToggleUI()
end)
