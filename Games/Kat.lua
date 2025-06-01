local HttpService = game:GetService("HttpService")
local annen = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Important/owners.json"))
local Notificatin = Hawk:Notification()
Notificatin:Notification("Hawk Loaded!","Have Fun!","Done",3)
Notificatin:CreateNotification("10179402650","Game Detected!","Hawk HUB","It seems like Hawk found a script for a game you are playing right now. Would you want to load it?","Yes","No",function()

	local Window = Hawk:Window("Hawk HUB | Knife Ability Test")
	local Tab1 = Window:Tab("Main")

	Tab1:Button("Silent Aim",function()
		getgenv().silentaim_settings = {
			fov = 150,
			hitbox = "Head",
			fovcircle = true,
		}

		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")

		local Player = Players.LocalPlayer
		local Mouse = Player:GetMouse()
		local CurrentCamera = workspace.CurrentCamera

		local function GetClosest(Fov)
			local Target, Closest = nil, Fov or math.huge

			for i,v in pairs(Players:GetPlayers()) do
				if (v.Character and v ~= Player and v.Character:FindFirstChild(getgenv().silentaim_settings.hitbox)) then
					local Position, OnScreen = CurrentCamera:WorldToScreenPoint(v.Character[getgenv().silentaim_settings.hitbox].Position)
					local Distance = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude

					if (Distance < Closest and OnScreen) then
						Closest = Distance
						Target = v
					end
				end
			end

			return Target
		end

		local Target
		local CircleInline = Drawing.new("Circle")
		local CircleOutline = Drawing.new("Circle")
		RunService.Stepped:Connect(function()
			CircleInline.Radius = getgenv().silentaim_settings.fov
			CircleInline.Thickness = 2
			CircleInline.Position = Vector2.new(Mouse.X, Mouse.Y + 36)
			CircleInline.Transparency = 1
			CircleInline.Color = Color3.fromRGB(107, 50, 124)
			CircleInline.Visible = getgenv().silentaim_settings.fovcircle
			CircleInline.ZIndex = 2

			CircleOutline.Radius = getgenv().silentaim_settings.fov
			CircleOutline.Thickness = 4
			CircleOutline.Position = Vector2.new(Mouse.X, Mouse.Y + 36)
			CircleOutline.Transparency = 0
			CircleOutline.Color = Color3.new()
			CircleOutline.Visible = getgenv().silentaim_settings.fovcircle
			CircleOutline.ZIndex = 1

			Target = GetClosest(getgenv().silentaim_settings.fov)
		end)

		local Old; Old = hookmetamethod(game, "__namecall", function(Self, ...)
			local Args = {...}

			if (not checkcaller() and getnamecallmethod() == "FindPartOnRayWithIgnoreList") then
				if (table.find(Args[2], workspace.WorldIgnore.Ignore) and Target and Target.Character) then
					local Origin = Args[1].Origin

					Args[1] = Ray.new(Origin, Target.Character[getgenv().silentaim_settings.hitbox].Position - Origin)
				end
			end

			return Old(Self, unpack(Args))
		end)
	end)
	hookfunction(os.time, function() return math.huge end)
	local Noclip = nil
	local Clip = nil

	function noclip()
		Clip = false
		local function Nocl()
			if Clip == false and game.Players.LocalPlayer.Character ~= nil then
				for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
						v.CanCollide = false
					end
				end
			end
			wait(0.21) -- basic optimization
		end
		Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
	end
	
	Tab1:Button("Anti Afk",function()
		assert(firesignal, "Your exploit does not support firesignal.")
		local UserInputService = game:GetService("UserInputService")
		local RunService = game:GetService("RunService")
		UserInputService.WindowFocusReleased:Connect(function()
			RunService.Stepped:Wait()
			pcall(firesignal, UserInputService.WindowFocused)
		end)
	end)

	local Tab1 = Window:Tab("Player")

	Tab1:Button("Body Only Invis",function()
		character = game:GetService("Players").LocalPlayer.Character

		character.Head.Transparency = 1

		--R6 Rigs
		torso = character:FindFirstChild("Torso")
		if torso then torso.Transparency = 1 end

		leftArm = character:FindFirstChild("Left Arm")
		if leftArm then leftArm.Transparency = 1 end
		rightArm = character:FindFirstChild("Right Arm")
		if rightArm then rightArm.Transparency = 1 end

		leftLeg = character:FindFirstChild("Left Leg")
		if leftLeg then leftLeg.Transparency = 1 end
		rightLeg = character:FindFirstChild("Right Leg")
		if rightLeg then rightLeg.Transparency = 1 end

		--R15 Rigs
		upperTorso = character:FindFirstChild("UpperTorso")
		if upperTorso then upperTorso.Transparency = 1 end
		lowerTorso = character:FindFirstChild("LowerTorso")
		if lowerTorso then lowerTorso.Transparency = 1 end

		leftUpperArm = character:FindFirstChild("LeftUpperArm")
		if leftUpperArm then leftUpperArm.Transparency = 1 end
		leftLowerArm = character:FindFirstChild("LeftLowerArm")
		if leftLowerArm then leftLowerArm.Transparency = 1 end
		leftFoot = character:FindFirstChild("LeftFoot")
		if leftFoot then leftFoot.Transparency = 1 end
		rightUpperArm = character:FindFirstChild("RightUpperArm")
		if rightUpperArm then rightUpperArm.Transparency = 1 end
		rightLowerArm = character:FindFirstChild("RightLowerArm")
		if rightLowerArm then rightLowerArm.Transparency = 1 end
		rightFoot = character:FindFirstChild("RightFoot")
		if rightFoot then rightFoot.Transparency = 1 end

		leftUpperLeg = character:FindFirstChild("LeftUpperLeg")
		if leftUpperLeg then leftUpperLeg.Transparency = 1 end
		leftLowerLeg = character:FindFirstChild("LeftLowerLeg")
		if leftLowerLeg then leftLowerLeg.Transparency = 1 end
		leftFoot = character:FindFirstChild("LeftFoot")
		if leftFoot then leftFoot.Transparency = 1 end
		rightUpperLeg = character:FindFirstChild("RightUpperLeg")
		if rightUpperLeg then rightUpperLeg.Transparency = 1 end
		rightLowerLeg = character:FindFirstChild("RightLowerLeg")
		if rightLowerLeg then rightLowerLeg.Transparency = 1 end
		rightFoot = character:FindFirstChild("RightFoot")
		if rightFoot then rightFoot.Transparency = 1 end
	end)
	Tab1:Button("Inf Jump",function()
		local InfiniteJumpEnabled = true
		game:GetService("UserInputService").JumpRequest:connect(function()
			if InfiniteJumpEnabled then
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
			end
		end)
	end)
	Tab1:Button("Sprint Gui",function()
		-- Gui to Lua
		-- Version: 3.2

		-- Instances:

		local ScreenGui = Instance.new("ScreenGui")
		local TextButton = Instance.new("TextButton")
		local UIGradient = Instance.new("UIGradient")

		--Properties:

		ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		ScreenGui.ResetOnSpawn = false

		TextButton.Parent = ScreenGui
		TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
		TextButton.BackgroundColor3 = Color3.fromRGB(252, 1, 7)
		TextButton.BorderColor3 = Color3.fromRGB(128, 0, 2)
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(0.172959805, 0, 0.920748651, 0)
		TextButton.Size = UDim2.new(0.315963358, 0, 0.0860544071, 0)
		TextButton.Font = Enum.Font.GothamBold
		TextButton.Text = "Sprint: Off"
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextScaled = true
		TextButton.TextSize = 14.000
		TextButton.TextWrapped = true

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(192, 191, 197)), ColorSequenceKeypoint.new(0.87, Color3.fromRGB(255, 254, 254)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
		UIGradient.Rotation = -90
		UIGradient.Parent = TextButton

		-- Scripts:

		local function VCVYHSS_fake_script() -- TextButton.LocalScript 
			local script = Instance.new('LocalScript', TextButton)

			--//Services
			local Players = game:GetService("Players")
			local TweenService = game:GetService("TweenService")

			--//Variables
			local LocalPlayer = Players.LocalPlayer
			local CurrentCamera = workspace.CurrentCamera
			local Button = script.Parent

			--//Controls
			local debounce = false
			local isSprinting = false
			local sprintingSpeed = 30

			--//Functions
			Button.MouseButton1Click:Connect(function()
				if debounce then
					return
				end

				if not LocalPlayer.Character then
					return
				end

				local Humanoid = LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")

				if not Humanoid then
					return
				end

				debounce = true
				isSprinting = not isSprinting

				if isSprinting then		
					Button.Text = "Sprint: On"

					local WalkSpeedTween = TweenService:Create(Humanoid, TweenInfo.new(1, Enum.EasingStyle.Quint), {WalkSpeed = sprintingSpeed})
					WalkSpeedTween:Play()

					local BackgroundTween = TweenService:Create(Button, TweenInfo.new(1, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.new(0.419608, 1, 0)})
					BackgroundTween:Play()

					local BorderTween = TweenService:Create(Button, TweenInfo.new(1, Enum.EasingStyle.Quint), {BorderColor3 = Color3.new(0.141176, 0.54902, 0)})
					BorderTween:Play()

					local FOVTween = TweenService:Create(CurrentCamera, TweenInfo.new(1, Enum.EasingStyle.Quint), {FieldOfView = 90})
					FOVTween:Play()
					FOVTween.Completed:Wait()
				else
					Button.Text = "Sprint: Off"

					local WalkSpeedTween = TweenService:Create(Humanoid, TweenInfo.new(1, Enum.EasingStyle.Quint), {WalkSpeed = 16})
					WalkSpeedTween:Play()

					local BackgroundTween = TweenService:Create(Button, TweenInfo.new(1, Enum.EasingStyle.Quint), {BackgroundColor3 = Color3.new(0.986252, 0.00712596, 0.0274357)})
					BackgroundTween:Play()

					local BorderTween = TweenService:Create(Button, TweenInfo.new(1, Enum.EasingStyle.Quint), {BorderColor3 = Color3.new(0.501961, 0, 0.00784314)})
					BorderTween:Play()

					local FOVTween = TweenService:Create(CurrentCamera, TweenInfo.new(1, Enum.EasingStyle.Quint), {FieldOfView = 70})
					FOVTween:Play()
					FOVTween.Completed:Wait()
				end

				debounce = false
			end)
		end
		coroutine.wrap(VCVYHSS_fake_script)()
	end)
	
	Tab1:Toggle("Shitty Autofarm", function(val)
		while val == true do
			wait(0.3)
			for i, v in pairs(game:GetService("Players"):GetPlayers()) do
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Knife") then
						game:GetService("Players").LocalPlayer.Backpack.Knife.Parent = game:GetService("Players").LocalPlayer.Character
					end
					v.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,1)

					game:GetService("Players").LocalPlayer.Character.Knife:Activate()
				end
		end
	end)
	
	local Tab1 = Window:Tab("Teleport")
	Tab1:Button("Ctrl+M1",function()
		if _G.WRDClickTeleport == nil then
			_G.WRDClickTeleport = true

			local player = game:GetService("Players").LocalPlayer
			local UserInputService = game:GetService("UserInputService")
			--Wanted to avoid using mouse instance, but UIS^ is very tedious to get mouse hit position
			local mouse = player:GetMouse()

			--Waits until the player's mouse is found
			repeat wait() until mouse

			UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					--Only click teleport if the toggle is enabled
					if _G.WRDClickTeleport and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
						player.Character:MoveTo(Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z)) 
					end
				end
			end)
			--Just toggle instead of re-executing the script
		else
			_G.WRDClickTeleport = not _G.WRDClickTeleport
			--Notify
			if _G.WRDClickTeleport then
				game.StarterGui:SetCore("SendNotification", {Title="31"; Text="Click teleport enabled"; Duration=5;})
			else
				game.StarterGui:SetCore("SendNotification", {Title="31"; Text="Click teleport disabled"; Duration=5;})
			end
		end
	end)
	Tab1:Button("Lobby",function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19.6340942, 11.9729862, 1.65594494, 0.526588798, 0.573542655, 0.627497435, -0.368693173, 0.81917572, -0.439336419, -0.766008854, -4.38094139e-06, 0.642830014)
	end)
	local Tab1 = Window:Tab("ESP")
	Tab1:Button("Body ESP",function()
		local Settings = {
			['Material'] = Enum.Material.Neon, -- Material
			['Color'] = Color3.fromRGB(0,255,255), -- Color
			['Transparency'] = 0.7 -- 0 to 1 Transparency
		}

		local ScreenGui = Instance.new('ScreenGui', game.CoreGui) -- Create screengui
		ScreenGui.IgnoreGuiInset = true

		local ViewportFrame = Instance.new('ViewportFrame', ScreenGui) -- Create viewport and define properties
		ViewportFrame.CurrentCamera = workspace.CurrentCamera
		ViewportFrame.Size = UDim2.new(1,0,1,0)
		ViewportFrame.BackgroundTransparency = 1
		ViewportFrame.ImageTransparency = Settings.Transparency

		local Chasms = {} -- Array for storing parts

		function generateChasm(player) -- functions that generates chasms for the player specififed
			local Character = workspace:FindFirstChild(player.Name)

			if Character then
				for _,Part in pairs(Character:GetChildren()) do
					if Part:IsA('Part') or Part:IsA('MeshPart') then
						local Chasm = Part:Clone()

						for _,Child in pairs(Chasm:GetChildren()) do
							if Child:IsA('Decal') then
								Child:Destroy()
							end
						end

						Chasm.Parent = ViewportFrame
						Chasm.Material = Settings.Material
						Chasm.Color = Settings.Color
						Chasm.Anchored = true

						table.insert(Chasms, Chasm)
					end
				end
			end
		end

		function clearChasms() -- remove all chasms
			for _,Chasm in pairs(Chasms) do
				Chasm:Destroy()
			end

			Chasms = {}
		end

		while game:GetService('RunService').RenderStepped:Wait() do -- loop this process
			clearChasms()

			for _,Player in pairs(game:GetService('Players'):GetPlayers()) do
				if Player ~= game:GetService('Players').LocalPlayer then
					generateChasm(Player)
				end
			end
		end
	end)
	Tab1:Button("Box ESP",function()
		local Player = game:GetService("Players").LocalPlayer
		local Camera = game:GetService("Workspace").CurrentCamera
		local Mouse = Player:GetMouse()

		local function Dist(pointA, pointB) -- magnitude errors for some reason : (
			return math.sqrt(math.pow(pointA.X - pointB.X, 2) + math.pow(pointA.Y - pointB.Y, 2))
		end

		local function GetClosest(points, dest)
			local min = math.huge
			local closest = nil
			for _,v in pairs(points) do
				local dist = Dist(v, dest)
				if dist < min then
					min = dist
					closest = v
				end
			end
			return closest
		end

		local function DrawESP(plr)
			local Box = Drawing.new("Quad")
			Box.Visible = false
			Box.PointA = Vector2.new(0, 0)
			Box.PointB = Vector2.new(0, 0)
			Box.PointC = Vector2.new(0, 0)
			Box.PointD = Vector2.new(0, 0)
			Box.Color = Color3.fromRGB(107, 50, 124)
			Box.Thickness = 2
			Box.Transparency = 1

			local function Update()
				local c
				c = game:GetService("RunService").RenderStepped:Connect(function()
					if plr.Character ~= nil and plr.Character:FindFirstChildOfClass("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 and plr.Character:FindFirstChild("Head") ~= nil then
						local pos, vis = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
						if vis then
							local points = {}
							local c = 0
							for _,v in pairs(plr.Character:GetChildren()) do
								if v:IsA("BasePart") then
									c = c + 1
									local p = Camera:WorldToViewportPoint(v.Position)
									if v.Name == "HumanoidRootPart" then
										p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(0, 0, -v.Size.Z)).p)
									elseif v.Name == "Head" then
										p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(0, v.Size.Y/2, v.Size.Z/1.25)).p)
									elseif string.match(v.Name, "Left") then
										p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(-v.Size.X/2, 0, 0)).p)
									elseif string.match(v.Name, "Right") then
										p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(v.Size.X/2, 0, 0)).p)
									end
									points[c] = p
								end
							end
							local Left = GetClosest(points, Vector2.new(0, pos.Y))
							local Right = GetClosest(points, Vector2.new(Camera.ViewportSize.X, pos.Y))
							local Top = GetClosest(points, Vector2.new(pos.X, 0))
							local Bottom = GetClosest(points, Vector2.new(pos.X, Camera.ViewportSize.Y))

							if Left ~= nil and Right ~= nil and Top ~= nil and Bottom ~= nil then
								Box.PointA = Vector2.new(Right.X, Top.Y)
								Box.PointB = Vector2.new(Left.X, Top.Y)
								Box.PointC = Vector2.new(Left.X, Bottom.Y)
								Box.PointD = Vector2.new(Right.X, Bottom.Y)

								Box.Visible = true
							else
								Box.Visible = false
							end
						else
							Box.Visible = false
						end
					else
						Box.Visible = false
						if game.Players:FindFirstChild(plr.Name) == nil then
							c:Disconnect()
						end
					end
				end)
			end
			coroutine.wrap(Update)()
		end

		for _,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Name ~= Player.Name then
				DrawESP(v)
			end
		end

		game:GetService("Players").PlayerAdded:Connect(function(v)
			DrawESP(v)
		end)
	end)

	local Tab1 = Window:Tab("Adjustments")
	Tab1:Slider("Speed",16,100,function(speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end)
	Tab1:Slider("Jump",16,100,function(jumbo)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumbo
	end)
	Tab1:Button("F Toggle Gravity",function()
		if _G.WRDGravitySwitchStarted == nil then
			_G.WRDGravitySwitchStarted = true

			--Gets the player's mouse
			local mouse = game:GetService("Players").LocalPlayer:GetMouse()

			--Waits until the player's mouse is found
			repeat wait() until mouse

			--Toggles
			mouse.KeyDown:connect(function(key)
				if key:lower() == "e" then
					if workspace.Gravity > 0 then
						--Turns off gravity
						workspace.Gravity = 0
						game.StarterGui:SetCore("SendNotification", {Title="Zero Gravity"; Text="WeAreDevs.net"; Duration=1;})
					else 
						--Reset to default
						workspace.Gravity = 196.2
						game.StarterGui:SetCore("SendNotification", {Title="Normal Gravity"; Text="WeAreDevs.net"; Duration=1;})
					end
				end
			end)
		end


	end)


local CreditsTab = Window:Tab("Credits")
	local Colors = Window:Tab("Colors")
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


	CreditsTab:Label("Owners:")
	for i, v in pairs(annen.owners) do
		CreditsTab:Button(i,function()
			setclipboard(v)
		end)
	end

	CreditsTab:Line()
	CreditsTab:KeyBind("UI Keybind:", "E",function()
		Hawk:ToggleUI()
	end)
end)
