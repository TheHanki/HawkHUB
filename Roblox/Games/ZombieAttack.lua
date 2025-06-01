local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()

local Notificatin = Hawk:Notification()
Notificatin:Notification("Hawk Loaded!","Have Fun!","Notification",2)
local Window = Hawk:Window("Hawk HUB | Zombie Attack")
local Tab1 = Window:Tab("Combat")
local Tab2 = Window:Tab("Misc")
local Tab3 = Window:Tab("Player")
local Tab4 = Window:Tab("Credits")

function getclosest()
		game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
		game.Players.LocalPlayer.Character.Torso.Velocity = Vector3.new(0, 0, 0)
		for i, v in pairs(game:GetService("Workspace").enemies:GetChildren())  do
			local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Head.Position).magnitude
			if distance > 10 then
				if v:FindFirstChild("Head") then
				repeat wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,11,4)
					local A_1 = 
						{
							["Normal"] = Vector3.new(0, 0, 0),
							["Direction"] = v.Head.Position,
							["Name"] = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name,
							["Hit"] = v.Head,
							["Origin"] = v.Head.Position,
							["Pos"] = v.Head.Position
						}
					local Event = game:GetService("ReplicatedStorage").Gun
					Event:FireServer(A_1)
				until v.Humanoid.Health < 2
				end
			end	
		end
end	

Tab2:Label("Esps")
Tab2:Toggle("Power UPS Esp",function(toggle)
	workspace.Powerups.ChildAdded:Connect(function()
		for i, v in pairs(workspace.Powerups:GetChildren()) do
			if v:IsA("Model") then
				local box = Instance.new("BoxHandleAdornment")
				box.Size = v.base.Size
				box.AlwaysOnTop = true
				box.ZIndex = 1
				box.AdornCullingMode = Enum.AdornCullingMode.Never
				box.Color3 = Color3.new(0, 1, 1)
				box.Transparency = 0.7
				box.Adornee = v
				box.Parent = game.CoreGui

				local bill = Instance.new("BillboardGui",game.CoreGui)
				bill.AlwaysOnTop = true
				bill.Size = UDim2.new(0,400,0,100)
				bill.MaxDistance = 2000
				bill.Adornee = v

				local mid = Instance.new("Frame",bill)
				mid.AnchorPoint = Vector2.new(0.5,0.5)
				mid.BackgroundColor3 = Color3.new(0, 1, 1)
				mid.Size = UDim2.new(0,8,0,8)
				mid.Position = UDim2.new(0.5,0,0.5,0)
				Instance.new("UICorner",mid).CornerRadius = UDim.new(1,0)
				Instance.new("UIStroke",mid)

				local txt = Instance.new("TextLabel",bill)
				txt.AnchorPoint = Vector2.new(0.5,0.5)
				txt.BackgroundTransparency = 1
				txt.BackgroundColor3 = Color3.new(0, 1, 1)
				txt.TextColor3 = Color3.new(1, 1, 1)
				txt.TextStrokeTransparency = 0
				txt.TextStrokeColor3 = Color3.new(0, 0, 0)
				txt.Size = UDim2.new(1,0,0,20)
				txt.Position = UDim2.new(0.5,0,0.7,0)
				txt.Text = "PowerUp"
				txt.Font = Enum.Font.GothamBlack

				workspace.Powerups.ChildRemoved:Connect(function()
					if not workspace.Powerups:FindFirstChild(v) then
						box:Destroy()
					end
				end)
			end
		end
	end)

end)

Tab2:Toggle("Zombie Esp",function(toggle)
	workspace.enemies.ChildAdded:Connect(function()
		for i, v in pairs(workspace.enemies:GetChildren()) do
			if v:IsA("Model") then
				local box = Instance.new("BoxHandleAdornment")
				box.Size = v.HumanoidRootPart.Size
				box.AlwaysOnTop = true
				box.ZIndex = 1
				box.AdornCullingMode = Enum.AdornCullingMode.Never
				box.Color3 = v.HumanoidRootPart.Color
				box.Transparency = 0.7
				box.Adornee = v
				box.Parent = game.CoreGui

				local bill = Instance.new("BillboardGui",game.CoreGui)
				bill.AlwaysOnTop = true
				bill.Size = UDim2.new(0,400,0,100)
				bill.MaxDistance = 2000
				bill.Adornee = v

				local mid = Instance.new("Frame",bill)
				mid.AnchorPoint = Vector2.new(0.5,0.5)
				mid.BackgroundColor3 = v.HumanoidRootPart.Color
				mid.Size = UDim2.new(0,10,0,12)
				mid.Position = UDim2.new(0.5,0,0.5,0)

				local txt = Instance.new("TextLabel",bill)
				txt.AnchorPoint = Vector2.new(0.5,0.5)
				txt.BackgroundTransparency = 1
				txt.BackgroundColor3 = v.HumanoidRootPart.Color
				txt.TextColor3 = Color3.new(1, 1, 1)
				txt.TextStrokeTransparency = 0
				txt.TextStrokeColor3 = Color3.new(0, 0, 0)
				txt.Size = UDim2.new(1,0,0,20)
				txt.Position = UDim2.new(0.5,0,0.7,0)
				txt.Text = v.Name .." Zombie"
				txt.Font = Enum.Font.GothamBlack

				workspace.enemies.ChildRemoved:Connect(function()
					if not workspace.enemies:FindFirstChild(v) then
						box:Destroy()
					end
				end)
			end
		end
	end)

end)

