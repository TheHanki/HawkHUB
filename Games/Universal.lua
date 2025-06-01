local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()

local HttpService = game:GetService("HttpService")
local annen = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Important/owners.json"))
local Notificatin = Hawk:Notification()

	local Window = Hawk:Window("Hawk HUB | Universal")
	local Tab1 = Window:Tab("Main")
	Tab1:Button("Ctrl+Click Teleport",function()
		game.StarterGui:SetCore("SendNotification", {Title="Credits to WeAreDevs"; Text="Click teleport enabled"; Duration=5;})
		local UIS = game:GetService("UserInputService")

		local Player = game.Players.LocalPlayer
		local Mouse = Player:GetMouse()


		function GetCharacter()
			return game.Players.LocalPlayer.Character
		end

		function Teleport(pos)
			local Char = GetCharacter()
			if Char then
				Char:MoveTo(pos)
			end
		end


		UIS.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
				Teleport(Mouse.Hit.p)
			end
		end)
	end)
	
	Tab1:Button("Fly",function()
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
Tab1:Button("Infinite Yield",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
	
	Tab1:Button("CFrame Speed Method",function()
		Speed = 1
		You = game.Players.LocalPlayer.Name
		UIS = game:GetService("UserInputService")

		while true do
			if UIS:IsKeyDown(Enum.KeyCode.W) then
				game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(0,0,-Speed)
			end;
			if UIS:IsKeyDown(Enum.KeyCode.A) then
				game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(-Speed,0,0)
			end;
			if UIS:IsKeyDown(Enum.KeyCode.S) then
				game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(0,0,Speed)
			end;
			if UIS:IsKeyDown(Enum.KeyCode.D) then
				game:GetService("Workspace")[You].HumanoidRootPart.CFrame = game:GetService("Workspace")[You].HumanoidRootPart.CFrame * CFrame.new(Speed,0,0)
			end;
			wait()
		end
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

			for _,Player in pairs(game:GetService('Players'):GetPlayers()) do
				if Player ~= game:GetService('Players').LocalPlayer then
					generateChasm(Player)
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
	Tab1:Slider("Jump",16,100,function(speed)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = speed
	end)
	
	Tab1:Button("F Toggle Gravity",function()
		if _G.WRDGravitySwitchStarted == nil then
			_G.WRDGravitySwitchStarted = true

			local mouse = game:GetService("Players").LocalPlayer:GetMouse()

			repeat wait() until mouse

			mouse.KeyDown:connect(function(key)
				if key:lower() == "f" then
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

		game.StarterGui:SetCore("SendNotification", {Title="WeAreDevs.net"; Text="The Gravity Switch exploit is ready!\nPress \"f\" to toggle"; Duration=5;})
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
