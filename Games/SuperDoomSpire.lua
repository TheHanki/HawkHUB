local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()

local HttpService = game:GetService("HttpService")
local annen = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Important/owners.json"))
local Notificatin = Hawk:Notification()
Notificatin:CreateNotification("10179402650","Game Detected!","Hawk HUB","It seems like Hawk found a script for a game you are playing right now. Would you want to load it?","Yes","No",function()

	Notificatin:Notification("Hawk Loaded!","Have Fun!","Done",1)

	local Window = Hawk:Window("Hawk HUB | Super Doomspire")

	local Tab1 = Window:Tab("Player")
	local Tab2 = Window:Tab("Scripts")
	local Tab3 = Window:Tab("Visuals")
	local Tab4 = Window:Tab("Settings")
	
	Tab1:Label("Player Settings")
	Tab2:Label("Super Doomspire")
	Tab3:Label("Visuals")
	Tab4:Label("Settings")
	

	function getRoot(char)
		local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
		return rootPart
	end

	--Bypass
	if game.Players.LocalPlayer.PlayerScripts:FindFirstChild("ClientMaster")==nil then
		print("Bypass Zaten Aktif")
	else
		game.Players.LocalPlayer.PlayerScripts.ClientMaster:Destroy()
	end

	if game:GetService("StarterPlayer").StarterPlayerScripts:FindFirstChild("ClientMaster")==nil then
		print("Auto Bypass Zaten Aktif")
	else
		game:GetService("StarterPlayer").StarterPlayerScripts.ClientMaster:Destroy()
	end
	hookfunction(game.Players.LocalPlayer.Kick, function() return nil end)

	Tab1:Slider("Speed", 0, 16, 150, function(speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end)
	Tab1:Slider("Jump", 0, 50, 150, function(jump)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
	end)

	Tab2:Button("Infinite Rocket (Ban Risk!)", function()
		hookfunction(game.Players.LocalPlayer.Kick, function() return nil end)
		wait(0.2)
		hookfunction(time, function() return math.huge end)
	end)

	Tab2:Button("Get Daily Chests", function()
		local playerhead = game.Players.LocalPlayer.Character.Head

		firetouchinterest(playerhead, game:GetService("Workspace").Chests.DailyChest.Hitbox, 0)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests.DailyChest.Hitbox, 1)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[2].Hitbox, 0)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[2].Hitbox, 1)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[3].Hitbox, 0)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[3].Hitbox, 1)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[4].Hitbox, 0)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[4].Hitbox, 1)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[5].Hitbox, 0)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[5].Hitbox, 1)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[6].Hitbox, 0)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[6].Hitbox, 1)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[7].Hitbox, 0)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[7].Hitbox, 1)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[8].Hitbox, 0)
		wait(0.01)
		firetouchinterest(playerhead, game:GetService("Workspace").Chests:GetChildren()[8].Hitbox, 1)
	end)

	Tab2:Toggle("Platform", function(value)
		if value == true then
			local baseplate    = Instance.new("Part")
			baseplate.Parent   = workspace
			baseplate.Name = "AntiFallPart"
			baseplate.Transparency = 0.5
			baseplate.Size     = Vector3.new(1500,1,1500)
			baseplate.Anchored = true
			baseplate.Position = 237, 0, 240
			baseplate.Material = Enum.Material.SmoothPlastic
		end
		if value == false then
			game.Workspace["AntiFallPart"]:Destroy()
		end
	end)

	_G.infinjump = false
	Tab2:Toggle("InfJump", function(infjump)
		if infjump == true then
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
		if infjump == false then
			if _G.infinjump == true then
				_G.infinjump = false
			else

			end
		end
	end)

	_G.autokillplayers = false
	Tab2:Toggle("Auto Kill Players", function(autokill)
		if autokill == true then
			_G.autokillplayers = true
			local players = game:GetService("Players")
			local playerteam = game.Players.LocalPlayer.Team.Name

			for _, player in pairs(players:GetPlayers()) do
				if player.Name ~= game.Players.LocalPlayer.Name and tonumber(game.Players[player.Name].Character.Humanoid.Health) > 0 and tonumber(game.Players[player.Name].Character.Humanoid.Health) ~= 0 and player.Team.Name ~= game.Players.LocalPlayer.Team.Name and game.Players.LocalPlayer.Team.Name ~= "Spectators" and player.Team.Name ~= "Spectators" and game.Players[player.Name].Character:FindFirstChild("ForceField")==nil then
					while tonumber(game.Players[player.Name].Character.Humanoid.Health) ~= 0 do
						if autokill then
							local tpX,tpY,tpZ = tonumber(game.Players[player.Name].Character.HumanoidRootPart.Position.X),tonumber(game.Players[player.Name].Character.HumanoidRootPart.Position.Y),tonumber(game.Players[player.Name].Character.HumanoidRootPart.Position.Z)
							local char = game.Players.LocalPlayer.Character
							if char and getRoot(char) then
								getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
							end
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Launcher")==nil then
								game:GetService("Players")[game.Players.LocalPlayer.Name].Backpack["Rocket Launcher"].Parent = game.Players.LocalPlayer.Character
							else
								local vu = game:GetService("VirtualUser")
								vu:ClickButton1(Vector2.new(500,0), game.Workspace.CurrentCamera.CFrame)
							end
						end
						wait(0.1)
					end
				end
			end
		end
		if autokill == false then
			if _G.autokillplayers == true then
				_G.autokillplayers = false
			else

			end
		end
	end)

	Tab3:Button("Tower 1", function()
		local tpX,tpY,tpZ = tonumber(-128),tonumber(169),tonumber(-2)
		local char = game.Players.LocalPlayer.Character
		if char and getRoot(char) then
			getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
		end
	end)

	Tab3:Button("Tower 2", function()
		local tpX,tpY,tpZ = tonumber(0),tonumber(169),tonumber(-130)
		local char = game.Players.LocalPlayer.Character
		if char and getRoot(char) then
			getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
		end
	end)

	Tab3:Button("Tower 3", function()
		local tpX,tpY,tpZ = tonumber(130),tonumber(169),tonumber(-4)
		local char = game.Players.LocalPlayer.Character
		if char and getRoot(char) then
			getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
		end
	end)

	Tab3:Button("Tower 4", function()
		local tpX,tpY,tpZ = tonumber(-1),tonumber(169),tonumber(127)
		local char = game.Players.LocalPlayer.Character
		if char and getRoot(char) then
			getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
		end
	end)

	Tab3:TextBox("Teleport Player", "Name", function(name, value)
		if value then
			local tpX,tpY,tpZ = tonumber(game.Players[name].Character.HumanoidRootPart.Position.X),tonumber(game.Players[name].Character.HumanoidRootPart.Position.Y),tonumber(game.Players[name].Character.HumanoidRootPart.Position.Z)
			local char = game.Players.LocalPlayer.Character
			if char and getRoot(char) then
				getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
			end
		end
	end)

	Tab3:Toggle("Esp", nil, function(esp)
		getgenv().enabled = esp
		getgenv().uselocalplayer = false
		getgenv().filluseteamcolor = false
		getgenv().outlineuseteamcolor = false
		getgenv().fillcolor = Color3.new(0, 0, 0)
		getgenv().outlinecolor = Color3.new(1, 1, 1)
		getgenv().filltrans = 0
		getgenv().outlinetrans = 0

		loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
	end)

	Tab3:Toggle("Fill Team Color", nil, function(teamcolor)
		getgenv().enabled = true
		getgenv().uselocalplayer = false
		getgenv().filluseteamcolor = teamcolor
		getgenv().outlineuseteamcolor = false
		getgenv().fillcolor = Color3.new(0, 0, 0)
		getgenv().outlinecolor = Color3.new(1, 1, 1)
		getgenv().filltrans = 0
		getgenv().outlinetrans = 0

		loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
	end)

	Tab3:Toggle("Outline Team Color", nil, function(teamcolor)
		getgenv().enabled = true
		getgenv().uselocalplayer = false
		getgenv().filluseteamcolor = false
		getgenv().outlineuseteamcolor = teamcolor
		getgenv().fillcolor = Color3.new(0, 0, 0)
		getgenv().outlinecolor = Color3.new(1, 1, 1)
		getgenv().filltrans = 0
		getgenv().outlinetrans = 0

		loadstring(game:HttpGet("https://raw.githubusercontent.com/zntly/highlight-esp/main/esp.lua"))()
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

	local CreditsTab = Window:Tab("Credits")
	CreditsTab:Label("Owners:")
	CreditsTab:Button("Made By Egw",function()
		setclipboard("Egw")
	end)
	CreditsTab:Line()
	CreditsTab:KeyBind("UI Keybind:", "E",function()
		Hawk:ToggleUI()
	end)
end)