Tab2:Toggle("Boss Esp",function(toggle)
	workspace.BossFolder.ChildAdded:Connect(function()
		for i, v in pairs(workspace.BossFolder:GetChildren()) do
			if v:IsA("Model") then
				local box = Instance.new("BoxHandleAdornment")
				box.Size = v.HumanoidRootPart.Size
				box.AlwaysOnTop = true
				box.ZIndex = 1
				box.AdornCullingMode = Enum.AdornCullingMode.Never
				box.Color3 = v.Head.Color
				box.Transparency = 0.7
				box.Adornee = v
				box.Parent = game.CoreGui

				local bill = Instance.new("BillboardGui",game.CoreGui)
				bill.AlwaysOnTop = true
				bill.Size = UDim2.new(0,400,0,100)
				bill.MaxDistance = 2000
				bill.Adornee = v

				local mid = Instance.new("Frame",bill)
				mid.AnchorPoint = Vector2.new(0.5,0.5)
				mid.BackgroundColor3 = v.Head.Color
				mid.Size = UDim2.new(0,12,0,14)
				mid.Position = UDim2.new(0.5,0,0.5,0)

				local txt = Instance.new("TextLabel",bill)
				txt.AnchorPoint = Vector2.new(0.5,0.5)
				txt.BackgroundTransparency = 1
				txt.BackgroundColor3 = v.Head.Color
				txt.TextColor3 = Color3.new(1, 1, 1)
				txt.TextStrokeTransparency = 0
				txt.TextStrokeColor3 = Color3.new(0, 0, 0)
				txt.Size = UDim2.new(1,0,0,20)
				txt.Position = UDim2.new(0.5,0,0.7,0)
				txt.Text = v.Name .." Boss"
				txt.Font = Enum.Font.GothamBlack

				workspace.BossFolder.ChildRemoved:Connect(function()
					if not workspace.BossFolder:FindFirstChild(v) then
						box:Destroy()
					end
				end)
			end
		end
	end)

end)

Tab2:Line()

Tab1:Toggle("AutoFarm",function(togel)
		if togel == true then
			getgenv().anan = true
		else
			getgenv().anan = false
		end

		if getgenv().anan == true then
			while true do
				wait()
				pcall(getclosest)
				if getgenv().anan == false then
					break
				end
			end
		end
end)
Tab1:Button("Zombie-Silent-Aim",function()
	setreadonly(getrawmetatable(game), false)

	local Player = game:GetService("Players").LocalPlayer
	local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
	local Head = Player.Character.Head
	local mt = getrawmetatable(game)
	local _index = mt.__index
	local zombicollec = function()
		local infinity = 50
		local zort = nil
		for i, v in pairs(workspace.enemies:GetChildren()) do
			if v:FindFirstChild("Head") and Head and v.Parent.Name ~= "deadenemies" then
				local magnitude = (v:FindFirstChild("Head").Position - Head.Position).magnitude
				if magnitude < infinity then
					zort = v
				end
			end
		end
		return zort
	end

	mt.__index = newcclosure(function(self, ...)
		local args = {...}
		local namecall = getnamecallmethod()
		if self == Mouse and tostring(args[1]) == "Hit" then
			return zombicollec():FindFirstChild("Head").CFrame
		end
		return _index(self, unpack(args))
	end)

	setreadonly(getrawmetatable(game), true)
end)
Tab1:Button("Boss-Silent-Aim",function()
	setreadonly(getrawmetatable(game), false)

	local Player = game:GetService("Players").LocalPlayer
	local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
	local Head = Player.Character.Head
	local mt = getrawmetatable(game)
	local _index = mt.__index
	local zombicollec = function()
		local infinity = 50
		local zort = nil
		for i, v in pairs(workspace.BossFolder:GetChildren()) do
			if v:FindFirstChild("Head") and Head and v.Parent.Name ~= "deadenemies" then
				local magnitude = (v:FindFirstChild("Head").Position - Head.Position).magnitude
				if magnitude < infinity then
					zort = v
				end
			end
		end
		return zort
	end

	mt.__index = newcclosure(function(self, ...)
		local args = {...}
		local namecall = getnamecallmethod()
		if self == Mouse and tostring(args[1]) == "Hit" then
			return zombicollec():FindFirstChild("Head").CFrame
		end
		return _index(self, unpack(args))
	end)

	setreadonly(getrawmetatable(game), true)
end)
Tab1:Button("Collect Power UPS",function()
		for i, v in pairs(workspace.Powerups:GetChildren()) do
			if v:IsA("Model") then
			for a,w in pairs(v:GetChildren()) do
				if w:IsA("Part") then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = w.CFrame
				end
			end
			end
		end	
end)
Tab1:Toggle("Zombie Big Heads",function(togel)
	if togel == true then
		for i, v in pairs(workspace.enemies:GetChildren()) do
			v:FindFirstChild("Head").Size = UDim2.new(10, 10, 10)
		end
	else
		for i, v in pairs(workspace.enemies:GetChildren()) do
			v:FindFirstChild("Head").Size = UDim2.new(2, 1, 1)
		end
	end	
end)	

