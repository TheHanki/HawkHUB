local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/HawkLib.lua", true))()

local Window = Hawk:Window({
	ScriptName = "Hawk HUB | Anime Fighting Simulator",
	DestroyIfExists = true,
	Theme = "Dark"
})

local notifica = Hawk:AddNotifications()

notifica:Notification("Loaded!", "Anime Fighting Simulator", "Done", 2)
wait()
notifica:Notification("By __spyro and ediz", ":D", "Done", 2)
wait()

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

local Autofarms = Window:Tab("Autofarms","Autofarm Page")
local KillAura = Window:Tab("KillAura","KillAura Page")
local Misc = Window:Tab("Misc","Misc Page")

local list = {
    "Auto Open Summon",
    "Auto Sword",
    "Auto Chakra",
    "Auto Defence",
    "Auto Strength",
    "Boulder Farm",
    "Auto Wood",
    "Chakra Tree",
    "Auto Ship",
    "Autofarm All"
}

Autofarms:Dropdown("Autofarms",list,function(option)
    if option == "Auto Open Summon" then
        while wait() do 
            local args = {
                [1] = "Roll",
                [2] = "Champion Capsule",
                [3] = 1
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Champions/RemoteEvent"):FireServer(unpack(args))
        
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                break
            end
        end
    elseif option == "Auto Sword" then
        while wait() do 
            local args = {
                [1] = "TrainStat",
                [2] = "Sword"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
            
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                break
            end
        end
    elseif option == "Auto Chakra" then
        while wait() do 
            local args = {
                [1] = "TrainStat",
                [2] = "Chakra"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
            
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                break
            end
        end
    elseif option == "Auto Defence" then
        while wait() do 
            local args = {
                [1] = "TrainStat",
                [2] = "Durability"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
            
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                break
            end
        end
    elseif option == "Auto Strength" then
        while wait() do 
            local args = {
                [1] = "TrainStat",
                [2] = "Strength"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
            
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                break
            end
        end
    elseif option == "Boulder Farm" then
        local cframe = CFrame.new(395.912048, 22.0744591, -101.921761, 0.999391913, -0, -0.0348687991, 0, 1, -0, 0.0348687991, 0, 0.999391913)
        local player = game.Players.LocalPlayer
        local char = player.Character
        
        while wait() do 
            if char then
                char.HumanoidRootPart.CFrame = cframe
                
            local args = {
                [1] = "TrainStat",
                [2] = "Strength"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args)) 
            end

            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                break
            end
        end
    elseif option == "Auto Wood" then
        local zone = game.Workspace.Scriptable.TrainingsAreas
        local player = game.Players.LocalPlayer
        local char = player.Character
        local cframe = CFrame.new(-75.216713, 58.1467056, -324.199036, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    
        while wait() do 
            for _, v in pairs(zone:GetChildren()) do
                if v.Name == "Wood Logs" then
                    
                char.HumanoidRootPart.CFrame = cframe
                local args = {
                [1] = "TrainStat",
                [2] = "Strength"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
        
                if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                    break
                end
                    end
                end


                if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                    break
                end
        end
    elseif option == "Chakra Tree" then
        local zone = game.Workspace.Scriptable.TrainingsAreas
        local player = game.Players.LocalPlayer
        local char = player.Character
        local cframe = CFrame.new(-10.6523638, 102.272247, -83.0591965, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        
        while wait() do 
            for _, v in pairs(zone:GetChildren()) do
                if v.Name == "Chakra Tree" then
                    
                        char.HumanoidRootPart.CFrame = cframe
                        local args = {
                [1] = "TrainStat",
                [2] = "Chakra"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
              
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                break
            end
                end
                if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                    break
                end
            end



                if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                    break
                end
        end
    elseif option == "Auto Ship" then
        local cframe = CFrame.new(639.456421, 15.6271038, -112.011955, -1, 0, 0, 0, 1, 0, 0, 0, -1)
        local player = game.Players.LocalPlayer
        local char = player.Character
        
        while wait() do 
            if char then
                char.HumanoidRootPart.CFrame = cframe

            local args = {
                [1] = "TrainStat",
                [2] = "Durability"
            }

            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))      
            end

            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                break
            end
        end
    elseif option == "Autofarm All" then
        while wait() do 
            local args = {
                [1] = "TrainStat",
                [2] = "Sword"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
            
            local args = {
                [1] = "TrainStat",
                [2] = "Chakra"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
            
            local args = {
                [1] = "TrainStat",
                [2] = "Durability"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
            
            local args = {
                [1] = "TrainStat",
                [2] = "Strength"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
           
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
                break
            end
        end
    end
end)

Autofarms:Line()

Autofarms:Section("NPC Farm")

getgenv().swordfarm = false
Autofarms:Toggle("Thug1 Sword Farm",nil,function(farmng)
    getgenv().swordfarm = farmng

    if getgenv().swordfarm == true then
        local player = game.Players.LocalPlayer
        local char = player.Character
        local zone = game.Workspace.Scriptable.Mobs
        
        local function TrainStrength()
            local args = {
            [1] = "TrainStat",
            [2] = "Sword"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
        
        end
        
       while wait() do
        task.spawn(function()
            for _, v in pairs(zone:GetChildren()) do
                if v.Name == "Thug1" then
                    repeat
                        char.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        
                        if v.Humanoid.Health > 0 then
                            TrainStrength()
                            wait()
                        end
                    until v.Humanoid.Health == 0
                end
            end
        end)
       wait()
       if getgenv().swordfarm == false then break end
    end
    end
end)

getgenv().punchfarm = false
Autofarms:Toggle("Thug1 Punch Farm",nil,function(farmng)
    getgenv().punchfarm = farmng

    if getgenv().punchfarm == true then
        local player = game.Players.LocalPlayer
        local char = player.Character
        local zone = game.Workspace.Scriptable.Mobs
        
        local function TrainStrength()
            local args = {
                [1] = "TrainStat",
                [2] = "Strength"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
        end
        
       while wait() do
        task.spawn(function()
            for _, v in pairs(zone:GetChildren()) do
                if v.Name == "Thug1" then
                    repeat
                        char.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        
                        while v.Humanoid.Health > 0 do
                            TrainStrength()
                            wait()
                        end
                    until v.Humanoid.Health == 0
                end
            end
        end)
       wait()
       if getgenv().punchfarm == false then break end
    end
    end
end)

KillAura:Label("Strengt & Sword Kill Auras","Good option if you need an aura")
getgenv().strengthaura = false
KillAura:Toggle("Strength Kill Aura",nil,function(farmng)
    getgenv().strengthaura = farmng

    if getgenv().strengthaura == true then
              
       while wait() do
        local args = {
            [1] = "TrainStat",
            [2] = "Strength"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
        
       wait()
       if getgenv().strengthaura == false then break end
    end
    end
end)


getgenv().swordaura = false
KillAura:Toggle("Strength Kill Aura",nil,function(farmng)
    getgenv().swordaura = farmng

    if getgenv().swordaura == true then
              
       while wait() do
        local args = {
            [1] = "TrainStat",
            [2] = "Sword"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteFunction"):InvokeServer(unpack(args))
        
       wait()
       if getgenv().swordaura == false then break end
    end
    end
end)

Misc:Dropdown("Quest",{"1. Quest","2. Quest","3. Quest"},function(option)
    if option == "1. Quest" then
        local args = {
            [1] = "StartQuest",
            [2] = "FirstQuest"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Quests/RemoteEvent"):FireServer(unpack(args))        
    elseif option == "2. Quest" then
        local args = {
            [1] = "Follow",
            [2] = "FirstQuest"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Quests/RemoteEvent"):FireServer(unpack(args))
    elseif option == "3. Quest" then  
        local args = {
            [1] = "StartQuest",
            [2] = "FirstQuest"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Quests/RemoteEvent"):FireServer(unpack(args))        
    end
end)

Misc:Line()

Misc:Dropdown("Upgrade",{"Chakra Upgrade","Durability Upgrade","Speed Upgrade","Strength Upgrade","Sword Upgrade"},function(option)
    if option == "Chakra Upgrade" then
        local args = {
            [1] = "Upgrade",
            [2] = "Chakra"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteEvent"):FireServer(unpack(args))
    elseif option == "Durability Upgrade" then
        local args = {
            [1] = "Upgrade",
            [2] = "Durability"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteEvent"):FireServer(unpack(args))
    elseif option == "Speed Upgrade" then   
        local args = {
            [1] = "Upgrade",
            [2] = "Speed"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteEvent"):FireServer(unpack(args))
    elseif option == "Strength Upgrade" then   
        local args = {
            [1] = "Upgrade",
            [2] = "Strength"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteEvent"):FireServer(unpack(args))
    elseif option == "Sword Upgrade" then        
        local args = {
            [1] = "Upgrade",
            [2] = "Sword"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Stats/RemoteEvent"):FireServer(unpack(args))        
    end
end)

local tab4 = Window:Tab("Credits")


tab4:Line()

tab4:KeyBind("UI Keybind","Q",function()
    Hawk:ToggleUI()
end)
