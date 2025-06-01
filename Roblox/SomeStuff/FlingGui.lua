-- Makes the lib working
_Hawk = "ohhahtuhthttouttpwuttuaunbotwo"

--loadstring
local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Libs/NewLib.lua", true))()

--------------------------------------------------------------------------

--Creating Window
local Window = Hawk:Window({
	ScriptName = "Fling Gui - by __spyro",
	DestroyIfExists = true, --if false, gui wont disappear
	Theme = "Dark" --Themes: Pink, White, Dark
})

--Creating Close Button
Window:Close({
	visibility = true, --if false, close button will disappear
	Callback = function()
		Window:Destroy() --Destroying Gui Function
	end,
})

--Creating Minimize Button
Window:Minimize({
	visibility = true, --if false, close button will disappear
	OpenButton = true, -- Visible = false etc, open button.
	Callback = function()
	end,
})

--Creating Tab

local Info = Window:Tab("Info")

Info:Paragraph("About Hawk HUB",{"This will explain your questions about","why hawk hub is discontinued","We are living in Turkey rn.","Turkey is being worse day by day.","Afghans, Syrians, Economy, Education...","Also There is an exam called YKS.","I have to study it for 2 years.","I want to make a brain drain into Germany","I have to study much..","Cuz everyone thinks turkey is a 3rd World Country","Life is being hard day by day in Turkey..","So, we are leaving now \240\159\165\185\10","Lets hope we can meet in real life someday...","","                               Loves, --spyro",""})

local tab1 = Window:Tab("Our")
-- Window:Tab("Tab","Tab Title")
local credit = Window:Tab("Credits")
------------------------------------------------------

--Creating Section (lib elemens can be used without any section)
--Its only a Title, not a really section
local newsec = tab1:Section("Our Fling Scripts")

------------------------------------------------------

--Creating Label
local label = newsec:Label("Our own fling scripts","Made by __spyro")

------------------------------------------------------


newsec:Button("Fling Players In Round","Fling all players!!", function()
	local H4nk1        = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	wait(0.01)
	Pornooo = game:GetService('RunService').Stepped:connect(function()
		for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
			if v:IsA("BasePart") then 
				v.CanCollide = false
			end
		end
	end)
	local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
	local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
	BG.P         = 9e4
	BG.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
	BG.CFrame    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
	BV.Velocity  = Vector3.new(0, 3.75, 0)
	BV.MaxForce  = Vector3.new(9e9, 9e9, 9e9)
	wait()
	Saksoo = game:GetService('RunService').Heartbeat:connect(function()
		for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
			if v:IsA("BasePart") and v.Name ~="Torso" then 
				v.Velocity = Vector3.new(0,-2333333,0)
			end
		end
	end)
	XD = game:GetService("Players").LocalPlayer

	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name ~= XD.Name then
			if v.Character:FindFirstChild('Torso') then
				wait(0.1)
				XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,-3.9,0)
				wait(0.1)
				XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,4,0)
				wait(0.1)
			end 
		end    
	end
	wait(0.2)
	Pornooo:Disconnect()

	Saksoo:Disconnect()
	wait(0.1)
	BG:Destroy()
	BV:Destroy()
	game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = H4nk1
	game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = true
	wait()
	game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = false
end)

newsec:TextBox("Fling Player", "Player Name", function(plr)
	for i, v in pairs(game:GetService("Players"):GetPlayers()) do
		if v.Name:match(plr) or v.DisplayName:match(plr) and v.Character:FindFirstChild("Torso") then
			local H4nk1       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			wait(0.01)
			Pornooo = game:GetService('RunService').Stepped:connect(function()
				for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					if v:IsA("BasePart") then 
						v.CanCollide = false
					end
				end
			end)
			local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
			local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
			BG.P         = 9e4
			BG.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
			BG.CFrame    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
			BV.Velocity  = Vector3.new(0, 3.75, 0)
			BV.MaxForce  = Vector3.new(9e9, 9e9, 9e9)
			wait()
			Saksoo = game:GetService('RunService').Heartbeat:connect(function()
				for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
					if v:IsA("BasePart") and v.Name ~="Torso" then 
						v.Velocity = Vector3.new(0,-2333333,0)
					end
				end
			end)
			XD = game:GetService("Players").LocalPlayer

			wait(0.1)
			XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,-3.9,0)
			wait(0.1)
			XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,4,0)
			wait(0.1)
			wait(0.2)
			Pornooo:Disconnect()

			Saksoo:Disconnect()
			wait(0.1)
			BG:Destroy()
			BV:Destroy()
			game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = H4nk1
			game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = true
			wait()
			game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = false
		end
	end
end)

local newsec = tab1:Section("Other Fling Scripts")

local button = newsec:Button("Topit Fling Gui","A fling gui made by topit",function()
	loadstring(game:HttpGet('https://pastebinp.com/raw/r97d7dS0', true))()
end)

local button = newsec:Button("GhostPlayer Fling Gui","A fling gui made by GhostPlayer",function()
    loadstring(game:HttpGet('https://pastebinp.com/raw/fj5VwQtC'))()
end)

local button = newsec:Button("Cyclically Fling Gui","A fling gui made by Cyclically",function()
    loadstring(game:HttpGet('https://pastebinp.com/raw/GcC7mLdr'))()
end)

local button = newsec:Button("Farewell Fling Gui","A fling gui made by Farewell",function()
    loadstring(game:HttpGet('https://pastebinp.com/raw/eaJLnbpj'))()
end)


------------------------------------------------------

--Creating Image

local newsec = credit:Section("Credits")

newsec:Image("Spyro","Hawk",{
	Name = "Spyro", -- "Name of the file and the Title"
	FileName = "Spyro.webm",
	CheckFile = false,
	ImageLink = "https://raw.githubusercontent.com/xHzCihan/IDream/main/Owners/SpyroSmirk.webm", --webm links or rbxassetid ids only
	ImageColor = Color3.fromRGB(255, 255, 255), --Image Color
	Stroke = Color3.fromRGB(255, 255, 255), --Stroke Color
	Volume = 1, --Volume if you set a video
	Description = {"Founder Of Hawk HUB","Discord : __spyro"} --Description
})



------------------------------------------------




------------------------------------------------



--Creating Notifications
local Notifications = Hawk:AddNotifications()

-----------------------------------------

--Creating Responsible Notifications
Notifications:Notification("Fling gui by __spyro","Welcome!","Done",1)