Tab3:Label("Adjustments")
Tab3:Slider("Speed",16,100,function(val)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)
Tab3:Slider("JumpPower",16,100,function(val)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
end)
--Infinite Jump
infinjump = false
Tab3:Toggle("infJump",  function(value)
	infinjump = value


	game:GetService("UserInputService").JumpRequest:Connect(function()
		if infinjump == true then
			game:GetService "Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
		end
	end)
end)
Tab3:Line()
Tab3:Label("Fun")
Tab3:Button("Crash Your Game",function(val)
	setreadonly(getrawmetatable(game), false)

	local Player = game:GetService("Players").LocalPlayer
	local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
	local Head = Player.Character.Head
	local mt = getrawmetatable(game)

	local zombicollec = function()
		for i, v in pairs(workspace.enemies:GetChildren()) do
			local magnitude = (v:FindFirstChild("Head").Position - Head.Position).magnitude
			local infinity = math.huge
			local zort = nil
			if magnitude < infinity then
				zort = v
			end
			return zort
		end
	end

	mt.__index = newcclosure(function(self, ...)
		local args = {...}
		local namecall = getnamecallmethod()
		if self == Mouse and tostring(namecall) == "Hit" then
			return zombicollec():FindFirstChild("Head").CFrame
		end
		return mt.__index(self, unpack(args))
	end)

	setreadonly(getrawmetatable(game), true)
end)
Tab3:Button("Crash Your Game (Real)",function(val)
	Notificatin:Notification("Hello sussy baka","Wanna date? \n:smirk:","Done",2)
end)
Tab3:Button("Tp Tool",function(val)
	local TpTool = Instance.new("Tool")
	local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
	TpTool.Name = "Teleport Tool"
	TpTool.RequiresHandle = false
	TpTool.Parent = game.Players.LocalPlayer.Backpack
	TpTool.Activated:Connect(function()
		local Char = game.Players.LocalPlayer.Character or workspace:FindFirstChild(game.Players.LocalPlayer.Name)
		local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
		if not Char or not HRP then
			return warn("Failed to find HumanoidRootPart")
		end
		HRP.CFrame = CFrame.new(Mouse.Hit.X, Mouse.Hit.Y + 3, Mouse.Hit.Z, select(4, HRP.CFrame:components()))
	end)
end)

	local Colors = Window:Tab("Settings")
	Colors:ColorPicker("Glow",Color3.new(0,0,0),function(xd)
		for i, v in pairs(game.CoreGui.Hawk.Main:GetChildren()) do
			if v.Name == "Glow" or v.Name == "Glow_2" or v.Name == "glow" or v.Name == "glow2" then
				v.ImageColor3 = xd
			end
		end
	end)
	Colors:ColorPicker("TitleBar",Color3.fromRGB(39, 39, 39),function(xd)
		for i, v in pairs(game.CoreGui.Hawk.Main:GetChildren()) do
			if v.Name == "TitleBar" then
				v.BackgroundColor3 = xd
			elseif v.Name == "Tabs" then
				v.BackgroundColor3 = xd
			end
		end
	end)
Colors:KeyBind("UIKeybind","E",function()
	Hawk:ToggleUI()
end)





