local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()

local Notificatin = Hawk:Notification()
Notificatin:Notification("Hawk Loaded!","Have Fun!","Done",1)

local Window = Hawk:Window("Hawk HUB | The Strongest Battlegrounds")
local Tab1 = Window:Tab("Player")
local Tab2 = Window:Tab("Stuff")
local Tab3 = Window:Tab("Credits")
local Tab4 = Window:Tab("Colors")

Tab4:ColorPicker("Glow",Color3.new(0,0,0),function(xd)
	for i, v in pairs(game.CoreGui.Hawk.Main:GetChildren()) do
		if v.Name == "Glow" or v.Name == "Glow_2" or v.Name == "glow" or v.Name == "glow2" then
			v.ImageColor3 = xd
		end
	end
end)
Tab4:ColorPicker("TitleBar",Color3.fromRGB(39, 39, 39),function(xd)
	for i, v in pairs(game.CoreGui.Hawk.Main:GetChildren()) do
		if v.Name == "TitleBar" then
			v.BackgroundColor3 = xd
		elseif v.Name == "Tabs" then
			v.BackgroundColor3 = xd
		end
	end
end)

Tab3:Label("Made By Ediz and Surungen")

Tab1:Button("Speed",function()
	local player = game.Players.LocalPlayer
	local RunService = game:GetService("RunService")
	local hb = RunService.Heartbeat
	tpwalking = true
	local chr = player.Character
	local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
	while tpwalking and chr and hum and hum.Parent do
		local delta = hb:Wait()
		if click ~= 2 then
			if hum.MoveDirection.Magnitude > 0 then
				chr:TranslateBy(hum.MoveDirection * 5 * delta * 10)
			end
		end
	end
end)

Tab2:Button("Autofarm",function()
	local Playeers = game:GetService("Players")
	local Player = game.Players.LocalPlayer
	local char  = Player.Character
	local humonoid = char.HumanoidRootPart
	local backpack = Player.Backpack
	for i, v in pairs(workspace.Live:GetChildren()) do
		if v:IsA("Model") then
			if Playeers:FindFirstChild(v.Name) then
				repeat
					wait()
					humonoid.CFrame = v.HumanoidRootPart.CFrame*CFrame.new(0,0,2)

					local A_1 = 
						{
							["Goal"] = "LeftClick"
						}
					local Event = game:GetService("Workspace").Live[game.Players.LocalPlayer.Name].Communicate
					Event:FireServer(A_1)
					
					for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v:IsA("Tool") then
							v.Parent = game.Players.LocalPlayer.Backpack
						end
					end
				until v:FindFirstChild("FinalDeath")
			end
		end
	end
end)

Tab2:Button("Anti Stun",function()
	local player = game.Players.LocalPlayer
	local Char = player.Character

	while  wait() do
		if Char:FindFirstChild("Freeze") then
			Char.Freeze:Destroy()
		end
	end
end)

Tab2:Button("Extra Range",function()
	local player = game.Players.LocalPlayer
	local Char = player.Character

	while  wait() do
		if Char:FindFirstChild("NoRotate") then
			Char.NoRotate:Destroy()
		end
	end
end)

Tab2:Button("Anti Slowed",function()
	local player = game.Players.LocalPlayer
	local Char = player.Character

	while  wait() do
		if Char:FindFirstChild("Slowed") then
			Char.Freeze:Destroy()
		end
	end
end)

Tab2:KeyBind("Custom Dash","Q",function()
	local player = game.Players.LocalPlayer
	local Char = player.Character
	
	local bv = Instance.new("BodyVelocity", Char.HumanoidRootPart)
	bv.Name = "dodgevelocity"
	bv.MaxForce = Vector3.new(50000, 0, 50000)
	bv.Velocity = Char.HumanoidRootPart.CFrame.LookVector  * 120
	wait(.1)
	bv:Destroy()
end)