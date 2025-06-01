local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()
local HttpService = game:GetService("HttpService")
local annen = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Important/owners.json"))
local Notificatin = Hawk:Notification()
Notificatin:Notification("Hawk Loaded!","Have Fun!","Done",3)
Notificatin:CreateNotification("10179402650","Game Detected!","Hawk HUB","It seems like Hawk found a script for a game you are playing right now. Would you want to load it?","Yes","No",function()

local Window = Hawk:Window("Hawk HUB | Kick Off")
Hawk:Bildir("Hawk HUB","Kick Off","Load",function()
end)	
local Main = Window:Tab("Main")
local CreditsTab = Window:Tab("Credits")
Main:Button("Reset Your Character",function()
	game.Workspace[game.Players.LocalPlayer.Name].PreventRespawn:Destroy()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

Main:Button("Wear Your Normal Clothes",function()
	if game.Players.LocalPlayer.Character:FindFirstChild("USAShirt") then
		game.Workspace[game.Players.LocalPlayer.Name].USAShirt:Destroy()
		game.Workspace[game.Players.LocalPlayer.Name].USAPants:Destroy()
	elseif game.Players.LocalPlayer.Character:FindFirstChild("BrazilShirt") then
		game.Workspace[game.Players.LocalPlayer.Name].BrazilShirt:Destroy()
		game.Workspace[game.Players.LocalPlayer.Name].BrazilPants:Destroy()
	end
end)

Main:Button("Ball Troll",function()
	local A_1 = "Kick"
	local A_2 = "Trickshot"
	local A_3 = game:GetService("Workspace").SoccerBall
	local A_4 = 58.777630615234
	local A_5 = Vector3.new(9.64690495, 82.8000031, -70.1397018)
	local A_6 = Vector3.new(25.7804337, -56.2313538, -428.990417)
	local A_7 = Vector3.new(34.4858704, -89.2313538, -492.285004)
	local Event = game:GetService("ReplicatedStorage").MasterKey
	Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6, A_7)
end)

Main:Button("Goal",function()
	workspace.MapHolder:GetChildren()[1].BlueGoal.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	workspace.MapHolder:GetChildren()[1].RedGoal.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	workspace.SoccerBall.Position = game.Players.LocalPlayer.Character["Right Leg"].Position
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)

Main:Button("Fly",function()
		repeat wait() 
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
		local mouse = game.Players.LocalPlayer:GetMouse() 
		repeat wait() until mouse
		local plr = game.Players.LocalPlayer 
		local torso = plr.Character.Head 
		local flying = false
		local deb = true 
		local ctrl = {f = 0, b = 0, l = 0, r = 0} 
		local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
		local maxspeed = 400 
		local speed = 5000 

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

_G.balltp = false
Main:Toggle("Teleport Ball To You",function(baban)
	if baban == true then
		_G.balltp = true

		if _G.balltp == true then
			while true do
				game.Workspace.SoccerBall.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				wait()
				if _G.balltp == false then
					break
				end
			end

		end

	end

	if baban == false then
		_G.balltp = false
	end
end)

_G.tpball = false
Main:Toggle("Teleport To Ball",function(annen)
	if annen == true then
		_G.tpball = true

		if _G.tpball == true then
			while true do
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.SoccerBall.CFrame
				wait()
				if _G.tpball == false then
					break
				end
			end

		end

	end

	if annen == false then
		_G.tpball = false
	end
end)

_G.BallTroll = false
Main:Toggle("Ball Troll2",function(bebe)
	if bebe == true then
		_G.BallTroll = true

		if _G.BallTroll == true then
			repeat
				local args = {
					[1] = "Kick",
					[2] = "Trickshot",
					[3] = workspace.SoccerBall,
					[4] = 10.632585906982,
					[5] = Vector3.new(75.5329819, -119.800125, -389.217316, -0.00625753775, -4.63080774e-08, 0.99998045, -8.47381969e-08, 1, 4.57787195e-08, -0.99998045, -8.44500789e-08, -0.00625753775),
					[6] = Vector3.new(31.3175526, -119.800125, -348.333862, 0.999602675, 1.41720546e-08, -0.0281873271, -1.51278172e-08, 1, -3.36942705e-08, 0.0281873271, 3.41072948e-08, 0.999602675),
					[7] = Vector3.new(-24.8160458, -119.800125, -387.529083, -0.00149729417, 7.81623015e-08, -0.999998868, -5.82988342e-08, 1, 7.8249677e-08, 0.999998868, 5.84159316e-08, -0.00149729417)
				}

				game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args))
				wait()
				local args2 = {
					[1] = "Kick",
					[2] = "Trickshot",
					[3] = workspace.SoccerBall,
					[4] = 10.632585906982,
					[5] = Vector3.new(47.0877647, -83.8029175, -391.157379, -0.298851877, -0.810123503, -0.504368424, 3.3400045e-09, 0.528522134, -0.848919511, 0.95429951, -0.25370118, -0.15794982),
					[6] = Vector3.new(47.0877647, -83.8029175, -391.157379, -0.298851877, -0.810123503, -0.504368424, 3.3400045e-09, 0.528522134, -0.848919511, 0.95429951, -0.25370118, -0.15794982),
					[7] = Vector3.new(47.0877647, -83.8029175, -391.157379, -0.298851877, -0.810123503, -0.504368424, 3.3400045e-09, 0.528522134, -0.848919511, 0.95429951, -0.25370118, -0.15794982)
				}

				game:GetService("ReplicatedStorage").MasterKey:FireServer(unpack(args2))
				wait()
			until _G.BallTroll == false
		end

		if bebe == false then
			_G.BallTroll = false
		end

	end

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