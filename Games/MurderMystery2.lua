local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()
local HttpService = game:GetService("HttpService")
local annen = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Important/owners.json"))
local Notificatin = Hawk:Notification()
Notificatin:Notification("Hawk Loaded!","Have Fun!","Done",3)
Notificatin:CreateNotification("10179402650","Game Detected!","Hawk HUB","It seems like Hawk found a script for a game you are playing right now. Would you want to load it?","Yes","No",function()
	local Window = Hawk:Window("Hawk HUB | Murder Mystery 2")
	Hawk:Bildir("Hawk HUB","Murder Mystery 2","Load",function()	

	end)
	local Tab = Window:Tab("Main")
	local Tab1 = Window:Tab("Esp")
	local Tab2 = Window:Tab("Teleports")
	local Tab3 = Window:Tab("Player")

	Tab:Button("Kill Murder",function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild("Gun") then
			game.Players.LocalPlayer.Backpack:FindFirstChild("Gun").Parent = game.Players.LocalPlayer.Character
		elseif game.Players.LocalPlayer.Character:FindFirstChild("Gun") then
		end    
		wait(0.2)
		for i,v in pairs(game.Players:GetPlayers()) do
			task.spawn(function()
				if v ~= game.Players.LocalPlayer and v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") or v.Backpack:FindFirstChild("Revovler") or v.Character:FindFirstChild("Revolver") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
					game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,5)
				end
			end)
		end       
		wait(0.1)
		local args = {
			[1] = 1,
			[2] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-9),
			[3] = "AH"
		}
		game:GetService("Players").LocalPlayer.Character.Gun.KnifeServer.ShootGun:InvokeServer(unpack(args))
	end)
	Tab:Button("Kill Sheriff",function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild("Knife") then
			game.Players.LocalPlayer.Backpack:FindFirstChild("Knife").Parent = game.Players.LocalPlayer.Character
		elseif game.Players.LocalPlayer.Character:FindFirstChild("Knife") then
		end    
		wait(0.2)
		for i,v in pairs(game.Players:GetPlayers()) do
			task.spawn(function()
				if v ~= game.Players.LocalPlayer and v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") or v.Backpack:FindFirstChild("Revovler") or v.Character:FindFirstChild("Revolver") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
					game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Character.HumanoidRootPart.CFrame + Vector3.new(0,0,5)


					local Sheirf = v
					local char = Sheirf.Character
					local head = char.Head

					wait(0.2)
					local A_1 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					local A_2 = head.Position
					local Event = game:GetService("Players").LocalPlayer.Character.Knife.Throw
					Event:FireServer(A_1, A_2)
				end
			end)
		end
	end)

	Tab1:Button("Esp Sheriff",function()

		local esp_settings = { 
			textsize = 26,
			colour = 0, 215, 252
		}

		local gui = Instance.new("BillboardGui")
		local esp = Instance.new("TextLabel",gui)



		gui.Name = "shush";
		gui.ResetOnSpawn = false
		gui.AlwaysOnTop = true;
		gui.LightInfluence = 0;
		gui.Size = UDim2.new(1.75, 0, 1.75, 0);
		esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		esp.Text = ""
		esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
		esp.BorderSizePixel = 4;
		esp.BorderColor3 = Color3.new(esp_settings.colour)
		esp.BorderSizePixel = 0
		esp.Font = "GothamSemibold"
		esp.TextSize = esp_settings.textsize
		esp.TextColor3 = Color3.fromRGB(esp_settings.colour)


		for i, v in pairs(game.Players:GetPlayers()) do
			if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") and v.Character.Head:FindFirstChild("Cracked esp")==nil    then
				esp.Text = "Sheriff"
				gui:Clone().Parent = v.Character.Head
				local w = Instance.new("Highlight")
				w.Parent = v.Character
				w.FillTransparency = 0.7
				w.OutlineTransparency = 0
				w.Name = "lOL"

				w.FillColor = Color3.new(9,8,0)
			end

		end
	end)
	Tab1:Button("Esp Murder",function()

		local esp_settings = { 
			textsize = 26,
			colour = 0, 0, 0
		}

		local gui = Instance.new("BillboardGui")
		local esp = Instance.new("TextLabel",gui) 



		gui.Name = "shush"; 
		gui.AlwaysOnTop = true;
		gui.LightInfluence = 0;
		gui.Size = UDim2.new(1.75, 0, 1.75, 0);
		esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		esp.Text = ""
		esp.Size = UDim2.new(0.0001, 0.00001, 0.0001, 0.00001);
		esp.BorderSizePixel = 4;
		esp.BorderColor3 = Color3.new(esp_settings.colour)
		esp.BorderSizePixel = 0
		esp.Font = "GothamSemibold"
		esp.TextSize = esp_settings.textsize
		esp.TextColor3 = Color3.fromRGB(esp_settings.colour)


		for i, v in pairs(game.Players:GetPlayers()) do
			if v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") and v.Character.Head:FindFirstChild("Cracked esp")==nil    then
				esp.Text = "Murderer"
				gui:Clone().Parent = v.Character.Head
				local w = Instance.new("Highlight")
				w.Parent = v.Character
				w.FillTransparency = 0.5
				w.OutlineTransparency = 0
				w.Name = "lOL"

				w.FillColor = Color3.new(9,8,0)
			end

		end
	end)
	Tab2:Button("Tp Murder",function()
		for i,v in pairs(game.Players:GetPlayers()) do
			task.spawn(function()
				if v ~= game.Players.LocalPlayer and v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") or v.Backpack:FindFirstChild("Revovler") or v.Character:FindFirstChild("Revolver") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
					game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Character.HumanoidRootPart.CFrame
				end
			end)
		end
	end)

	Tab1:Button("Esp Gun",function()
		local w = Instance.new("Highlight")
		w.Parent = game:GetService("Workspace").GunDrop
		w.FillTransparency = 0
		w.OutlineTransparency = 0
		w.Name = "lOL"

		w.FillColor = Color3.new(9,8,0)
	end)

	Tab2:Button("Tp Sheriff",function()
		for i,v in pairs(game.Players:GetPlayers()) do
			task.spawn(function()
				if v ~= game.Players.LocalPlayer and v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") or v.Backpack:FindFirstChild("Revovler") or v.Character:FindFirstChild("Revolver") and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
					game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Character.HumanoidRootPart.CFrame
				end
			end)
		end

	end)

	Tab2:Button("Tp Gun",function()
		local cframe = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		local gun = game:GetService("Workspace").GunDrop
		local fuck = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		fuck.CFrame = gun.CFrame
		wait(0.1)
		game.Players.LocalPlayer.Character.Humanoid.Jump = true

		wait(0.2)
		local ok = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		ok.CFrame = cframe
	end)

	Tab3:Slider("Speed",16,100,function(speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end)

	Tab3:Slider("Jump",16,100,function(jp)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
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