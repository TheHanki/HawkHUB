local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/QuashDog/Teachingw3zort/main/Libs/PcLib", true))()
local Notificatin = Hawk:Notification()

function addadmin(player)
	for i, v in pairs(game.CoreGui:GetDescendants()) do
		if v.Name == "HawkAdmin" then
			v:Destroy()
		end
	end

	local HawkAdmin = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Glow = Instance.new("ImageLabel")
	local Glow_2 = Instance.new("ImageLabel")
	local Commands = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local hbring = Instance.new("TextLabel")
	local hkick = Instance.new("TextLabel")
	local hrejjoin = Instance.new("TextLabel")
	local hfly = Instance.new("TextLabel")
	local hfling = Instance.new("TextLabel")
	local hloadhawk = Instance.new("TextLabel")
	local hff = Instance.new("TextLabel")
	local hunff = Instance.new("TextLabel")
	local hprotect = Instance.new("TextLabel")
	local hnoprotect = Instance.new("TextLabel")
	local hwalkspeed = Instance.new("TextLabel")
	local hjumppower = Instance.new("TextLabel")
	local hcmds = Instance.new("TextLabel")
	local hclosecmds = Instance.new("TextLabel")
	local SearcBar = Instance.new("TextBox")
	local UICorner_2 = Instance.new("UICorner")

	HawkAdmin.Name = "HawkAdmin"
	HawkAdmin.Parent = game.CoreGui
	HawkAdmin.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = HawkAdmin
	Main.Active = true
	Main.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Main.BorderColor3 = Color3.fromRGB(28, 28, 28)
	Main.Position = UDim2.new(0.5, -174, 2, -157)
	Main.Size = UDim2.new(0, 349, 0, 314)

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = Main

	Glow.Name = "Glow"
	Glow.Parent = Main
	Glow.Active = true
	Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Glow.BackgroundTransparency = 1.000
	Glow.Position = UDim2.new(0, -15, 0, -15)
	Glow.Size = UDim2.new(1, 30, 1, 30)
	Glow.ZIndex = 0
	Glow.Image = "rbxassetid://5028857084"
	Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Glow.ScaleType = Enum.ScaleType.Slice
	Glow.SliceCenter = Rect.new(24, 24, 276, 276)

	Glow_2.Name = "Glow"
	Glow_2.Parent = Main
	Glow_2.Active = true
	Glow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Glow_2.BackgroundTransparency = 1.000
	Glow_2.Position = UDim2.new(0, -15, 0, -15)
	Glow_2.Size = UDim2.new(1, 30, 1, 30)
	Glow_2.ZIndex = 0
	Glow_2.Image = "rbxassetid://5028857084"
	Glow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Glow_2.ScaleType = Enum.ScaleType.Slice
	Glow_2.SliceCenter = Rect.new(24, 24, 276, 276)

	Commands.Name = "Commands"
	Commands.Parent = Main
	Commands.Active = true
	Commands.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Commands.BorderColor3 = Color3.fromRGB(28, 28, 28)
	Commands.BorderSizePixel = 0
	Commands.Position = UDim2.new(0.0229226369, 0, 0.0891719759, 0)
	Commands.Size = UDim2.new(0, 333, 0, 280)
	Commands.CanvasPosition = Vector2.new(0, 0)
	Commands.ScrollBarThickness = 5
	Commands.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)

	UIListLayout.Parent = Commands
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 6)

	hbring.Name = "h!bring"
	hbring.Parent = Commands
	hbring.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hbring.BackgroundTransparency = 1.000
	hbring.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hbring.Size = UDim2.new(0, 247, 0, 16)
	hbring.Font = Enum.Font.GothamMedium
	hbring.Text = "h!bring"
	hbring.TextColor3 = Color3.fromRGB(180, 180, 180)
	hbring.TextSize = 14.000
	hbring.TextXAlignment = Enum.TextXAlignment.Left

	hkick.Name = "h!kick"
	hkick.Parent = Commands
	hkick.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hkick.BackgroundTransparency = 1.000
	hkick.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hkick.Size = UDim2.new(0, 247, 0, 16)
	hkick.Font = Enum.Font.GothamMedium
	hkick.Text = "h!kick"
	hkick.TextColor3 = Color3.fromRGB(180, 180, 180)
	hkick.TextSize = 14.000
	hkick.TextXAlignment = Enum.TextXAlignment.Left

	hrejjoin.Name = "h!rejjoin"
	hrejjoin.Parent = Commands
	hrejjoin.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hrejjoin.BackgroundTransparency = 1.000
	hrejjoin.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hrejjoin.Size = UDim2.new(0, 247, 0, 16)
	hrejjoin.Font = Enum.Font.GothamMedium
	hrejjoin.Text = "h!rejoin"
	hrejjoin.TextColor3 = Color3.fromRGB(180, 180, 180)
	hrejjoin.TextSize = 14.000
	hrejjoin.TextXAlignment = Enum.TextXAlignment.Left

	hfly.Name = "h!fly"
	hfly.Parent = Commands
	hfly.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hfly.BackgroundTransparency = 1.000
	hfly.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hfly.Size = UDim2.new(0, 247, 0, 16)
	hfly.Font = Enum.Font.GothamMedium
	hfly.Text = "h!fly"
	hfly.TextColor3 = Color3.fromRGB(180, 180, 180)
	hfly.TextSize = 14.000
	hfly.TextXAlignment = Enum.TextXAlignment.Left

	hfling.Name = "h!fling"
	hfling.Parent = Commands
	hfling.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hfling.BackgroundTransparency = 1.000
	hfling.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hfling.Size = UDim2.new(0, 247, 0, 16)
	hfling.Font = Enum.Font.GothamMedium
	hfling.Text = "h!fling"
	hfling.TextColor3 = Color3.fromRGB(180, 180, 180)
	hfling.TextSize = 14.000
	hfling.TextXAlignment = Enum.TextXAlignment.Left

	hloadhawk.Name = "h!loadhawk"
	hloadhawk.Parent = Commands
	hloadhawk.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hloadhawk.BackgroundTransparency = 1.000
	hloadhawk.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hloadhawk.Size = UDim2.new(0, 247, 0, 16)
	hloadhawk.Font = Enum.Font.GothamMedium
	hloadhawk.Text = "h!loadhawk"
	hloadhawk.TextColor3 = Color3.fromRGB(180, 180, 180)
	hloadhawk.TextSize = 14.000
	hloadhawk.TextXAlignment = Enum.TextXAlignment.Left

	hff.Name = "h!ff"
	hff.Parent = Commands
	hff.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hff.BackgroundTransparency = 1.000
	hff.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hff.Size = UDim2.new(0, 247, 0, 16)
	hff.Font = Enum.Font.GothamMedium
	hff.Text = "h!ff"
	hff.TextColor3 = Color3.fromRGB(180, 180, 180)
	hff.TextSize = 14.000
	hff.TextXAlignment = Enum.TextXAlignment.Left

	hunff.Name = "h!unff"
	hunff.Parent = Commands
	hunff.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hunff.BackgroundTransparency = 1.000
	hunff.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hunff.Size = UDim2.new(0, 247, 0, 16)
	hunff.Font = Enum.Font.GothamMedium
	hunff.Text = "h!unff"
	hunff.TextColor3 = Color3.fromRGB(180, 180, 180)
	hunff.TextSize = 14.000
	hunff.TextXAlignment = Enum.TextXAlignment.Left

	hprotect.Name = "h!protect"
	hprotect.Parent = Commands
	hprotect.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hprotect.BackgroundTransparency = 1.000
	hprotect.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hprotect.Size = UDim2.new(0, 247, 0, 16)
	hprotect.Font = Enum.Font.GothamMedium
	hprotect.Text = "h!protect"
	hprotect.TextColor3 = Color3.fromRGB(180, 180, 180)
	hprotect.TextSize = 14.000
	hprotect.TextXAlignment = Enum.TextXAlignment.Left

	hnoprotect.Name = "h!noprotect"
	hnoprotect.Parent = Commands
	hnoprotect.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hnoprotect.BackgroundTransparency = 1.000
	hnoprotect.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hnoprotect.Size = UDim2.new(0, 247, 0, 16)
	hnoprotect.Font = Enum.Font.GothamMedium
	hnoprotect.Text = "h!noprotect"
	hnoprotect.TextColor3 = Color3.fromRGB(180, 180, 180)
	hnoprotect.TextSize = 14.000
	hnoprotect.TextXAlignment = Enum.TextXAlignment.Left

	hwalkspeed.Name = "h!walkspeed"
	hwalkspeed.Parent = Commands
	hwalkspeed.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hwalkspeed.BackgroundTransparency = 1.000
	hwalkspeed.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hwalkspeed.Size = UDim2.new(0, 247, 0, 16)
	hwalkspeed.Font = Enum.Font.GothamMedium
	hwalkspeed.Text = "h!walkspeed (arg)"
	hwalkspeed.TextColor3 = Color3.fromRGB(180, 180, 180)
	hwalkspeed.TextSize = 14.000
	hwalkspeed.TextXAlignment = Enum.TextXAlignment.Left

	hjumppower.Name = "h!jumppower"
	hjumppower.Parent = Commands
	hjumppower.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hjumppower.BackgroundTransparency = 1.000
	hjumppower.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hjumppower.Size = UDim2.new(0, 247, 0, 16)
	hjumppower.Font = Enum.Font.GothamMedium
	hjumppower.Text = "h!jumppower (arg)"
	hjumppower.TextColor3 = Color3.fromRGB(180, 180, 180)
	hjumppower.TextSize = 14.000
	hjumppower.TextXAlignment = Enum.TextXAlignment.Left

	hcmds.Name = "h!cmds"
	hcmds.Parent = Commands
	hcmds.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hcmds.BackgroundTransparency = 1.000
	hcmds.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hcmds.Size = UDim2.new(0, 247, 0, 16)
	hcmds.Font = Enum.Font.GothamMedium
	hcmds.Text = "h!cmds"
	hcmds.TextColor3 = Color3.fromRGB(180, 180, 180)
	hcmds.TextSize = 14.000
	hcmds.TextXAlignment = Enum.TextXAlignment.Left

	hclosecmds.Name = "h!closecmds"
	hclosecmds.Parent = Commands
	hclosecmds.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	hclosecmds.BackgroundTransparency = 1.000
	hclosecmds.BorderColor3 = Color3.fromRGB(28, 28, 28)
	hclosecmds.Size = UDim2.new(0, 247, 0, 16)
	hclosecmds.Font = Enum.Font.GothamMedium
	hclosecmds.Text = "h!closecmds"
	hclosecmds.TextColor3 = Color3.fromRGB(180, 180, 180)
	hclosecmds.TextSize = 14.000
	hclosecmds.TextXAlignment = Enum.TextXAlignment.Left

	local kill = hclosecmds:Clone()
	kill.Name = "hkill"
	kill.Text = "h!kill"

	SearcBar.Name = "SearcBar"
	SearcBar.Parent = Main
	SearcBar.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	SearcBar.BorderColor3 = Color3.fromRGB(28, 28, 28)
	SearcBar.Size = UDim2.new(0, 349, 0, 28)
	SearcBar.Font = Enum.Font.GothamMedium
	SearcBar.PlaceholderText = "Search Here"
	SearcBar.Text = ""
	SearcBar.TextColor3 = Color3.fromRGB(255, 255, 255)
	SearcBar.TextSize = 14.000

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = SearcBar

	local searchBar = SearcBar
	local items = Commands

	function UpdateResults()
		local search = string.lower(searchBar.Text)
		for i, v in	 pairs(items:GetChildren()) do
			if v:IsA("GuiLabel") then
				if search ~= "" then
					local item = string.lower(v.Text)
					if string.find(item, search) then
						v.Visible = true
					else
						v.Visible = false
					end
				else
					v.Visible = true
				end
			end
		end
	end

	searchBar.Changed:Connect(UpdateResults)

	function flingall()
		local Adrix        = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(0.01)
		ZZ = game:GetService('RunService').Stepped:connect(function()
			for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
				if v:IsA("BasePart") then 
					v.CanCollide = false
				end
			end
		end)
		local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
		local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
		BG.P         = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
		BV.velocity  = Vector3.new(0, 3.75, 0)
		BV.maxForce  = Vector3.new(9e9, 9e9, 9e9)
		wait()
		NoLol = game:GetService('RunService').Heartbeat:connect(function()
			for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
				if v:IsA("BasePart") and v.Name ~="Torso" then 
					v.Velocity = Vector3.new(0,-2333333,0)
				end
			end
		end)
		XD = game:GetService("Players").LocalPlayer

		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name ~= XD.Name then
				if v.Character:FindFirstChild('Role') and v.Character:FindFirstChild('Torso') then
					wait(0.1)
					XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,-3.9,0)
					wait(0.1)
					XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,4,0)
					wait(0.1)
				end 
			end    
		end
		wait(0.2)
		ZZ:Disconnect()

		NoLol:Disconnect()
		wait(0.1)
		BG:Destroy()
		BV:Destroy()
		game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = Adrix
		game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = true
		wait()
		game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = false	
	end

	local prefix = "h!"
	local event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents
	event.OnMessageDoneFiltering.OnClientEvent:Connect(function(object)
		object.FromSpeaker = player

		if object.Message == prefix .. "bring" then
			if game.Players.LocalPlayer.Name == player then
			local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(player).Character.HumanoidRootPart.CFrame
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
			else
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(player).Character.HumanoidRootPart.CFrame
			end		
		end
		
		for i, v in pairs(game.Players:GetChildren()) do
			if v.Name == "Admim" then
				v:Destroy()
			end
		end
					local Admim = Instance.new("BillboardGui")
					local TextLabel = Instance.new("TextLabel")

					Admim.Name = "Admim"
		            Admim.Parent = game.Workspace:FindFirstChild(player).Head
					Admim.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					Admim.LightInfluence = 1.000
					Admim.Size = UDim2.new(20, 0, 1.29999995, 0)
					Admim.StudsOffset = Vector3.new(0, 3, 0)

					TextLabel.Parent = Admim
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Size = UDim2.new(1, 0, 1, 0)
					TextLabel.Font = Enum.Font.GothamBlack
					TextLabel.TextScaled = true
					TextLabel.TextSize = 100.000
					TextLabel.TextWrapped = true

		           if player == "yenilmez_xxgg" then
							TextLabel.Text = "OWNER"
							TextLabel.TextColor3 = Color3.fromRGB(170, 0, 0)
		          elseif player ~= "yenilmez_xxgg" then
						TextLabel.Text = "ADMIN"
		            	TextLabel.TextColor3 = Color3.fromRGB(85, 0, 127)
				end
		
		if object.Message == prefix .. "kick" then
			game.Players.LocalPlayer:Kick()
		end

		if object.Message == prefix .. "kill" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.Health = 0
		end

		if object.Message == prefix .. "loadhawk" then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHanki/Hawk/main/HUB/Loader", true))()
		end

		if object.Message == prefix .. "rejoin" then
			local ts = game:GetService("TeleportService")
			local p = game:GetService("Players").LocalPlayer
			ts:Teleport(game.PlaceId, p)
		end
		
		if object.Message == prefix .. "cmds" then
			Main:TweenPosition(UDim2.new(0.5, -174, 0.5, -157))
		end

		if object.Message == prefix .. "closecmds" then
			Main:TweenPosition(UDim2.new(0.5, -174, 2, -157))
		end

		if object.Message == prefix .. "walkspeed" then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60
		end

		if object.Message == prefix .. "jumppower" then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
		end

		if object.Message == prefix .. "nowalkspeed" then
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		end

		if object.Message == prefix .. "nojumppower" then
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		end

		if object.Message == prefix .. "fly" then
			repeat wait()
			until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
			local mouse = game.Players.LocalPlayer:GetMouse()
			repeat wait() until mouse
			local plr = game.Players.LocalPlayer
			local torso = plr.Character.Torso
			local flying = true
			local deb = true
			local ctrl = {f = 0, b = 0, l = 0, r = 0}
			local lastctrl = {f = 0, b = 0, l = 0, r = 0}
			local maxspeed = 50
			local speed = 0

			function Fly()
				local bg = Instance.new("BodyGyro", torso)
				bg.P = 9e4
				bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
				bg.cframe = torso.CFrame
				local bv = Instance.new("BodyVelocity", torso)
				bv.velocity = Vector3.new(0,0.1,0)
				bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
				repeat wait()
					plr.Character.Humanoid.PlatformStand = true
					if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
						speed = speed+.5+(speed/maxspeed)
						if speed > maxspeed then
							speed = maxspeed
						end
					elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
						speed = speed-1
						if speed < 0 then
							speed = 0
						end
					end
					if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
						bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
						lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
					elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
						bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
					else
						bv.velocity = Vector3.new(0,0.1,0)
					end
					bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
				until not flying
				ctrl = {f = 0, b = 0, l = 0, r = 0}
				lastctrl = {f = 0, b = 0, l = 0, r = 0}
				speed = 0
				bg:Destroy()
				bv:Destroy()
				plr.Character.Humanoid.PlatformStand = false
			end
			mouse.KeyDown:connect(function(key)
				if key:lower() == "e" then
					if flying then flying = false
					else
						flying = true
						Fly()
					end
				elseif key:lower() == "w" then
					ctrl.f = 1
				elseif key:lower() == "s" then
					ctrl.b = -1
				elseif key:lower() == "a" then
					ctrl.l = -1
				elseif key:lower() == "d" then
					ctrl.r = 1
				end
			end)
			mouse.KeyUp:connect(function(key)
				if key:lower() == "w" then
					ctrl.f = 0
				elseif key:lower() == "s" then
					ctrl.b = 0
				elseif key:lower() == "a" then
					ctrl.l = 0
				elseif key:lower() == "d" then
					ctrl.r = 0
				end
			end)
			Fly()
		end

		if object.Message == prefix .. "fling" then
			flingall()
		end

		if object.Message == prefix .. "ff" then
			local Why      = game:GetService("Players").LocalPlayer
			local Char     = Why.Character
			local backpack = Why.Backpack

			Char.Humanoid:UnequipTools()
			wait()
			for i,v in next, backpack:GetDescendants() do
				if v:IsA("Tool") and v.Name =="Shield" then
					v.GripPos         = Vector3.new(0,10000,0)
					v.Handle.Massless = true
					v.Parent          = Char
					v:Activate()
					v.ShieldPotion:Destroy()
					v:Destroy()
				end
			end
		end

		if object.Message == prefix .. "protect" then
			local Why      = game:GetService("Players").LocalPlayer
			local Char     = Why.Character
			local backpack = Why.Backpack

			Char.Humanoid:UnequipTools()
			wait()
			for i,v in next, backpack:GetDescendants() do
				if v:IsA("Tool") and v.Name =="Shield" then
					v.GripPos         = Vector3.new(0,10000,0)
					v.Handle.Massless = true
					v.Parent          = Char
					v:Activate()
					v.ShieldPotion:Destroy()
					v:Destroy()
				end
			end
			repeat
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Sword") then
					game.Players.LocalPlayer.Backpack:FindFirstChild("Sword").Parent = game.Players.LocalPlayer.Character
				end
				game.Players.LocalPlayer.Character:Activate()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(admin).Character.HumanoidRootPart.CFrame * CFrame.new(0,0,6)
				wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(admin).Character.HumanoidRootPart.CFrame * CFrame.new(0,6,0)
				wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(admin).Character.HumanoidRootPart.CFrame * CFrame.new(6,0,0)
			until object.Message == prefix .. "noprotect"
		end

		if object.Message == prefix.. "unff" then
			for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
				if v:IsA("ForceField") then
					v:Destroy()
				end
			end
		end

	end)
end

addadmin("yenilmez_xxgg")