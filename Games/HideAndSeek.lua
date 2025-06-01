local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()
local HttpService = game:GetService("HttpService")
local annen = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Important/owners.json"))
local Notificatin = Hawk:Notification()
Notificatin:CreateNotification("10179402650","Game Detected!","Hawk HUB","It seems like Hawk found a script for a game you are playing right now. Would you want to load it?","Yes","No",function()

local Window = Hawk:Window("Hawk HUB | Hide And Seek")
local Tab1 = Window:Tab("Player")
	
Tab1:Button("AutoFarm Coins",function()
for i, v in pairs(game:GetService("Workspace").GameObjects:GetChildren()) do
	if v:IsA("Part") then
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
	end
end
	end)
	
	Tab1:Button("AutoFarm Coins (With Teleporting)",function()
		for i, v in pairs(game:GetService("Workspace").GameObjects:GetChildren()) do
			if v:IsA("Part") then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
			end
		end
	end)
	
	Tab1:Button("AutoFarm (For The It)",function()
		for i, v in pairs(game:GetService("Players"):GetChildren()) do
			if v:IsA("Player") and v ~= game.Players.LocalPlayer then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
			end
		end
	end)
	
	Tab1:Slider("Speed",16,200,function(speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end)
	Tab1:Slider("Jump",50,200,function(jump)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
	end)
	Tab1:Slider("Gravity",50,200,function(gravity)
		workspace.Gravity = gravity
	end)

	speeds = 1
	Tab1:Toggle("Fly (Credits To me_ozoneYT)",function(qwqe)
		local speaker = game:GetService("Players").LocalPlayer
		local chr = game.Players.LocalPlayer.Character
		local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
		nowe = ""
		if qwqe == true then
			nowe = false
		elseif qwqe == false then
			nowe = true
		end

		if nowe == false then
			nowe = true



			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			local Char = game.Players.LocalPlayer.Character
			local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

			for i,v in next, Hum:GetPlayingAnimationTracks() do
				v:AdjustSpeed(0)
			end
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
			speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		elseif nowe == true then
			nowe = false
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
			speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
			speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)

		end




		if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



			local plr = game.Players.LocalPlayer
			local torso = plr.Character.Torso
			local flying = true
			local deb = true
			local ctrl = {f = 0, b = 0, l = 0, r = 0}
			local lastctrl = {f = 0, b = 0, l = 0, r = 0}
			local maxspeed = 50
			local speed = 0


			local bg = Instance.new("BodyGyro", torso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = torso.CFrame
			local bv = Instance.new("BodyVelocity", torso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			if nowe == true then
				plr.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				game:GetService("RunService").RenderStepped:Wait()

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
					bv.velocity = Vector3.new(0,0,0)
				end
				--	game.Players.LocalPlayer.Character.Animate.Disabled = true
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			end
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false
		else
			local plr = game.Players.LocalPlayer
			local UpperTorso = plr.Character.UpperTorso
			local flying = true
			local deb = true
			local ctrl = {f = 0, b = 0, l = 0, r = 0}
			local lastctrl = {f = 0, b = 0, l = 0, r = 0}
			local maxspeed = 50
			local speed = 0


			local bg = Instance.new("BodyGyro", UpperTorso)
			bg.P = 9e4
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			bg.cframe = UpperTorso.CFrame
			local bv = Instance.new("BodyVelocity", UpperTorso)
			bv.velocity = Vector3.new(0,0.1,0)
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
			if nowe == true then
				plr.Character.Humanoid.PlatformStand = true
			end
			while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
				wait()

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
					bv.velocity = Vector3.new(0,0,0)
				end

				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
			end
			ctrl = {f = 0, b = 0, l = 0, r = 0}
			lastctrl = {f = 0, b = 0, l = 0, r = 0}
			speed = 0
			bg:Destroy()
			bv:Destroy()
			plr.Character.Humanoid.PlatformStand = false
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			tpwalking = false
		end



	end)

	Tab1:Slider("Fly Speed",1,20,function(annen)
		speeds = annen
	end)


	Tab1:TextBox("Players Hitbox","Number",function(numbir)
		_G.HeadSize = numbir
		_G.Disabled = true

		game:GetService('RunService').RenderStepped:connect(function()
			if _G.Disabled then
				for i,v in next, game:GetService('Players'):GetPlayers() do
					if v.Name ~= game:GetService('Players').LocalPlayer.Name then
						pcall(function()
							v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
							v.Character.HumanoidRootPart.Transparency = 0.7
							v.Character.HumanoidRootPart.Material = "Neon"
							v.Character.HumanoidRootPart.CanCollide = false
						end)
					end
				end
			end
		end)
	end)

	Tab1:ColorPicker("Players Hitbox Color",Color3.fromRGB(39, 39, 39),function(xd)
		for i,v in next, game:GetService('Players'):GetPlayers() do
			if v.Name ~= game:GetService('Players').LocalPlayer.Name then
				pcall(function()
					v.Character.HumanoidRootPart.Color = xd
				end)
			end
		end
	end)
	
	_G.infinjump = false
	Tab1:Toggle("infJump",  function(value)
		if value == true then
			_G.infinjump = true
			local Player = game:GetService("Players").LocalPlayer
			local Mouse = Player:GetMouse()
			Mouse.KeyDown:connect(function(k)
				if _G.infinjump then
					if k:byte() == 32 then
						Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
						Humanoid:ChangeState("Jumping")
						wait()
						Humanoid:ChangeState("Seated")
					end
				end

			end)
		end
		if value == false then
			if _G.infinjump == true then
				--        k = k:lower()
				_G.infinjump = false
			else

			end
		end
	end)
	
	Tab1:Line()
	
	Tab1:Button("Teleport To Safe Area",function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(273, 159, -34)
	end)
	
	Tab1:Button("Teleport Spawn Area",function()
		for i, v in pairs(workspace:GetDescendants()) do
			if v.Name == "ItSpawn" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
			end
		end
	end)

	local Credits = Window:Tab("Credits")
	for i, v in pairs(annen.owners) do
		Credits:Button(i,function()
			setclipboard(v)
		end)
	end
	Credits:Line()
	Credits:KeyBind("UIKeybind","E",function()
		Hawk:ToggleUI()
	end)
	
	
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


end)