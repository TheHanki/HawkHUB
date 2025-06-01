local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()
local HttpService = game:GetService("HttpService")
local annen = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Important/owners.json"))
local Notificatin = Hawk:Notification()
Notificatin:Notification("Hawk Loaded!","Have Fun!","Done",3)
Notificatin:CreateNotification("10179402650","Game Detected!","Hawk HUB","It seems like Hawk found a script for a game you are playing right now. Would you want to load it?","Yes","No",function()

local Window = Hawk:Window("Hawk HUB | Fnaf Five Nights")
Hawk:Bildir("Hawk HUB","Fnaf Five Nights","Load",function()
	end)
local Tab1 = Window:Tab("Home")
local Tab2 = Window:Tab("Teleports")
local CreditsTab = Window:Tab("Credits")
Tab1:Label("Visuals")
Tab1:Slider("Walkspeed",16,100,function(value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)
Tab1:Slider("JumpPower",50,100,function(value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)
Tab1:Label("Collect All Items")
Tab1:Button("Collect!",function()
	for i, v in pairs(game.Workspace:GetDescendants()) do
		if v:IsA("TouchTransmitter") then
			firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
			wait()
			firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) 
			print(v.Parent)
		end
	end
end)

Tab1:Button("God Mode",function()
	local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

	if game.Players.LocalPlayer.Character:FindFirstChild("Force") then
		game.Players.LocalPlayer.Character.Force:Activate()
		wait(0.05)
		game.Players.LocalPlayer.Character:FindFirstChild("Force"):Destroy()
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-141, 237, -2671)
		wait(0.05)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos

		if game.Players.LocalPlayer.Backpack:FindFirstChild("Force") then
			game.Players.LocalPlayer.Backpack:FindFirstChild("Force").Parent = game.Players.LocalPlayer.Character
		end	

		game.Players.LocalPlayer.Character.Force:Activate()
		wait(0.05)
		game.Players.LocalPlayer.Character:FindFirstChild("Force"):Destroy()
	end	 
end)

Tab2:Label("Teleports!!")
Tab2:Button("Vip Room",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-142, 236, -2685)
end)
Tab2:Button("Lobby",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-93, 236, -2687)
end)
Tab2:Button("Office",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7, 4, -35)
end)
Tab2:Button("Kitchen",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-37, 4, -0)
end)
Tab2:Button("Toilets",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-44, 4, 57)
end)
Tab2:Button("Dining Room",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2, 4, 52)
end)
Tab2:Button("Back Stage",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48, 4, 64)
end)
Tab2:Button("Main Stage",function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48, 4, 64)
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