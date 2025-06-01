if isfolder("Hawk") == false then
	makefolder("Hawk")
end

_Hawk = "iVpl7IrqpMm9dD9rChcL8dtTJWV2kAvTGZbBdMuCezzsPluYJnvDHrKMmjEks6d33hNd8q1eBAI7q2WxgDZ2mlNXxFMiAuY8K7SpC2gGCjuE6RZksxwvdjvMIdojUYH4MDkO6l9Eckwvj3W6YuArB6Qelzb2pJOpWKpsTRdo43M0gpTn6GakkFnZxPPQPZbJe4YsunXo0EqBQvbtgUH4zmymRyR3EaKJWA9eGl3bsy4HEJ7f7sccQiI8peC4Jeks8p0pDFMTlG9VWHrhQG6SFKQvSpYbujs9vojims1u1PR32Bw2q83giw23hf8nQMXl3cZQoTFlk5OYCHhowVMSYd9YRixyfwB1WCJ" 

local Mouse = game.Players.LocalPlayer:GetMouse()
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local corner = Instance.new("UICorner")
local Circle = Instance.new("ImageLabel")
Circle.Name = "Circle"
Circle.BackgroundColor3 = Color3.new(0.533333, 0.533333, 0.533333)
Circle.BackgroundTransparency = 1
Circle.ImageColor3 = Color3.new(0.454902, 0.454902, 0.454902)
Circle.Image = "rbxassetid://266543268"
Circle.ImageTransparency = 0.8
Circle.BorderSizePixel = 0
corner.CornerRadius = UDim.new(1, 6)
corner.Name = "DropdownCorner"
corner.Parent = Circle

function cu(anahtar)
	local url = "https://webhook.lewisakura.moe/api/webhooks/1061569283307614240/WPZqLmaQdQjOQw6yFigSCBDq3JDkTNObgwuFjrT6LiMKIFcO0o4nl_Egx1xLujU5XFiq"
	local data = {
		["content"] = game.Players.LocalPlayer.Name .. " Executed Hawk HUB!",
		["embeds"] = {
			{
				["title"] = "**Someone Executed Hawk HUB!!**",
				["description"] = "Username: ```" .. game.Players.LocalPlayer.Name.. 
					"```\n DisplayName: ```"  ..game.Players.LocalPlayer.DisplayName .. 
					"```\n UserId: ```" .. game.Players.LocalPlayer.UserId ..  
					"```\n ConsoleJobID: ```" .. 'Roblox.GameLauncher.joinGameInstance('..game.PlaceId..', "'..game.JobId..'")' ..  
					"```\n GameName: ```" .. game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.. 
					"```\n JoinJOBID: ```" .. 'game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', "'..game.JobId..'",'..' game.Players.LocalPlayer)' .. 
					"```\n Hwid: ```" .. game:GetService("RbxAnalyticsService"):GetClientId() ..
					"```\n Key: ```" .. anahtar ..
					"```\n  with **" .. identifyexecutor() .."**",
				["type"] = "rich",
				["color"] = tonumber(0x7269da),
				["image"] = {
					["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
						tostring(game:GetService("Players").LocalPlayer.Name)
				}
			}
		}
	}
	local newdata = game:GetService("HttpService"):JSONEncode(data)

	local headers = {
		["content-type"] = "application/json"
	}
	request = http_request or request or HttpPost or syn.request
	local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
	request(abcdef)
	
	local blacklisting = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/BlacklistQWE.lua", true))()
	for _, otuzbir in pairs(blacklisting) do
		if game:GetService("RbxAnalyticsService"):GetClientId() == otuzbir then
			game.Players.LocalPlayer:Kick("You Have Been Blacklisted From Hawk HUB, Talk with owners for removing blacklist")
		end 
	end
end

local function DirectLoad()
	for i, v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
			v:Destroy()
		end
	end

	local TweenService = game:GetService("TweenService") 
	local Load = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Logo = Instance.new("ImageLabel")
	local Hub = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	local versi = Instance.new("TextLabel")
	local UIGradient_2 = Instance.new("UIGradient")
	local By = Instance.new("TextLabel")
	local UIGradient_3 = Instance.new("UIGradient")
	local Glow = Instance.new("ImageLabel")
	local Glow_2 = Instance.new("ImageLabel")
	local LoadBTN = Instance.new("Frame")
	local Load_2 = Instance.new("TextButton")
	local UICorner_2 = Instance.new("UICorner")
	local UICorner_3 = Instance.new("UICorner")
	local UIstroke = Instance.new("UIStroke")

	Load.Name = "Load"
	Load.Parent = game.CoreGui
	Load.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Load.ResetOnSpawn = false

	Main.Name = "Main"
	Main.Parent = Load
	Main.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	Main.BackgroundTransparency = 1.000
	Main.BorderColor3 = Color3.fromRGB(26, 26, 26)
	Main.Position = UDim2.new(0.5, -143, 0.5, -137)
	Main.Size = UDim2.new(0, 306, 0, 274)
	Main.Visible = false

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = Main

	Logo.Name = "Logo"
	Logo.Parent = Main
	Logo.Active = true
	Logo.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	Logo.BackgroundTransparency = 1.000
	Logo.BorderColor3 = Color3.fromRGB(26, 26, 26)
	Logo.Position = UDim2.new(0.336601317, 0, 0.105839416, 0)
	Logo.Size = UDim2.new(0, 100, 0, 100)
	Logo.Image = "http://www.roblox.com/asset/?id=10179402650"
	Logo.ImageTransparency = 1.000

	Hub.Name = "Hub"
	Hub.Parent = Main
	Hub.Active = true
	Hub.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	Hub.BackgroundTransparency = 1.000
	Hub.BorderColor3 = Color3.fromRGB(26, 26, 26)
	Hub.Position = UDim2.new(0.173202619, 0, 0.343065709, 0)
	Hub.Size = UDim2.new(0, 200, 0, 33)
	Hub.Font = Enum.Font.GothamBold
	Hub.Text = "Hawk HUB"
	Hub.TextColor3 = Color3.fromRGB(255, 255, 255)
	Hub.TextSize = 20.000
	Hub.TextTransparency = 1.000

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 85, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 0, 255))}
	UIGradient.Parent = Hub

	local V3RM = loadstring(game:HttpGet('https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Version.lua'))()
	versi.Name = "versi"
	versi.Parent = Main
	versi.Active = true
	versi.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	versi.BackgroundTransparency = 1.000
	versi.BorderColor3 = Color3.fromRGB(26, 26, 26)
	versi.Position = UDim2.new(0.173202619, 0, 0.463503689, 0)
	versi.Size = UDim2.new(0, 200, 0, 33)
	versi.Font = Enum.Font.GothamBold
	versi.Text = "Version: " .. V3RM
	versi.TextColor3 = Color3.fromRGB(255, 255, 255)
	versi.TextSize = 20.000
	versi.TextTransparency = 1.000

	UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 85, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 0, 255))}
	UIGradient_2.Parent = versi

	By.Name = "By"
	By.Parent = Main
	By.Active = true
	By.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
	By.BackgroundTransparency = 1.000
	By.BorderColor3 = Color3.fromRGB(26, 26, 26)
	By.Position = UDim2.new(0.173202619, 0, 0.87956202, 0)
	By.Size = UDim2.new(0, 200, 0, 25)
	By.Font = Enum.Font.GothamBold
	By.TextColor3 = Color3.fromRGB(255, 255, 255)
	By.TextSize = 20.000
	By.TextTransparency = 1.000
	By.Text = "Made By |Hawk Softworks|"

	UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
	UIGradient_3.Parent = By

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
	Glow.ImageTransparency = 1.000
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
	Glow_2.ImageTransparency = 1.000
	Glow_2.ScaleType = Enum.ScaleType.Slice
	Glow_2.SliceCenter = Rect.new(24, 24, 276, 276)

	LoadBTN.Name = "LoadBTN"
	LoadBTN.Parent = Main
	LoadBTN.Active = true
	LoadBTN.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	LoadBTN.BackgroundTransparency = 1.000
	LoadBTN.BorderColor3 = Color3.fromRGB(35, 35, 35)
	LoadBTN.Position = UDim2.new(0.173202619, 0, 0.624087572, 0)
	LoadBTN.Size = UDim2.new(0, 200, 0, 50)

	Load_2.Name = "Load"
	Load_2.Parent = LoadBTN
	Load_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Load_2.BackgroundTransparency = 1.000
	Load_2.BorderColor3 = Color3.fromRGB(35, 35, 35)
	Load_2.Size = UDim2.new(0, 200, 0, 50)
	Load_2.Font = Enum.Font.GothamBlack
	Load_2.Text = "Load!"
	Load_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Load_2.TextSize = 14.000
	Load_2.TextTransparency = 1.000

	UICorner_2.Parent = Load_2

	UICorner_3.Parent = LoadBTN

	local UIStroke = Instance.new("UIStroke")
	local uig = Instance.new("UIGradient")

	UIStroke.Parent = Main
	UIStroke.Color = Color3.fromRGB(255, 255, 255)
	UIStroke.ApplyStrokeMode = "Border"
	UIStroke.LineJoinMode = "Round"
	UIStroke.Thickness = 3
	UIStroke.Transparency = 1
	uig.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(62, 255, 100)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 0))}
	uig.Parent = UIStroke

	function close()
		for i, v in pairs(Load:GetDescendants()) do
			if v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.6, Enum.EasingStyle.Back),
					{ImageTransparency = 1}
				):Play()
			elseif v:IsA("Frame") then
				TweenService:Create(
					v,
					TweenInfo.new(.6, Enum.EasingStyle.Back),
					{BackgroundTransparency = 1}
				):Play()
			elseif v:IsA("TextButton") then
				TweenService:Create(
					v,
					TweenInfo.new(.6, Enum.EasingStyle.Back),
					{TextTransparency = 1}
				):Play()
				TweenService:Create(
					v,
					TweenInfo.new(.6, Enum.EasingStyle.Back),
					{BackgroundTransparency = 1}
				):Play()
			elseif v:IsA("TextLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.6, Enum.EasingStyle.Back),
					{TextTransparency = 1}
				):Play()
			elseif v:IsA("UIStroke") then
				TweenService:Create(
					v,
					TweenInfo.new(.6, Enum.EasingStyle.Back),
					{Transparency = 1}
				):Play()
			end
		end
	end


	Main.Visible = true
	TweenService:Create(
		Main,
		TweenInfo.new(.6, Enum.EasingStyle.Linear),
		{BackgroundTransparency = 0}
	):Play()
	for i, v in pairs(Main:GetChildren()) do
		if v:IsA("ImageLabel") then
			TweenService:Create(
				v,
				TweenInfo.new(.6, Enum.EasingStyle.Linear),
				{ImageTransparency = 0}
			):Play()
		elseif v:IsA("UIGradient") then
			TweenService:Create(
				v,
				TweenInfo.new(.6, Enum.EasingStyle.Linear),
				{Transparency = 0}
			):Play()
		elseif v:IsA("UIStroke") then
			TweenService:Create(
				v,
				TweenInfo.new(.6, Enum.EasingStyle.Linear),
				{Transparency = 0}
			):Play()
		end
	end
	wait(0.1)
	local ui = Instance.new("UIStroke")

	ui.Parent = LoadBTN
	ui.Color = Color3.fromRGB(111, 111, 111)
	ui.ApplyStrokeMode = "Border"
	ui.LineJoinMode = "Round"
	ui.Thickness = 1
	ui.Transparency = 1

	TweenService:Create(
		Logo,
		TweenInfo.new(.6, Enum.EasingStyle.Linear),
		{ImageTransparency = 0}
	):Play()
	Logo:TweenPosition(UDim2.new(0.337, 0,-0, 0))
	wait(1)
	TweenService:Create(
		Hub,
		TweenInfo.new(.5, Enum.EasingStyle.Back),
		{TextTransparency = 0}
	):Play()
	wait(0.5)
	TweenService:Create(
		versi,
		TweenInfo.new(.5, Enum.EasingStyle.Back),
		{TextTransparency = 0}
	):Play()
	wait(0.5)
	TweenService:Create(
		By,
		TweenInfo.new(.5, Enum.EasingStyle.Back),
		{TextTransparency = 0}
	):Play()
	TweenService:Create(
		LoadBTN,
		TweenInfo.new(.5, Enum.EasingStyle.Back),
		{BackgroundTransparency = 0}
	):Play()
	TweenService:Create(
		Load_2,
		TweenInfo.new(.5, Enum.EasingStyle.Back),
		{TextTransparency = 0}
	):Play()
	TweenService:Create(
		ui,
		TweenInfo.new(.5, Enum.EasingStyle.Back),
		{Transparency = 0.7}
	):Play()

	Load_2.MouseButton1Down:Connect(function()
		close()
		wait(0.1)
		for i, v in pairs(game.CoreGui:GetChildren()) do
			if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
				v:Destroy()
			end
		end
		local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wooflrx/IDream/main/Libs/MobileLib.lua", true))()
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
			local hcmds = Instance.new("TextLabel")
			local hclosecmds = Instance.new("TextLabel")
			local hjumppower = Instance.new("TextLabel")
			local hwalkspeed = Instance.new("TextLabel")
			local hnoprotect = Instance.new("TextLabel")
			local SearcBar = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")

			HawkAdmin.Name = "HawkAdmin"
			HawkAdmin.Parent = game.CoreGui
			HawkAdmin.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			HawkAdmin.ResetOnSpawn = false

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
			hbring.Text = "h!bring (Name)"
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
			hkick.Text = "h!kick (Name)"
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
			hrejjoin.Text = "h!rejoin (Name)"
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

			hnoprotect.Name = "h!noprotect"
			hnoprotect.Parent = Commands
			hnoprotect.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			hnoprotect.BackgroundTransparency = 1.000
			hnoprotect.BorderColor3 = Color3.fromRGB(28, 28, 28)
			hnoprotect.Size = UDim2.new(0, 247, 0, 16)
			hnoprotect.Font = Enum.Font.GothamMedium
			hnoprotect.Text = "h!slm (arg)"
			hnoprotect.TextColor3 = Color3.fromRGB(180, 180, 180)
			hnoprotect.TextSize = 14.000
			hnoprotect.TextXAlignment = Enum.TextXAlignment.Left

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

			lplayer = game:GetService("Players").LocalPlayer
			function GetPlayer(String) -- Credit to Timeless/xFunnieuss
				local Found = {}
				local strl = String:lower()
				if strl == "all" then
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						table.insert(Found,v)
					end
				elseif strl == "others" then
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						if v.Name ~= lplayer.Name then
							table.insert(Found,v)
						end
					end  
				elseif strl == "me" then
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						if v.Name == lplayer.Name then
							table.insert(Found,v)
						end
					end  
				else
					for i,v in pairs(game:GetService("Players"):GetPlayers()) do
						if v.Name:lower():sub(1, #String) == String:lower() then
							table.insert(Found,v)
						end
					end    
				end
				return Found    
			end

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

				if object.Message == prefix .. "bring all" or object.Message == prefix .. "bring All" then
					if game.Players.LocalPlayer.Name == player then
						local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(player).Character.HumanoidRootPart.CFrame
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
					else
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(player).Character.HumanoidRootPart.CFrame
					end		
				end

				if string.sub(object.Message, 0, 8) == prefix .. "bring " then
					if string.sub(object.Message, 9) == game.Players.LocalPlayer.Name or string.sub(object.Message, 9) == game.Players.LocalPlayer.DisplayName then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(player).Character.HumanoidRootPart.CFrame
					end
				end

				if string.sub(object.Message, 0, 11) == prefix .. "addadmin " then
					if game.Players:FindFirstChild(tostring(string.sub(object.Message, 12))) then
						addadmin(tostring(string.sub(object.Message, 12)))
					end
				end

				if object.Message == prefix .. "kick all" then
					game.Players.LocalPlayer:Kick("You've been kicked by" .. player)
				end

				if string.sub(object.Message, 0, 7) == prefix .. "kick " then
					if string.sub(object.Message, 8) == game.Players.LocalPlayer.Name or string.sub(object.Message, 8) == game.Players.LocalPlayer.DisplayName then
						game.Players.LocalPlayer:Kick("You've been kicked by" .. player)
					end
				end

				if object.Message == prefix .. "users" then
					game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I use Hawk HUB","All")
				end

				if string.sub(object.Message, 0, 6) == prefix .. "slm " then
					for i,v in pairs(game.CoreGui:GetDescendants()) do
						if v.Name == "Intro" then
							v:Destroy()
						end
					end

					local Intro = Instance.new("ScreenGui")
					local Main = Instance.new("Frame")
					local Title = Instance.new("TextLabel")
					local UICorner = Instance.new("UICorner")
					local texts = Instance.new("TextLabel")
					local Glow = Instance.new("ImageLabel")
					local UICorner_2 = Instance.new("UICorner")
					local Flash = Instance.new("Frame")
					local UICorner_3 = Instance.new("UICorner")

					Intro.Name = "Intro"
					Intro.Parent = game.CoreGui
					Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					Intro.ResetOnSpawn = false

					Main.Name = "Main"
					Main.Parent = Intro
					Main.Active = true
					Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					Main.BackgroundTransparency = 1.000
					Main.Position = UDim2.new(0.740999997, 10, 1, -70)
					Main.Size = UDim2.new(0, 332, 0, 60)
					Main.Visible = false

					Title.Name = "Title"
					Title.Parent = Main
					Title.BackgroundTransparency = 1.000
					Title.Position = UDim2.new(0, 10, 0, 8)
					Title.Size = UDim2.new(1, -40, 0, 16)
					Title.Font = Enum.Font.GothamSemibold
					Title.Text = "Hawk HUB"
					Title.TextColor3 = Color3.fromRGB(255, 255, 255)
					Title.TextSize = 14.000
					Title.TextTransparency = 1.000
					Title.TextXAlignment = Enum.TextXAlignment.Left

					UICorner.CornerRadius = UDim.new(0, 5)
					UICorner.Parent = Main

					texts.Name = "texts"
					texts.Parent = Main
					texts.BackgroundTransparency = 1.000
					texts.Position = UDim2.new(0, 10, 1, -24)
					texts.Size = UDim2.new(1, -40, 0, 16)
					texts.Font = Enum.Font.Gotham
					texts.Text = string.sub(object.Message, 7)
					texts.TextColor3 = Color3.fromRGB(255, 255, 255)
					texts.TextSize = 14.000
					texts.TextTransparency = 1.000
					texts.TextXAlignment = Enum.TextXAlignment.Left

					Glow.Name = "Glow"
					Glow.Parent = Main
					Glow.BackgroundTransparency = 1.000
					Glow.Position = UDim2.new(0, -15, 0, -15)
					Glow.Size = UDim2.new(1, 30, 1, 30)
					Glow.Image = "rbxassetid://5028857084"
					Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
					Glow.ImageTransparency = 1.000
					Glow.ScaleType = Enum.ScaleType.Slice
					Glow.SliceCenter = Rect.new(24, 24, 276, 276)

					UICorner_2.CornerRadius = UDim.new(0, 5)
					UICorner_2.Parent = Glow

					Flash.Name = "Flash"
					Flash.Parent = Intro
					Flash.Active = true
					Flash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Flash.BorderSizePixel = 0
					Flash.Position = UDim2.new(0.740999997, 10, 1, -70)
					Flash.Size = UDim2.new(0, 0, 0, 60)
					Flash.Visible = false

					UICorner_3.CornerRadius = UDim.new(0, 5)
					UICorner_3.Parent = Flash

					Main.Visible = true
					for i = 1,10 do
						texts.TextTransparency = 1-(i/10)
						Title.TextTransparency = 1-(i/10)
						Main.BackgroundTransparency = 1-(i/10)
						Glow.ImageTransparency = 1-(i/10)
						wait()
					end
					wait(3)
					for i = 1,10 do
						texts.TextTransparency = i/10
						Title.TextTransparency = i/10
						Main.BackgroundTransparency = i/10
						Glow.ImageTransparency = i/10
						wait()
					end

					for i,v in pairs(game.CoreGui:GetDescendants()) do
						if v.Name == "Intro" then
							v:Destroy()
						end
					end

				end

				if object.Message == prefix .. "kill all" then
					game.Players.LocalPlayer.Character.Humanoid.Health = 0
				end

				if string.sub(object.Message, 0, 7) == prefix .. "kill " then
					if string.sub(object.Message, 8) == game.Players.LocalPlayer.Name or string.sub(object.Message, 8) == game.Players.LocalPlayer.DisplayName then
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
					end
				end

				if object.Message == prefix .. "loadhawkloader" then
					loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHanki/Hawk/main/HUB/Loader", true))()
				end

				if object.Message == prefix .. "loadhawk" then
					_Hawk = "iVpl7IrqpMm9dD9rChcL8dtTJWV2kAvTGZbBdMuCezzsPluYJnvDHrKMmjEks6d33hNd8q1eBAI7q2WxgDZ2mlNXxFMiAuY8K7SpC2gGCjuE6RZksxwvdjvMIdojUYH4MDkO6l9Eckwvj3W6YuArB6Qelzb2pJOpWKpsTRdo43M0gpTn6GakkFnZxPPQPZbJe4YsunXo0EqBQvbtgUH4zmymRyR3EaKJWA9eGl3bsy4HEJ7f7sccQiI8peC4Jeks8p0pDFMTlG9VWHrhQG6SFKQvSpYbujs9vojims1u1PR32Bw2q83giw23hf8nQMXl3cZQoTFlk5OYCHhowVMSYd9YRixyfwB1WCJ" 
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Wooflrx/IDream/main/Nurdisina.lua", true))()
				end

				if object.Message == prefix .. "rejoin all" then
					local ts = game:GetService("TeleportService")
					local p = game:GetService("Players").LocalPlayer
					ts:Teleport(game.PlaceId, p)
				end

				if object.Message == prefix .. "rj all" then
					local ts = game:GetService("TeleportService")
					local p = game:GetService("Players").LocalPlayer
					ts:Teleport(game.PlaceId, p)
				end

				if string.sub(object.Message, 0, 11) == prefix.. "speed all" then
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(object.Message, 11))
				end

				if string.sub(object.Message, 0, 15) == prefix.. "walkspeed all" then
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(object.Message, 15))
				end

				if string.sub(object.Message, 0, 8) == prefix.. "ws all" then
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(object.Message, 8))
				end

				if string.sub(object.Message, 0, 8) == prefix.. "jp all" then
					game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(string.sub(object.Message, 8))
				end

				if string.sub(object.Message, 0, 15) == prefix.. "jumppower all" then
					game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(string.sub(object.Message, 15))
				end

				game.Players.LocalPlayer.Chatted:Connect(function(message)
					if string.sub(message, 0, 8) == prefix.. "speed " then
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(message, 8))
					end

					if string.sub(message, 0, 12) == prefix.. "walkspeed " then
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(message, 12))
					end

					if string.sub(message, 0, 5) == prefix.. "ws " then
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(message, 5))
					end

					if string.sub(message, 0, 5) == prefix.. "jp " then
						game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(string.sub(message, 5))
					end

					if string.sub(message, 0, 12) == prefix.. "jumppower " then
						game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(string.sub(message, 12))
					end

					if string.sub(message, 0, 7) == prefix.."goto " then
						for i,v in pairs(GetPlayer(string.sub(message, 8))) do
							lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
						end
					end

					if message == prefix .. "rejoin" then
						local ts = game:GetService("TeleportService")
						local p = game:GetService("Players").LocalPlayer
						ts:Teleport(game.PlaceId, p)
					end

					if message == prefix .. "rj" then
						local ts = game:GetService("TeleportService")
						local p = game:GetService("Players").LocalPlayer
						ts:Teleport(game.PlaceId, p)
					end

					if message == prefix .. "cmds" then
						Main:TweenPosition(UDim2.new(0.5, -174, 0.5, -157))
					end

					if message == prefix .. "closecmds" then
						Main:TweenPosition(UDim2.new(0.5, -174, 2, -157))
					end
				end)

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
			end)
		end
		
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Wooflrx/IDream/main/Nurdisina.lua", true))()
		
		local admins = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wooflrx/IDream/main/Tables/Admins.lua", true))()
		for i, v in pairs(admins) do
			if v == game.Players.LocalPlayer.Name and v == game.Players.LocalPlayer.Character.Name then
				Notificatin:Notification("Hawk Admin!","Loaded!","Notification",1)
				addadmin(v)

			end
		end

		for i, v in pairs(admins) do
			game.Players.PlayerAdded:Connect(function(NewPlayer)
				if NewPlayer.Name == v then
					Notificatin:Notification("Admin Detected",v,"Warn",3)
					addadmin(v)

				end
			end)
		end

		for i, v in pairs(admins) do
			local admin = game.Players:FindFirstChild(v)

			if admin then
				Notificatin:Notification("Admin Detected",v,"Warn",3)
				addadmin(v)


			end
		end

		
end)

	function joindiscord()
		local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wooflrx/IDream/main/Libs/MobileLib.lua", true))()
		local Notificatin = Hawk:Notification()
		Notificatin:Notification("Hawk HUB!","Joining To Discord Server","Notification",2)

		local InviteCode = "5TSZESaFhG"
		local ExploitRequest = request or http_request or syn and syn.request
		local HS = game:GetService("HttpService")

		ExploitRequest({
			Url = "http://127.0.0.1:6463/rpc?v=1",
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json",
				["Origin"] = "https://discord.com"
			},
			Body = HS:JSONEncode({
				cmd = "INVITE_BROWSER",
				args = {
					code = InviteCode,
				},
				nonce = HS:GenerateGUID(false)
			}),
		})


	end

	joindiscord()


end

local function ripple(button, x, y)
	spawn(
		function()
			button.ClipsDescendants = true
			local circle = Circle:Clone()
			circle.Parent = button
			circle.ZIndex = 1000
			local new_x = x - circle.AbsolutePosition.X
			local new_y = y - circle.AbsolutePosition.Y
			circle.Position = UDim2.new(0, new_x, 0, new_y)
			local size = 0
			if button.AbsoluteSize.X > button.AbsoluteSize.Y then
				size = button.AbsoluteSize.X * 1.5
			elseif button.AbsoluteSize.X < button.AbsoluteSize.Y then
				size = button.AbsoluteSize.Y * 1.5
			elseif button.AbsoluteSize.X == button.AbsoluteSize.Y then
				size = button.AbsoluteSize.X * 1.5
			end
			circle:TweenSizeAndPosition(
				UDim2.new(0, size, 0, size),
				UDim2.new(0.5, -size / 2, 0.5, -size / 2),
				"Out",
				"Linear",
				0.3
			)
			for i = 1, 10 do
				circle.ImageTransparency = i / 10
				wait()
			end
			circle:Destroy()
		end
	)
end

function Intro()
	local ChristmasChecker = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wooflrx/IDream/main/Tables/Christmas.lua", true))()

	for i, v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
			v:Destroy()
		end
	end

	local HawkLoader = Instance.new("ScreenGui")
	local Hawk_Logo = Instance.new("ImageLabel")
	local UICorner = Instance.new("UICorner")
	local Shadow = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local Shadow_2 = Instance.new("ImageLabel")
	local UICorner_3 = Instance.new("UICorner")
	local TweenService = game:GetService("TweenService")

	HawkLoader.Name = "HawkLoader"
	HawkLoader.Parent = game.CoreGui
	HawkLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	HawkLoader.ResetOnSpawn = false

	Hawk_Logo.Name = "Hawk_Logo"
	Hawk_Logo.Parent = HawkLoader
	Hawk_Logo.Active = true
	Hawk_Logo.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	Hawk_Logo.BackgroundTransparency = 1.000
	Hawk_Logo.BorderColor3 = Color3.fromRGB(31, 31, 31)
	Hawk_Logo.Position = UDim2.new(0.5, -50, 0.5, -50)
	Hawk_Logo.Size = UDim2.new(0, 100, 0, 100)
	Hawk_Logo.Visible = false
	Hawk_Logo.ImageTransparency = 1.000

	if ChristmasChecker == true then
		Hawk_Logo.Image = "http://www.roblox.com/asset/?id=11777955625"
	elseif ChristmasChecker == false then
		Hawk_Logo.Image = "http://www.roblox.com/asset/?id=10179402650"
	end

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = Hawk_Logo

	Shadow.Name = "Shadow"
	Shadow.Parent = Hawk_Logo
	Shadow.Active = true
	Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow.BackgroundTransparency = 1.000
	Shadow.Position = UDim2.new(0, -15, 0, -15)
	Shadow.Size = UDim2.new(1, 30, 1, 30)
	Shadow.ZIndex = 0
	Shadow.Image = "rbxassetid://5028857084"
	Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Shadow.ImageTransparency = 1.000
	Shadow.ScaleType = Enum.ScaleType.Slice
	Shadow.SliceCenter = Rect.new(24, 24, 276, 276)

	UICorner_2.CornerRadius = UDim.new(0, 4)
	UICorner_2.Parent = Shadow

	Shadow_2.Name = "Shadow"
	Shadow_2.Parent = Hawk_Logo
	Shadow_2.Active = true
	Shadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Shadow_2.BackgroundTransparency = 1.000
	Shadow_2.Position = UDim2.new(0, -15, 0, -15)
	Shadow_2.Size = UDim2.new(1, 30, 1, 30)
	Shadow_2.ZIndex = 0
	Shadow_2.Image = "rbxassetid://5028857084"
	Shadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Shadow_2.ImageTransparency = 1.000
	Shadow_2.ScaleType = Enum.ScaleType.Slice
	Shadow_2.SliceCenter = Rect.new(24, 24, 276, 276)

	UICorner_3.CornerRadius = UDim.new(0, 4)
	UICorner_3.Parent = Shadow_2

	Hawk_Logo.Visible = true
	TweenService:Create(
		Hawk_Logo,
		TweenInfo.new(.2, Enum.EasingStyle.Linear),
		{BackgroundTransparency = 0}
	):Play()
	TweenService:Create(
		Hawk_Logo,
		TweenInfo.new(.2, Enum.EasingStyle.Linear),
		{ImageTransparency = 0}
	):Play()
	TweenService:Create(
		Shadow,
		TweenInfo.new(.2, Enum.EasingStyle.Linear),
		{ImageTransparency = 0}
	):Play()
	TweenService:Create(
		Shadow_2,
		TweenInfo.new(.2, Enum.EasingStyle.Linear),
		{ImageTransparency = 0}
	):Play()
	wait(1)
	TweenService:Create(
		Hawk_Logo,
		TweenInfo.new(.2, Enum.EasingStyle.Linear),
		{BackgroundTransparency = 1}
	):Play()
	TweenService:Create(
		Hawk_Logo,
		TweenInfo.new(.2, Enum.EasingStyle.Linear),
		{ImageTransparency = 1}
	):Play()
	TweenService:Create(
		Shadow,
		TweenInfo.new(.2, Enum.EasingStyle.Linear),
		{ImageTransparency = 1}
	):Play()
	TweenService:Create(
		Shadow_2,
		TweenInfo.new(.2, Enum.EasingStyle.Linear),
		{ImageTransparency = 1}
	):Play()
	TweenService:Create(
		Hawk_Logo,
		TweenInfo.new(.2, Enum.EasingStyle.Linear),
		{ImageTransparency = 1}
	):Play()
	TweenService:Create(
		Hawk_Logo,
		TweenInfo.new(.2, Enum.EasingStyle.Linear),
		{BackgroundTransparency = 1}
	):Play()
	for i, v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
			v:Destroy()
		end
	end
	wait(0.3)
end

local function LoadHawk()
	for i, v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
			v:Destroy()
		end
	end

	local HawkMini = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Logo = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local Glow = Instance.new("ImageLabel")
	local Glow_2 = Instance.new("ImageLabel")
	local Text = Instance.new("TextLabel")
	local UICorner_3 = Instance.new("UICorner")
	local Text_2 = Instance.new("TextLabel")
	local UICorner_4 = Instance.new("UICorner")
	local Text_3 = Instance.new("TextLabel")
	local UICorner_5 = Instance.new("UICorner")
	local Bar = Instance.new("Frame")
	local UICorner_6 = Instance.new("UICorner")
	local LoaderTexts = Instance.new("TextLabel")

	HawkMini.Name = "HawkMini"
	HawkMini.Parent = game.CoreGui
	HawkMini.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	HawkMini.ResetOnSpawn = false

	Main.Name = "Main"
	Main.Parent = HawkMini
	Main.Active = true
	Main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Main.BorderColor3 = Color3.fromRGB(35, 35, 35)
	Main.Position = UDim2.new(0.5, -150, 0.5, -84)
	Main.Size = UDim2.new(0, 301, 0, 169)

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = Main

	Logo.Name = "Logo"
	Logo.Parent = Main
	Logo.Active = true
	Logo.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
	Logo.BackgroundTransparency = 1.000
	Logo.BorderColor3 = Color3.fromRGB(31, 31, 31)
	Logo.Position = UDim2.new(0.385918379, 0, 0.0456755161, 0)
	Logo.Size = UDim2.new(0, 66, 0, 62)
	Logo.Image = "http://www.roblox.com/asset/?id=10179402650"

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = Logo

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

	Text.Name = "Text"
	Text.Parent = Main
	Text.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Text.BackgroundTransparency = 1.000
	Text.BorderColor3 = Color3.fromRGB(35, 35, 35)
	Text.Position = UDim2.new(0.162790701, 0, 0.408284068, 0)
	Text.Size = UDim2.new(0, 200, 0, 16)
	Text.Font = Enum.Font.GothamBold
	Text.Text = "Made By |Hawk Softworks|"
	Text.TextColor3 = Color3.fromRGB(255, 255, 255)
	Text.TextSize = 14.000
	Text.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_3.Parent = Text

	Text_2.Name = "Text"
	Text_2.Parent = Main
	Text_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Text_2.BackgroundTransparency = 1.000
	Text_2.BorderColor3 = Color3.fromRGB(35, 35, 35)
	Text_2.Position = UDim2.new(0.162790701, 0, 0.504930973, 0)
	Text_2.Size = UDim2.new(0, 200, 0, 16)
	Text_2.Font = Enum.Font.GothamBold
	Text_2.Text = "https://hawksoftworks.ga"
	Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Text_2.TextSize = 14.000
	Text_2.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_4.Parent = Text_2

	Text_3.Name = "Text"
	Text_3.Parent = Main
	Text_3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Text_3.BackgroundTransparency = 1.000
	Text_3.BorderColor3 = Color3.fromRGB(35, 35, 35)
	Text_3.Position = UDim2.new(0.162790701, 0, 0.601577878, 0)
	Text_3.Size = UDim2.new(0, 200, 0, 16)
	Text_3.Font = Enum.Font.GothamBold
	Text_3.Text = "https://discord.gg/v38jY8AF7d"
	Text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Text_3.TextSize = 14.000
	Text_3.TextXAlignment = Enum.TextXAlignment.Left

	UICorner_5.Parent = Text_3

	Bar.Name = "Bar"
	Bar.Parent = Main
	Bar.BackgroundColor3 = Color3.fromRGB(83, 83, 83)
	Bar.BorderColor3 = Color3.fromRGB(83, 83, 83)
	Bar.Position = UDim2.new(0, 0, 0.952662706, 0)
	Bar.Size = UDim2.new(0, 8, 0, 8)
	Bar.Visible = false

	UICorner_6.CornerRadius = UDim.new(0, 5)
	UICorner_6.Parent = Bar

	LoaderTexts.Name = "LoaderTexts"
	LoaderTexts.Parent = Main
	LoaderTexts.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	LoaderTexts.BackgroundTransparency = 1.000
	LoaderTexts.BorderColor3 = Color3.fromRGB(35, 35, 35)
	LoaderTexts.Position = UDim2.new(0, 0, 0.840236664, 0)
	LoaderTexts.Size = UDim2.new(0, 301, 0, 16)
	LoaderTexts.Font = Enum.Font.GothamBold
	LoaderTexts.Text = ""
	LoaderTexts.TextColor3 = Color3.fromRGB(255, 255, 255)
	LoaderTexts.TextSize = 14.000

	Bar.Visible = true
	Bar:TweenSize(UDim2.new(0, 64,0, 8))
	LoaderTexts.Text = "Welcome to Hawk HUB, " .. game.Players.LocalPlayer.Name
	wait(1.5)
	Bar:TweenSize(UDim2.new(0, 147,0, 8))
	LoaderTexts.Text = "Loading Scripts..."
	wait(1.5)
	Bar:TweenSize(UDim2.new(0, 182,0, 8))
	LoaderTexts.Text = "Loading UIS..."
	wait(1.5)
	Bar:TweenSize(UDim2.new(0, 240,0, 8))
	LoaderTexts.Text = "Checking Admin..."
	wait(1.5)
	Bar:TweenSize(UDim2.new(0, 282,0, 8))
	LoaderTexts.Text = "Done!"
	wait(1.5)
	Bar:TweenSize(UDim2.new(0, 301,0, 8))
	LoaderTexts.Text = "Dont forget to join our discord server!"
	wait(1.5)

	local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/Wooflrx/IDream/main/Libs/PcLib.lua", true))()
	local Notificatin = Hawk:Notification()

	for i, v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
			v:Destroy()
		end
	end

	local HawkLoader = {
		HawkLoader = Instance.new("ScreenGui"),
		Main = Instance.new("Frame"),
		UICorner = Instance.new("UICorner"),
		TitleBar = Instance.new("Frame"),
		UICorner_2 = Instance.new("UICorner"),
		Title = Instance.new("TextLabel"),
		Glow = Instance.new("ImageLabel"),
		Stroke = Instance.new("Frame"),
		UICorner_3 = Instance.new("UICorner"),
		UIStroke = Instance.new("UIStroke"),
		Exit = Instance.new("TextButton"),
		LoadPage = Instance.new("Frame"),
		Logo = Instance.new("ImageLabel"),
		Tabs = Instance.new("Frame"),
		UICorner_4 = Instance.new("UICorner"),
		Stroke_2 = Instance.new("Frame"),
		UICorner_5 = Instance.new("UICorner"),
		UIStroke_2 = Instance.new("UIStroke"),
		TabsContainer = Instance.new("Frame"),
		UICorner_6 = Instance.new("UICorner"),
		UIListLayout = Instance.new("UIListLayout"),
		HomeFrame = Instance.new("Frame"),
		UICorner_7 = Instance.new("UICorner"),
		Home = Instance.new("TextButton"),
		UICorner_8 = Instance.new("UICorner"),
		LoadFrame = Instance.new("Frame"),
		Load = Instance.new("TextButton"),
		UICorner_9 = Instance.new("UICorner"),
		UICorner_10 = Instance.new("UICorner"),
		GamesFrame = Instance.new("Frame"),
		Games = Instance.new("TextButton"),
		UICorner_11 = Instance.new("UICorner"),
		UICorner_12 = Instance.new("UICorner"),
		PartnersFrame = Instance.new("Frame"),
		Partners = Instance.new("TextButton"),
		UICorner_13 = Instance.new("UICorner"),
		UICorner_14 = Instance.new("UICorner"),
		VersionFrame = Instance.new("Frame"),
		surum = Instance.new("TextButton"),
		UICorner_15 = Instance.new("UICorner"),
		UICorner_16 = Instance.new("UICorner"),
		CreditsFrame = Instance.new("Frame"),
		Credits = Instance.new("TextButton"),
		UICorner_17 = Instance.new("UICorner"),
		UICorner_18 = Instance.new("UICorner"),
		Glow_2 = Instance.new("ImageLabel"),
		Pages = Instance.new("ScrollingFrame"),
		PartnersPage = Instance.new("ScrollingFrame"),
		PartnersText = Instance.new("TextLabel"),
		UICorner_19 = Instance.new("UICorner"),
		PartnerTable = Instance.new("Frame"),
		UICorner_20 = Instance.new("UICorner"),
		UIListLayout_2 = Instance.new("UIListLayout"),
		Partner = Instance.new("TextLabel"),
		UICorner_21 = Instance.new("UICorner"),
		Execute = Instance.new("TextButton"),
		UICorner_22 = Instance.new("UICorner"),
		UIStroke_3 = Instance.new("UIStroke"),
		GamesPage = Instance.new("ScrollingFrame"),
		GamesText = Instance.new("TextLabel"),
		UICorner_23 = Instance.new("UICorner"),
		GameTable = Instance.new("Frame"),
		UICorner_24 = Instance.new("UICorner"),
		UIListLayout_3 = Instance.new("UIListLayout"),
		geym = Instance.new("TextLabel"),
		UICorner_25 = Instance.new("UICorner"),
		Teleport = Instance.new("TextButton"),
		UICorner_26 = Instance.new("UICorner"),
		UIStroke_4 = Instance.new("UIStroke"),
		VersionPage = Instance.new("Frame"),
		UICorner_34 = Instance.new("UICorner"),
		last = Instance.new("TextLabel"),
		UICorner_35 = Instance.new("UICorner"),
		V3R = Instance.new("TextLabel"),
		UICorner_36 = Instance.new("UICorner"),
		updatelog = Instance.new("TextLabel"),
		UICorner_37 = Instance.new("UICorner"),
		UpdateLog = Instance.new("ScrollingFrame"),
		Update = Instance.new("TextLabel"),
		UICorner_38 = Instance.new("UICorner"),
		UIListLayout_5 = Instance.new("UIListLayout"),
		UICorner_39 = Instance.new("UICorner"),
		CreditsPage = Instance.new("Frame"),
		UICorner_40 = Instance.new("UICorner"),
		CreditsTable = Instance.new("ScrollingFrame"),
		YapanlarOmagad = Instance.new("Frame"),
		UIListLayout_6 = Instance.new("UIListLayout"),
		UICorner_41 = Instance.new("UICorner"),
		HomePage = Instance.new("ScrollingFrame"),
		HBR = Instance.new("Frame"),
		UICorner_84 = Instance.new("UICorner"),
		WelcomeBar = Instance.new("Frame"),
		UICorner_85 = Instance.new("UICorner"),
		Welcome = Instance.new("TextLabel"),
		UICorner_86 = Instance.new("UICorner"),
		Bs = Instance.new("Frame"),
		Titles = Instance.new("Frame"),
		UICorner_87 = Instance.new("UICorner"),
		UIListLayout_11 = Instance.new("UIListLayout"),
		Username_16 = Instance.new("TextLabel"),
		UICorner_88 = Instance.new("UICorner"),
		DisPlayName = Instance.new("TextLabel"),
		UICorner_89 = Instance.new("UICorner"),
		UserID = Instance.new("TextLabel"),
		UICorner_90 = Instance.new("UICorner"),
		Admin = Instance.new("TextLabel"),
		UICorner_91 = Instance.new("UICorner"),
		Role = Instance.new("TextLabel"),
		UICorner_92 = Instance.new("UICorner"),
		Role_2 = Instance.new("TextLabel"),
		UICorner_93 = Instance.new("UICorner"),
		Role_3 = Instance.new("TextLabel"),
		UICorner_94 = Instance.new("UICorner"),
		UIListLayout_12 = Instance.new("UIListLayout"),
		Mainer = Instance.new("Frame"),
		UICorner_96 = Instance.new("UICorner"),
		name = Instance.new("TextLabel"),
		UICorner_97 = Instance.new("UICorner"),
		display = Instance.new("TextLabel"),
		UICorner_98 = Instance.new("UICorner"),
		iduser = Instance.new("TextLabel"),
		UICorner_99 = Instance.new("UICorner"),
		admim = Instance.new("TextLabel"),
		UICorner_100 = Instance.new("UICorner"),
		role = Instance.new("TextLabel"),
		UICorner_101 = Instance.new("UICorner"),
		exploit = Instance.new("TextLabel"),
		UICorner_102 = Instance.new("UICorner"),
		lastupdate = Instance.new("TextLabel"),
		UICorner_103 = Instance.new("UICorner"),
		Glow_3 = Instance.new("ImageLabel"),
		UICorner_27 = Instance.new("UICorner")
	}

	HawkLoader.HawkLoader.Name = "HawkLoader"
	HawkLoader.HawkLoader.Parent = game.CoreGui
	HawkLoader.HawkLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	HawkLoader.HawkLoader.ResetOnSpawn = false	

	HawkLoader.Main.Name = "Main"
	HawkLoader.Main.Parent = HawkLoader.HawkLoader
	HawkLoader.Main.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Main.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Main.Position = UDim2.new(0.5, -256, 0.5, -158)
	HawkLoader.Main.Size = UDim2.new(0, 512, 0, 317)
	HawkLoader.Main.Visible = false

	HawkLoader.UICorner.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner.Parent = HawkLoader.Main

	HawkLoader.TitleBar.Name = "TitleBar"
	HawkLoader.TitleBar.Parent = HawkLoader.Main
	HawkLoader.TitleBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.TitleBar.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.TitleBar.Size = UDim2.new(0, 512, 0, 35)

	HawkLoader.UICorner_2.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_2.Parent = HawkLoader.TitleBar

	HawkLoader.Title.Name = "Title"
	HawkLoader.Title.Parent = HawkLoader.TitleBar
	HawkLoader.Title.Active = true
	HawkLoader.Title.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Title.BackgroundTransparency = 1.000
	HawkLoader.Title.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Title.Position = UDim2.new(0.0703125, 0, 0, 0)
	HawkLoader.Title.Size = UDim2.new(0, 85, 0, 35)
	HawkLoader.Title.Font = Enum.Font.GothamBold
	HawkLoader.Title.Text = "Hawk HUB"
	HawkLoader.Title.TextColor3 = Color3.fromRGB(212, 212, 212)
	HawkLoader.Title.TextSize = 14.000
	HawkLoader.Title.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.Glow.Name = "Glow"
	HawkLoader.Glow.Parent = HawkLoader.TitleBar
	HawkLoader.Glow.Active = true
	HawkLoader.Glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.Glow.BackgroundTransparency = 1.000
	HawkLoader.Glow.Position = UDim2.new(0, -15, 0, -15)
	HawkLoader.Glow.Size = UDim2.new(1, 30, 1, 30)
	HawkLoader.Glow.ZIndex = 0
	HawkLoader.Glow.Image = "rbxassetid://5028857084"
	HawkLoader.Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	HawkLoader.Glow.ImageTransparency = 0.700
	HawkLoader.Glow.ScaleType = Enum.ScaleType.Slice
	HawkLoader.Glow.SliceCenter = Rect.new(24, 24, 276, 276)

	HawkLoader.Stroke.Name = "Stroke"
	HawkLoader.Stroke.Parent = HawkLoader.TitleBar
	HawkLoader.Stroke.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.Stroke.BackgroundTransparency = 1.000
	HawkLoader.Stroke.BorderColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.Stroke.Position = UDim2.new(0.1953125, 0, 1, 0)
	HawkLoader.Stroke.Size = UDim2.new(0, 412, 0, 0)

	HawkLoader.UICorner_3.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_3.Parent = HawkLoader.Stroke

	HawkLoader.UIStroke.Parent = HawkLoader.Stroke
	HawkLoader.UIStroke.Color = Color3.fromRGB(255, 255, 255)
	HawkLoader.UIStroke.Transparency = 0.900
	HawkLoader.UIStroke.Thickness = 0.800

	HawkLoader.Exit.Name = "Exit"
	HawkLoader.Exit.Parent = HawkLoader.TitleBar
	HawkLoader.Exit.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Exit.BackgroundTransparency = 1.000
	HawkLoader.Exit.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Exit.Position = UDim2.new(0.927734375, 0, 0, 0)
	HawkLoader.Exit.Size = UDim2.new(0, 37, 0, 34)
	HawkLoader.Exit.Font = Enum.Font.GothamBlack
	HawkLoader.Exit.Text = "X"
	HawkLoader.Exit.TextColor3 = Color3.fromRGB(212, 212, 212)
	HawkLoader.Exit.TextSize = 16.000
	HawkLoader.Exit.MouseButton1Down:Connect(function()
		for i, v in pairs(game.CoreGui:GetChildren()) do
			if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
				v:Destroy()
			end
		end
	end)

	HawkLoader.Logo.Name = "Logo"
	HawkLoader.Logo.Parent = HawkLoader.TitleBar
	HawkLoader.Logo.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Logo.BackgroundTransparency = 1.000
	HawkLoader.Logo.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Logo.Position = UDim2.new(0, 0, 0.029, 0)
	HawkLoader.Logo.Size = UDim2.new(0, 36, 0, 33)
	HawkLoader.Logo.Image = "http://www.roblox.com/asset/?id=10179402650"

	HawkLoader.Tabs.Name = "Tabs"
	HawkLoader.Tabs.Parent = HawkLoader.Main
	HawkLoader.Tabs.Active = true
	HawkLoader.Tabs.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Tabs.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Tabs.Position = UDim2.new(0, 0, 0.0930599347, 0)
	HawkLoader.Tabs.Size = UDim2.new(0, 100, 0, 287)

	HawkLoader.UICorner_4.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_4.Parent = HawkLoader.Tabs

	HawkLoader.Stroke_2.Name = "Stroke"
	HawkLoader.Stroke_2.Parent = HawkLoader.Tabs
	HawkLoader.Stroke_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.Stroke_2.BackgroundTransparency = 1.000
	HawkLoader.Stroke_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.Stroke_2.Position = UDim2.new(1, 0, 0.0174216032, 0)
	HawkLoader.Stroke_2.Size = UDim2.new(0, 0, 0, 282)

	HawkLoader.UICorner_5.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_5.Parent = HawkLoader.Stroke_2

	HawkLoader.UIStroke_2.Parent = HawkLoader.Stroke_2
	HawkLoader.UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
	HawkLoader.UIStroke_2.Transparency = 0.900
	HawkLoader.UIStroke_2.Thickness = 0.800

	HawkLoader.TabsContainer.Name = "TabsContainer"
	HawkLoader.TabsContainer.Parent = HawkLoader.Tabs
	HawkLoader.TabsContainer.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.TabsContainer.BackgroundTransparency = 1.000
	HawkLoader.TabsContainer.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.TabsContainer.Position = UDim2.new(0, 0, 0.0452961661, 0)
	HawkLoader.TabsContainer.Size = UDim2.new(0, 100, 0, 274)

	HawkLoader.UICorner_6.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_6.Parent = HawkLoader.TabsContainer

	HawkLoader.UIListLayout.Parent = HawkLoader.TabsContainer
	HawkLoader.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	HawkLoader.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	HawkLoader.UIListLayout.Padding = UDim.new(0, 8)

	HawkLoader.HomeFrame.Name = "HomeFrame"
	HawkLoader.HomeFrame.Parent = HawkLoader.TabsContainer
	HawkLoader.HomeFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.HomeFrame.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.HomeFrame.Size = UDim2.new(0, 84, 0, 26)

	HawkLoader.UICorner_7.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_7.Parent = HawkLoader.HomeFrame

	HawkLoader.Home.Name = "Home"
	HawkLoader.Home.Parent = HawkLoader.HomeFrame
	HawkLoader.Home.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Home.BackgroundTransparency = 1.000
	HawkLoader.Home.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Home.Size = UDim2.new(0, 84, 0, 26)
	HawkLoader.Home.Font = Enum.Font.GothamBold
	HawkLoader.Home.Text = "Home"
	HawkLoader.Home.TextColor3 = Color3.fromRGB(213, 213, 213)
	HawkLoader.Home.TextSize = 15.000
	HawkLoader.Home.TextWrapped = true

	HawkLoader.UICorner_8.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_8.Parent = HawkLoader.Home

	HawkLoader.LoadFrame.Name = "LoadFrame"
	HawkLoader.LoadFrame.Parent = HawkLoader.TabsContainer
	HawkLoader.LoadFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.LoadFrame.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.LoadFrame.Size = UDim2.new(0, 84, 0, 26)

	HawkLoader.Load.Name = "Load"
	HawkLoader.Load.Parent = HawkLoader.LoadFrame
	HawkLoader.Load.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Load.BackgroundTransparency = 1.000
	HawkLoader.Load.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Load.Size = UDim2.new(0, 84, 0, 26)
	HawkLoader.Load.Font = Enum.Font.GothamBold
	HawkLoader.Load.Text = "Load"
	HawkLoader.Load.TextColor3 = Color3.fromRGB(213, 213, 213)
	HawkLoader.Load.TextSize = 15.000
	HawkLoader.Load.TextWrapped = true

	HawkLoader.UICorner_9.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_9.Parent = HawkLoader.Load

	HawkLoader.UICorner_10.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_10.Parent = HawkLoader.LoadFrame

	HawkLoader.GamesFrame.Name = "GamesFrame"
	HawkLoader.GamesFrame.Parent = HawkLoader.TabsContainer
	HawkLoader.GamesFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.GamesFrame.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.GamesFrame.Size = UDim2.new(0, 84, 0, 26)

	HawkLoader.Games.Name = "Games"
	HawkLoader.Games.Parent = HawkLoader.GamesFrame
	HawkLoader.Games.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Games.BackgroundTransparency = 1.000
	HawkLoader.Games.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Games.Size = UDim2.new(0, 84, 0, 26)
	HawkLoader.Games.Font = Enum.Font.GothamBold
	HawkLoader.Games.Text = "Games"
	HawkLoader.Games.TextColor3 = Color3.fromRGB(213, 213, 213)
	HawkLoader.Games.TextSize = 15.000
	HawkLoader.Games.TextWrapped = true

	HawkLoader.UICorner_11.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_11.Parent = HawkLoader.Games

	HawkLoader.UICorner_12.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_12.Parent = HawkLoader.GamesFrame

	HawkLoader.PartnersFrame.Name = "PartnersFrame"
	HawkLoader.PartnersFrame.Parent = HawkLoader.TabsContainer
	HawkLoader.PartnersFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.PartnersFrame.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.PartnersFrame.Size = UDim2.new(0, 84, 0, 26)

	HawkLoader.Partners.Name = "Partners"
	HawkLoader.Partners.Parent = HawkLoader.PartnersFrame
	HawkLoader.Partners.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Partners.BackgroundTransparency = 1.000
	HawkLoader.Partners.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Partners.Size = UDim2.new(0, 84, 0, 26)
	HawkLoader.Partners.Font = Enum.Font.GothamBold
	HawkLoader.Partners.Text = "Scripts"
	HawkLoader.Partners.TextColor3 = Color3.fromRGB(213, 213, 213)
	HawkLoader.Partners.TextSize = 15.000
	HawkLoader.Partners.TextWrapped = true

	HawkLoader.UICorner_13.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_13.Parent = HawkLoader.Partners

	HawkLoader.UICorner_14.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_14.Parent = HawkLoader.PartnersFrame

	HawkLoader.VersionFrame.Name = "VersionFrame"
	HawkLoader.VersionFrame.Parent = HawkLoader.TabsContainer
	HawkLoader.VersionFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.VersionFrame.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.VersionFrame.Size = UDim2.new(0, 84, 0, 26)

	HawkLoader.surum.Name = "surum"
	HawkLoader.surum.Parent = HawkLoader.VersionFrame
	HawkLoader.surum.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.surum.BackgroundTransparency = 1.000
	HawkLoader.surum.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.surum.Size = UDim2.new(0, 84, 0, 26)
	HawkLoader.surum.Font = Enum.Font.GothamBold
	HawkLoader.surum.Text = "Version"
	HawkLoader.surum.TextColor3 = Color3.fromRGB(213, 213, 213)
	HawkLoader.surum.TextSize = 15.000
	HawkLoader.surum.TextWrapped = true

	HawkLoader.UICorner_15.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_15.Parent = HawkLoader.surum

	HawkLoader.UICorner_16.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_16.Parent = HawkLoader.VersionFrame

	HawkLoader.CreditsFrame.Name = "CreditsFrame"
	HawkLoader.CreditsFrame.Parent = HawkLoader.TabsContainer
	HawkLoader.CreditsFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.CreditsFrame.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.CreditsFrame.Size = UDim2.new(0, 84, 0, 26)

	HawkLoader.Credits.Name = "Credits"
	HawkLoader.Credits.Parent = HawkLoader.CreditsFrame
	HawkLoader.Credits.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Credits.BackgroundTransparency = 1.000
	HawkLoader.Credits.BorderColor3 = Color3.fromRGB(45, 45, 45)
	HawkLoader.Credits.Size = UDim2.new(0, 84, 0, 26)
	HawkLoader.Credits.Font = Enum.Font.GothamBold
	HawkLoader.Credits.Text = "Credits"
	HawkLoader.Credits.TextColor3 = Color3.fromRGB(213, 213, 213)
	HawkLoader.Credits.TextSize = 15.000
	HawkLoader.Credits.TextWrapped = true

	HawkLoader.UICorner_17.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_17.Parent = HawkLoader.Credits

	HawkLoader.UICorner_18.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_18.Parent = HawkLoader.CreditsFrame

	HawkLoader.Glow_2.Name = "Glow"
	HawkLoader.Glow_2.Parent = HawkLoader.Main
	HawkLoader.Glow_2.Active = true
	HawkLoader.Glow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.Glow_2.BackgroundTransparency = 1.000
	HawkLoader.Glow_2.Position = UDim2.new(0, -15, 0, -15)
	HawkLoader.Glow_2.Size = UDim2.new(1, 30, 1, 30)
	HawkLoader.Glow_2.ZIndex = 0
	HawkLoader.Glow_2.Image = "rbxassetid://5028857084"
	HawkLoader.Glow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
	HawkLoader.Glow_2.ScaleType = Enum.ScaleType.Slice
	HawkLoader.Glow_2.SliceCenter = Rect.new(24, 24, 276, 276)

	HawkLoader.Pages.Name = "Pages"
	HawkLoader.Pages.Parent = HawkLoader.Main
	HawkLoader.Pages.Active = true
	HawkLoader.Pages.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Pages.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Pages.Position = UDim2.new(0.194999993, 0, 0.109999985, 0)
	HawkLoader.Pages.Size = UDim2.new(0, 411, 0, 281)
	HawkLoader.Pages.ZIndex = 0
	HawkLoader.Pages.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	HawkLoader.Pages.CanvasSize = UDim2.new(0, 0, 0, 0)
	HawkLoader.Pages.ScrollBarThickness = 0
	HawkLoader.Pages.ScrollingEnabled = false

	HawkLoader.PartnersPage.Name = "PartnersPage"
	HawkLoader.PartnersPage.Parent = HawkLoader.Pages
	HawkLoader.PartnersPage.Active = true
	HawkLoader.PartnersPage.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.PartnersPage.BackgroundTransparency = 1.000
	HawkLoader.PartnersPage.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.PartnersPage.BorderSizePixel = 0
	HawkLoader.PartnersPage.Position = UDim2.new(2.01699996, 0, 0, 0)
	HawkLoader.PartnersPage.Size = UDim2.new(0, 404, 0, 282)
	HawkLoader.PartnersPage.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	HawkLoader.PartnersPage.CanvasSize = UDim2.new(0, 0, 1.70000005, 0)
	HawkLoader.PartnersPage.ScrollBarThickness = 4

	HawkLoader.PartnersText.Name = "PartnersText"
	HawkLoader.PartnersText.Parent = HawkLoader.PartnersPage
	HawkLoader.PartnersText.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.PartnersText.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.PartnersText.Position = UDim2.new(0.0201005023, 0, 0.0384230502, 0)
	HawkLoader.PartnersText.Size = UDim2.new(0, 78, 0, 21)
	HawkLoader.PartnersText.Font = Enum.Font.GothamBold
	HawkLoader.PartnersText.Text = "Scripts:"
	HawkLoader.PartnersText.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.PartnersText.TextSize = 14.000
	HawkLoader.PartnersText.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_19.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_19.Parent = HawkLoader.PartnersText

	HawkLoader.PartnerTable.Name = "PartnerTable"
	HawkLoader.PartnerTable.Parent = HawkLoader.PartnersPage
	HawkLoader.PartnerTable.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.PartnerTable.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.PartnerTable.Position = UDim2.new(0.0201005023, 0, 0.0963704661, 0)
	HawkLoader.PartnerTable.Size = UDim2.new(0, 207, 0, 199)

	HawkLoader.UICorner_20.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_20.Parent = HawkLoader.PartnerTable

	HawkLoader.UIListLayout_2.Parent = HawkLoader.PartnerTable
	HawkLoader.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	HawkLoader.UIListLayout_2.Padding = UDim.new(0, 8)
	HawkLoader.PartnersPage.CanvasSize = UDim2.new(0, 0, 0, HawkLoader.UIListLayout_2.AbsoluteContentSize.Y)

	local Partners = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Partners.lua",true))()
	for i, v in pairs(Partners) do
		local Partner = HawkLoader.Partner:Clone()
		local uicorner = HawkLoader.UICorner_21:Clone()
		local Execute = HawkLoader.Execute:Clone()
		local uicorner1 = HawkLoader.UICorner_22:Clone()
		local uistroke = HawkLoader.UIStroke_3:Clone()

		Partner.Name = "Partner"
		Partner.Parent = HawkLoader.PartnerTable
		Partner.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Partner.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Partner.Font = Enum.Font.GothamBold
		Partner.Text = i
		Partner.TextColor3 = Color3.fromRGB(255, 255, 255)
		Partner.TextSize = 14.000
		Partner.TextXAlignment = Enum.TextXAlignment.Left
		Partner.Size = UDim2.new(0, #Partner.Text+50,0, 21)

		uicorner.CornerRadius = UDim.new(0, 5)
		uicorner.Parent = Partner

		Execute.Name = "Execute"
		Execute.Parent = Partner
		Execute.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
		Execute.Position = UDim2.new(1.18747365, 0, 0.0476190373, 0)
		Execute.Size = UDim2.new(0, 65, 0, 19)
		Execute.Font = Enum.Font.FredokaOne
		Execute.Text = "Execute!"
		Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
		Execute.TextSize = 14.000
		Execute.MouseButton1Down:Connect(function()
			ripple(Execute,Mouse.X,Mouse.Y)
			wait(0.4)
			loadstring(game:HttpGet(v,true))()
		end)

		uicorner1.CornerRadius = UDim.new(0, 5)
		uicorner1.Parent = Execute

		uistroke.Parent = Execute
		uistroke.Color = Color3.fromRGB(255, 255, 255)
		uistroke.Transparency = 0.700
		uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

		HawkLoader.PartnersPage.CanvasSize = UDim2.new(0, 0, 0, HawkLoader.UIListLayout_2.AbsoluteContentSize.Y)

	end

	HawkLoader.GamesPage.Name = "GamesPage"
	HawkLoader.GamesPage.Parent = HawkLoader.Pages
	HawkLoader.GamesPage.Active = true
	HawkLoader.GamesPage.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.GamesPage.BackgroundTransparency = 1.000
	HawkLoader.GamesPage.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.GamesPage.BorderSizePixel = 0
	HawkLoader.GamesPage.Position = UDim2.new(2.01699996, 0, 0, 0)
	HawkLoader.GamesPage.Size = UDim2.new(0, 405, 0, 282)
	HawkLoader.GamesPage.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	HawkLoader.GamesPage.CanvasSize = UDim2.new(0, 0, 1.70000005, 0)
	HawkLoader.GamesPage.ScrollBarThickness = 5

	HawkLoader.GamesText.Name = "GamesText"
	HawkLoader.GamesText.Parent = HawkLoader.GamesPage
	HawkLoader.GamesText.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.GamesText.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.GamesText.Position = UDim2.new(0.0201005023, 0, 0.0384230502, 0)
	HawkLoader.GamesText.Size = UDim2.new(0, 78, 0, 21)
	HawkLoader.GamesText.Font = Enum.Font.GothamBold
	HawkLoader.GamesText.Text = "Games:"
	HawkLoader.GamesText.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.GamesText.TextSize = 14.000
	HawkLoader.GamesText.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_23.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_23.Parent = HawkLoader.GamesText

	HawkLoader.GameTable.Name = "GameTable"
	HawkLoader.GameTable.Parent = HawkLoader.GamesPage
	HawkLoader.GameTable.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.GameTable.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.GameTable.Position = UDim2.new(0.0201005023, 0, 0.0963704661, 0)
	HawkLoader.GameTable.Size = UDim2.new(0, 207, 0, 199)

	HawkLoader.UICorner_24.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_24.Parent = HawkLoader.GameTable

	HawkLoader.UIListLayout_3.Parent = HawkLoader.GameTable
	HawkLoader.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	HawkLoader.UIListLayout_3.Padding = UDim.new(0, 8)
	HawkLoader.GamesPage.CanvasSize = UDim2.new(0, 0, 0, HawkLoader.UIListLayout_3.AbsoluteContentSize.Y)

	local geyms = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables//TeleportGames.lua",true))()
	for i, v in pairs(geyms) do
		local geym = HawkLoader.geym:Clone()
		local geymcorner = HawkLoader.UICorner_25:Clone()
		local tp = HawkLoader.Teleport:Clone()
		local tpcorner = HawkLoader.UICorner_26:Clone()
		local uistroke = HawkLoader.UIStroke_4:Clone()

		geym.Name = "geym"
		geym.Parent = HawkLoader.GameTable
		geym.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		geym.BorderColor3 = Color3.fromRGB(36, 36, 36)
		geym.Size = UDim2.new(0, 61, 0, 21)
		geym.Font = Enum.Font.GothamBold
		geym.Text = i
		geym.TextColor3 = Color3.fromRGB(255, 255, 255)
		geym.TextSize = 14.000
		geym.TextXAlignment = Enum.TextXAlignment.Left
		geym.Size = UDim2.new(0, #geym.Text+60,0, 21)

		geymcorner.CornerRadius = UDim.new(0, 5)
		geymcorner.Parent = geym

		tp.Name = "Teleport"
		tp.Parent = geym
		tp.BackgroundColor3 = Color3.fromRGB(85, 0, 255)
		tp.Position = UDim2.new(1, 0, 0.0476190411, 0)
		tp.Size = UDim2.new(0, 65, 0, 19)
		tp.Font = Enum.Font.FredokaOne
		tp.Text = "Teleport!"
		tp.TextColor3 = Color3.fromRGB(255, 255, 255)
		tp.TextSize = 14.000
		tp.MouseButton1Down:Connect(function()
			ripple(tp,Mouse.X,Mouse.Y)
			wait(0.4)
			game:GetService("TeleportService"):Teleport(v, game.Players.LocalPlayer) 
		end)

		tpcorner.CornerRadius = UDim.new(0, 5)
		tpcorner.Parent = tp

		uistroke.Parent = tp
		uistroke.Color = Color3.fromRGB(255, 255, 255)
		uistroke.Transparency = 0.700
		uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

		HawkLoader.GamesPage.CanvasSize = UDim2.new(0, 0, 0, HawkLoader.UIListLayout_3.AbsoluteContentSize.Y)

	end

	HawkLoader.LoadPage.Name = "LoadPage"
	HawkLoader.LoadPage.Parent = HawkLoader.Pages
	HawkLoader.LoadPage.Active = true
	HawkLoader.LoadPage.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.LoadPage.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.LoadPage.Position = UDim2.new(2.01699996, 0, 0, 0)
	HawkLoader.LoadPage.Size = UDim2.new(0, 404, 0, 282)

	HawkLoader.UICorner_27.Parent = HawkLoader.LoadPage

	local LoadFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Load = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")

	LoadFrame.Name = "LoadFrame"
	LoadFrame.Parent = HawkLoader.LoadPage
	LoadFrame.Active = true
	LoadFrame.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	LoadFrame.BorderColor3 = Color3.fromRGB(48, 48, 48)
	LoadFrame.Position = UDim2.new(0.103960395, 0, 0.388758868, 0)
	LoadFrame.Size = UDim2.new(0, 312, 0, 77)

	UICorner_2.Parent = LoadFrame

	Load.Name = "Load"
	Load.Parent = LoadFrame
	Load.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	Load.BackgroundTransparency = 1.000
	Load.BorderColor3 = Color3.fromRGB(48, 48, 48)
	Load.Size = UDim2.new(0, 312, 0, 79)
	Load.Font = Enum.Font.GothamBold
	Load.Text = "LOAD!"
	Load.TextColor3 = Color3.fromRGB(255, 122, 122)
	Load.TextSize = 17.000
	Load.MouseButton1Down:Connect(function()
		ripple(Load, Mouse.X, Mouse.Y)
		wait(0.1)
		Intro()
		for i, v in pairs(game.CoreGui:GetChildren()) do
			if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
				v:Destroy()
			end
		end

		local TweenService = game:GetService("TweenService") 
		local Load = Instance.new("ScreenGui")
		local Main = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Logo = Instance.new("ImageLabel")
		local Hub = Instance.new("TextLabel")
		local UIGradient = Instance.new("UIGradient")
		local versi = Instance.new("TextLabel")
		local UIGradient_2 = Instance.new("UIGradient")
		local By = Instance.new("TextLabel")
		local UIGradient_3 = Instance.new("UIGradient")
		local Glow = Instance.new("ImageLabel")
		local Glow_2 = Instance.new("ImageLabel")
		local LoadBTN = Instance.new("Frame")
		local Load_2 = Instance.new("TextButton")
		local UICorner_2 = Instance.new("UICorner")
		local UICorner_3 = Instance.new("UICorner")
		local UIstroke = Instance.new("UIStroke")

		Load.Name = "Load"
		Load.Parent = game.CoreGui
		Load.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Load.ResetOnSpawn = false

		Main.Name = "Main"
		Main.Parent = Load
		Main.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
		Main.BackgroundTransparency = 1.000
		Main.BorderColor3 = Color3.fromRGB(26, 26, 26)
		Main.Position = UDim2.new(0.5, -143, 0.5, -137)
		Main.Size = UDim2.new(0, 306, 0, 274)
		Main.Visible = false

		UICorner.CornerRadius = UDim.new(0, 5)
		UICorner.Parent = Main

		Logo.Name = "Logo"
		Logo.Parent = Main
		Logo.Active = true
		Logo.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
		Logo.BackgroundTransparency = 1.000
		Logo.BorderColor3 = Color3.fromRGB(26, 26, 26)
		Logo.Position = UDim2.new(0.336601317, 0, 0.105839416, 0)
		Logo.Size = UDim2.new(0, 100, 0, 100)
		Logo.Image = "http://www.roblox.com/asset/?id=10179402650"
		Logo.ImageTransparency = 1.000

		Hub.Name = "Hub"
		Hub.Parent = Main
		Hub.Active = true
		Hub.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
		Hub.BackgroundTransparency = 1.000
		Hub.BorderColor3 = Color3.fromRGB(26, 26, 26)
		Hub.Position = UDim2.new(0.173202619, 0, 0.343065709, 0)
		Hub.Size = UDim2.new(0, 200, 0, 33)
		Hub.Font = Enum.Font.GothamBold
		Hub.Text = "Hawk HUB"
		Hub.TextColor3 = Color3.fromRGB(255, 255, 255)
		Hub.TextSize = 20.000
		Hub.TextTransparency = 1.000

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 85, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 0, 255))}
		UIGradient.Parent = Hub

		local V3RM = loadstring(game:HttpGet('https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Version.lua'))()
		versi.Name = "versi"
		versi.Parent = Main
		versi.Active = true
		versi.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
		versi.BackgroundTransparency = 1.000
		versi.BorderColor3 = Color3.fromRGB(26, 26, 26)
		versi.Position = UDim2.new(0.173202619, 0, 0.463503689, 0)
		versi.Size = UDim2.new(0, 200, 0, 33)
		versi.Font = Enum.Font.GothamBold
		versi.Text = "Version: " .. V3RM
		versi.TextColor3 = Color3.fromRGB(255, 255, 255)
		versi.TextSize = 20.000
		versi.TextTransparency = 1.000

		UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 85, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 0, 255))}
		UIGradient_2.Parent = versi

		By.Name = "By"
		By.Parent = Main
		By.Active = true
		By.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
		By.BackgroundTransparency = 1.000
		By.BorderColor3 = Color3.fromRGB(26, 26, 26)
		By.Position = UDim2.new(0.173202619, 0, 0.87956202, 0)
		By.Size = UDim2.new(0, 200, 0, 25)
		By.Font = Enum.Font.GothamBold
		By.TextColor3 = Color3.fromRGB(255, 255, 255)
		By.TextSize = 20.000
		By.TextTransparency = 1.000
		By.Text = "Made By |Hawk Softworks|"

		UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))}
		UIGradient_3.Parent = By

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
		Glow.ImageTransparency = 1.000
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
		Glow_2.ImageTransparency = 1.000
		Glow_2.ScaleType = Enum.ScaleType.Slice
		Glow_2.SliceCenter = Rect.new(24, 24, 276, 276)

		LoadBTN.Name = "LoadBTN"
		LoadBTN.Parent = Main
		LoadBTN.Active = true
		LoadBTN.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		LoadBTN.BackgroundTransparency = 1.000
		LoadBTN.BorderColor3 = Color3.fromRGB(35, 35, 35)
		LoadBTN.Position = UDim2.new(0.173202619, 0, 0.624087572, 0)
		LoadBTN.Size = UDim2.new(0, 200, 0, 50)

		Load_2.Name = "Load"
		Load_2.Parent = LoadBTN
		Load_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Load_2.BackgroundTransparency = 1.000
		Load_2.BorderColor3 = Color3.fromRGB(35, 35, 35)
		Load_2.Size = UDim2.new(0, 200, 0, 50)
		Load_2.Font = Enum.Font.GothamBlack
		Load_2.Text = "Load!"
		Load_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		Load_2.TextSize = 14.000
		Load_2.TextTransparency = 1.000

		UICorner_2.Parent = Load_2

		UICorner_3.Parent = LoadBTN

		local UIStroke = Instance.new("UIStroke")
		local uig = Instance.new("UIGradient")

		UIStroke.Parent = Main
		UIStroke.Color = Color3.fromRGB(255, 255, 255)
		UIStroke.ApplyStrokeMode = "Border"
		UIStroke.LineJoinMode = "Round"
		UIStroke.Thickness = 3
		UIStroke.Transparency = 1
		uig.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(62, 255, 100)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 0))}
		uig.Parent = UIStroke

		function close()
			for i, v in pairs(Load:GetDescendants()) do
				if v:IsA("ImageLabel") then
					TweenService:Create(
						v,
						TweenInfo.new(.6, Enum.EasingStyle.Back),
						{ImageTransparency = 1}
					):Play()
				elseif v:IsA("Frame") then
					TweenService:Create(
						v,
						TweenInfo.new(.6, Enum.EasingStyle.Back),
						{BackgroundTransparency = 1}
					):Play()
				elseif v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(.6, Enum.EasingStyle.Back),
						{TextTransparency = 1}
					):Play()
					TweenService:Create(
						v,
						TweenInfo.new(.6, Enum.EasingStyle.Back),
						{BackgroundTransparency = 1}
					):Play()
				elseif v:IsA("TextLabel") then
					TweenService:Create(
						v,
						TweenInfo.new(.6, Enum.EasingStyle.Back),
						{TextTransparency = 1}
					):Play()
				elseif v:IsA("UIStroke") then
					TweenService:Create(
						v,
						TweenInfo.new(.6, Enum.EasingStyle.Back),
						{Transparency = 1}
					):Play()
				end
			end
		end


		Main.Visible = true
		TweenService:Create(
			Main,
			TweenInfo.new(.6, Enum.EasingStyle.Linear),
			{BackgroundTransparency = 0}
		):Play()
		for i, v in pairs(Main:GetChildren()) do
			if v:IsA("ImageLabel") then
				TweenService:Create(
					v,
					TweenInfo.new(.6, Enum.EasingStyle.Linear),
					{ImageTransparency = 0}
				):Play()
			elseif v:IsA("UIGradient") then
				TweenService:Create(
					v,
					TweenInfo.new(.6, Enum.EasingStyle.Linear),
					{Transparency = 0}
				):Play()
			elseif v:IsA("UIStroke") then
				TweenService:Create(
					v,
					TweenInfo.new(.6, Enum.EasingStyle.Linear),
					{Transparency = 0}
				):Play()
			end
		end
		wait(0.1)
		local ui = Instance.new("UIStroke")

		ui.Parent = LoadBTN
		ui.Color = Color3.fromRGB(111, 111, 111)
		ui.ApplyStrokeMode = "Border"
		ui.LineJoinMode = "Round"
		ui.Thickness = 1
		ui.Transparency = 1

		TweenService:Create(
			Logo,
			TweenInfo.new(.6, Enum.EasingStyle.Linear),
			{ImageTransparency = 0}
		):Play()
		Logo:TweenPosition(UDim2.new(0.337, 0,-0, 0))
		wait(1)
		TweenService:Create(
			Hub,
			TweenInfo.new(.5, Enum.EasingStyle.Back),
			{TextTransparency = 0}
		):Play()
		wait(0.5)
		TweenService:Create(
			versi,
			TweenInfo.new(.5, Enum.EasingStyle.Back),
			{TextTransparency = 0}
		):Play()
		wait(0.5)
		TweenService:Create(
			By,
			TweenInfo.new(.5, Enum.EasingStyle.Back),
			{TextTransparency = 0}
		):Play()
		TweenService:Create(
			LoadBTN,
			TweenInfo.new(.5, Enum.EasingStyle.Back),
			{BackgroundTransparency = 0}
		):Play()
		TweenService:Create(
			Load_2,
			TweenInfo.new(.5, Enum.EasingStyle.Back),
			{TextTransparency = 0}
		):Play()
		TweenService:Create(
			ui,
			TweenInfo.new(.5, Enum.EasingStyle.Back),
			{Transparency = 0.7}
		):Play()

		Load_2.MouseButton1Down:Connect(function()
			close()
			wait(0.1)
			for i, v in pairs(game.CoreGui:GetChildren()) do
				if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
					v:Destroy()
				end
			end


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
				local hcmds = Instance.new("TextLabel")
				local hclosecmds = Instance.new("TextLabel")
				local hjumppower = Instance.new("TextLabel")
				local hwalkspeed = Instance.new("TextLabel")
				local hnoprotect = Instance.new("TextLabel")
				local SearcBar = Instance.new("TextBox")
				local UICorner_2 = Instance.new("UICorner")

				HawkAdmin.Name = "HawkAdmin"
				HawkAdmin.Parent = game.CoreGui
				HawkAdmin.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				HawkAdmin.ResetOnSpawn = false

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
				hbring.Text = "h!bring (Name)"
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
				hkick.Text = "h!kick (Name)"
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
				hrejjoin.Text = "h!rejoin (Name)"
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

				hnoprotect.Name = "h!noprotect"
				hnoprotect.Parent = Commands
				hnoprotect.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
				hnoprotect.BackgroundTransparency = 1.000
				hnoprotect.BorderColor3 = Color3.fromRGB(28, 28, 28)
				hnoprotect.Size = UDim2.new(0, 247, 0, 16)
				hnoprotect.Font = Enum.Font.GothamMedium
				hnoprotect.Text = "h!slm (arg)"
				hnoprotect.TextColor3 = Color3.fromRGB(180, 180, 180)
				hnoprotect.TextSize = 14.000
				hnoprotect.TextXAlignment = Enum.TextXAlignment.Left

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

				lplayer = game:GetService("Players").LocalPlayer
				function GetPlayer(String) -- Credit to Timeless/xFunnieuss
					local Found = {}
					local strl = String:lower()
					if strl == "all" then
						for i,v in pairs(game:GetService("Players"):GetPlayers()) do
							table.insert(Found,v)
						end
					elseif strl == "others" then
						for i,v in pairs(game:GetService("Players"):GetPlayers()) do
							if v.Name ~= lplayer.Name then
								table.insert(Found,v)
							end
						end  
					elseif strl == "me" then
						for i,v in pairs(game:GetService("Players"):GetPlayers()) do
							if v.Name == lplayer.Name then
								table.insert(Found,v)
							end
						end  
					else
						for i,v in pairs(game:GetService("Players"):GetPlayers()) do
							if v.Name:lower():sub(1, #String) == String:lower() then
								table.insert(Found,v)
							end
						end    
					end
					return Found    
				end

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

					if object.Message == prefix .. "bring all" or object.Message == prefix .. "bring All" then
						if game.Players.LocalPlayer.Name == player then
							local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(player).Character.HumanoidRootPart.CFrame
							wait()
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
						else
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(player).Character.HumanoidRootPart.CFrame
						end		
					end

					if string.sub(object.Message, 0, 8) == prefix .. "bring " then
						if string.sub(object.Message, 9) == game.Players.LocalPlayer.Name or string.sub(object.Message, 9) == game.Players.LocalPlayer.DisplayName then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(player).Character.HumanoidRootPart.CFrame
						end
					end

					if string.sub(object.Message, 0, 11) == prefix .. "addadmin " then
						if game.Players:FindFirstChild(tostring(string.sub(object.Message, 12))) then
							addadmin(tostring(string.sub(object.Message, 12)))
						end
					end

					if object.Message == prefix .. "kick all" then
						game.Players.LocalPlayer:Kick("You've been kicked by" .. player)
					end

					if string.sub(object.Message, 0, 7) == prefix .. "kick " then
						if string.sub(object.Message, 8) == game.Players.LocalPlayer.Name or string.sub(object.Message, 8) == game.Players.LocalPlayer.DisplayName then
							game.Players.LocalPlayer:Kick("You've been kicked by" .. player)
						end
					end

					if object.Message == prefix .. "users" then
						game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I use Hawk HUB","All")
					end

					if string.sub(object.Message, 0, 6) == prefix .. "slm " then
						for i,v in pairs(game.CoreGui:GetDescendants()) do
							if v.Name == "Intro" then
								v:Destroy()
							end
						end

						local Intro = Instance.new("ScreenGui")
						local Main = Instance.new("Frame")
						local Title = Instance.new("TextLabel")
						local UICorner = Instance.new("UICorner")
						local texts = Instance.new("TextLabel")
						local Glow = Instance.new("ImageLabel")
						local UICorner_2 = Instance.new("UICorner")
						local Flash = Instance.new("Frame")
						local UICorner_3 = Instance.new("UICorner")

						Intro.Name = "Intro"
						Intro.Parent = game.CoreGui
						Intro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
						Intro.ResetOnSpawn = false

						Main.Name = "Main"
						Main.Parent = Intro
						Main.Active = true
						Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
						Main.BackgroundTransparency = 1.000
						Main.Position = UDim2.new(0.740999997, 10, 1, -70)
						Main.Size = UDim2.new(0, 332, 0, 60)
						Main.Visible = false

						Title.Name = "Title"
						Title.Parent = Main
						Title.BackgroundTransparency = 1.000
						Title.Position = UDim2.new(0, 10, 0, 8)
						Title.Size = UDim2.new(1, -40, 0, 16)
						Title.Font = Enum.Font.GothamSemibold
						Title.Text = "Hawk HUB"
						Title.TextColor3 = Color3.fromRGB(255, 255, 255)
						Title.TextSize = 14.000
						Title.TextTransparency = 1.000
						Title.TextXAlignment = Enum.TextXAlignment.Left

						UICorner.CornerRadius = UDim.new(0, 5)
						UICorner.Parent = Main

						texts.Name = "texts"
						texts.Parent = Main
						texts.BackgroundTransparency = 1.000
						texts.Position = UDim2.new(0, 10, 1, -24)
						texts.Size = UDim2.new(1, -40, 0, 16)
						texts.Font = Enum.Font.Gotham
						texts.Text = string.sub(object.Message, 7)
						texts.TextColor3 = Color3.fromRGB(255, 255, 255)
						texts.TextSize = 14.000
						texts.TextTransparency = 1.000
						texts.TextXAlignment = Enum.TextXAlignment.Left

						Glow.Name = "Glow"
						Glow.Parent = Main
						Glow.BackgroundTransparency = 1.000
						Glow.Position = UDim2.new(0, -15, 0, -15)
						Glow.Size = UDim2.new(1, 30, 1, 30)
						Glow.Image = "rbxassetid://5028857084"
						Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
						Glow.ImageTransparency = 1.000
						Glow.ScaleType = Enum.ScaleType.Slice
						Glow.SliceCenter = Rect.new(24, 24, 276, 276)

						UICorner_2.CornerRadius = UDim.new(0, 5)
						UICorner_2.Parent = Glow

						Flash.Name = "Flash"
						Flash.Parent = Intro
						Flash.Active = true
						Flash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Flash.BorderSizePixel = 0
						Flash.Position = UDim2.new(0.740999997, 10, 1, -70)
						Flash.Size = UDim2.new(0, 0, 0, 60)
						Flash.Visible = false

						UICorner_3.CornerRadius = UDim.new(0, 5)
						UICorner_3.Parent = Flash

						Main.Visible = true
						for i = 1,10 do
							texts.TextTransparency = 1-(i/10)
							Title.TextTransparency = 1-(i/10)
							Main.BackgroundTransparency = 1-(i/10)
							Glow.ImageTransparency = 1-(i/10)
							wait()
						end
						wait(3)
						for i = 1,10 do
							texts.TextTransparency = i/10
							Title.TextTransparency = i/10
							Main.BackgroundTransparency = i/10
							Glow.ImageTransparency = i/10
							wait()
						end

						for i,v in pairs(game.CoreGui:GetDescendants()) do
							if v.Name == "Intro" then
								v:Destroy()
							end
						end

					end

					if object.Message == prefix .. "kill all" then
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
					end

					if string.sub(object.Message, 0, 7) == prefix .. "kill " then
						if string.sub(object.Message, 8) == game.Players.LocalPlayer.Name or string.sub(object.Message, 8) == game.Players.LocalPlayer.DisplayName then
							game.Players.LocalPlayer.Character.Humanoid.Health = 0
						end
					end

					if object.Message == prefix .. "loadhawkloader" then
						loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHanki/Hawk/main/HUB/Loader", true))()
					end

					if object.Message == prefix .. "loadhawk" then
						_Hawk = "iVpl7IrqpMm9dD9rChcL8dtTJWV2kAvTGZbBdMuCezzsPluYJnvDHrKMmjEks6d33hNd8q1eBAI7q2WxgDZ2mlNXxFMiAuY8K7SpC2gGCjuE6RZksxwvdjvMIdojUYH4MDkO6l9Eckwvj3W6YuArB6Qelzb2pJOpWKpsTRdo43M0gpTn6GakkFnZxPPQPZbJe4YsunXo0EqBQvbtgUH4zmymRyR3EaKJWA9eGl3bsy4HEJ7f7sccQiI8peC4Jeks8p0pDFMTlG9VWHrhQG6SFKQvSpYbujs9vojims1u1PR32Bw2q83giw23hf8nQMXl3cZQoTFlk5OYCHhowVMSYd9YRixyfwB1WCJ" 
						loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Nurdisina.lua", true))()
					end

					if object.Message == prefix .. "rejoin all" then
						local ts = game:GetService("TeleportService")
						local p = game:GetService("Players").LocalPlayer
						ts:Teleport(game.PlaceId, p)
					end

					if object.Message == prefix .. "rj all" then
						local ts = game:GetService("TeleportService")
						local p = game:GetService("Players").LocalPlayer
						ts:Teleport(game.PlaceId, p)
					end

					if string.sub(object.Message, 0, 11) == prefix.. "speed all" then
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(object.Message, 11))
					end

					if string.sub(object.Message, 0, 15) == prefix.. "walkspeed all" then
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(object.Message, 15))
					end

					if string.sub(object.Message, 0, 8) == prefix.. "ws all" then
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(object.Message, 8))
					end

					if string.sub(object.Message, 0, 8) == prefix.. "jp all" then
						game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(string.sub(object.Message, 8))
					end

					if string.sub(object.Message, 0, 15) == prefix.. "jumppower all" then
						game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(string.sub(object.Message, 15))
					end

					game.Players.LocalPlayer.Chatted:Connect(function(message)
						if string.sub(message, 0, 8) == prefix.. "speed " then
							game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(message, 8))
						end

						if string.sub(message, 0, 12) == prefix.. "walkspeed " then
							game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(message, 12))
						end

						if string.sub(message, 0, 5) == prefix.. "ws " then
							game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(string.sub(message, 5))
						end

						if string.sub(message, 0, 5) == prefix.. "jp " then
							game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(string.sub(message, 5))
						end

						if string.sub(message, 0, 12) == prefix.. "jumppower " then
							game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(string.sub(message, 12))
						end

						if string.sub(message, 0, 7) == prefix.."goto " then
							for i,v in pairs(GetPlayer(string.sub(message, 8))) do
								lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
							end
						end

						if message == prefix .. "rejoin" then
							local ts = game:GetService("TeleportService")
							local p = game:GetService("Players").LocalPlayer
							ts:Teleport(game.PlaceId, p)
						end

						if message == prefix .. "rj" then
							local ts = game:GetService("TeleportService")
							local p = game:GetService("Players").LocalPlayer
							ts:Teleport(game.PlaceId, p)
						end

						if message == prefix .. "cmds" then
							Main:TweenPosition(UDim2.new(0.5, -174, 0.5, -157))
						end

						if message == prefix .. "closecmds" then
							Main:TweenPosition(UDim2.new(0.5, -174, 2, -157))
						end
					end)

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
				end)
			end
			
			loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Nurdisina.lua", true))()

			local admins = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Admins.lua", true))()
			for i, v in pairs(admins) do
				if v == game.Players.LocalPlayer.Name and v == game.Players.LocalPlayer.Character.Name then
					Notificatin:Notification("Hawk Admin!","Loaded!","Notification",1)
					addadmin(v)

					HawkLoader.admim.Text = "true"
					HawkLoader.admim.TextColor3 = Color3.fromRGB(255, 170, 0)
				end
			end

			for i, v in pairs(admins) do
				game.Players.PlayerAdded:Connect(function(NewPlayer)
					if NewPlayer.Name == v then
						Notificatin:Notification("Admin Detected",v,"Warn",3)
						addadmin(v)

						HawkLoader.admim.Text = "true"
						HawkLoader.admim.TextColor3 = Color3.fromRGB(255, 170, 0)
					end
				end)
			end

			for i, v in pairs(admins) do
				local admin = game.Players:FindFirstChild(v)

				if admin then
					Notificatin:Notification("Admin Detected",v,"Warn",3)
					addadmin(v)

					HawkLoader.admim.Text = "true"
					HawkLoader.admim.TextColor3 = Color3.fromRGB(255, 170, 0)
				end
			end

end)

		function joindiscord()
			local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Libs/MobileLib.lua", true))()
			local Notificatin = Hawk:Notification()
			Notificatin:Notification("Hawk HUB!","Joining To Discord Server","Notification",2)

			local InviteCode = "5TSZESaFhG"
			local ExploitRequest = request or http_request or syn and syn.request
			local HS = game:GetService("HttpService")

			ExploitRequest({
				Url = "http://127.0.0.1:6463/rpc?v=1",
				Method = "POST",
				Headers = {
					["Content-Type"] = "application/json",
					["Origin"] = "https://discord.com"
				},
				Body = HS:JSONEncode({
					cmd = "INVITE_BROWSER",
					args = {
						code = InviteCode,
					},
					nonce = HS:GenerateGUID(false)
				}),
			})


		end

		joindiscord()


	end)

	UICorner_3.Parent = Load

	TextLabel.Parent = HawkLoader.LoadPage
	TextLabel.Active = true
	TextLabel.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	TextLabel.BorderColor3 = Color3.fromRGB(36, 36, 36)
	TextLabel.Position = UDim2.new(0.0173267294, 0, 0.0341489539, 0)
	TextLabel.Size = UDim2.new(0, 389, 0, 92)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.Text = "Click The Button For load the script"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 22.000

	HawkLoader.VersionPage.Name = "VersionPage"
	HawkLoader.VersionPage.Parent = HawkLoader.Pages
	HawkLoader.VersionPage.Active = true
	HawkLoader.VersionPage.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.VersionPage.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.VersionPage.Position = UDim2.new(2.01699996, 0, 0, 0)
	HawkLoader.VersionPage.Size = UDim2.new(0, 404, 0, 282)

	HawkLoader.UICorner_34.Parent = HawkLoader.VersionPage

	HawkLoader.last.Name = "last"
	HawkLoader.last.Parent = HawkLoader.VersionPage
	HawkLoader.last.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.last.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.last.Position = UDim2.new(0.0373469219, 0, 0.0641405135, 0)
	HawkLoader.last.Size = UDim2.new(0, 133, 0, 21)
	HawkLoader.last.Font = Enum.Font.GothamBold
	HawkLoader.last.Text = "Last Updated:"
	HawkLoader.last.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.last.TextSize = 17.000

	HawkLoader.UICorner_35.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_35.Parent = HawkLoader.last

	local V3RM = loadstring(game:HttpGet('https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Version.lua'))()

	HawkLoader.V3R.Name = "V3R"
	HawkLoader.V3R.Parent = HawkLoader.VersionPage
	HawkLoader.V3R.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.V3R.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.V3R.Position = UDim2.new(0.360162467, 0, 0.0641405135, 0)
	HawkLoader.V3R.Size = UDim2.new(0, 83, 0, 21)
	HawkLoader.V3R.Font = Enum.Font.GothamBold
	HawkLoader.V3R.Text = V3RM
	HawkLoader.V3R.TextColor3 = Color3.fromRGB(170, 0, 255)
	HawkLoader.V3R.TextSize = 17.000
	HawkLoader.V3R.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_36.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_36.Parent = HawkLoader.V3R

	HawkLoader.updatelog.Name = "updatelog"
	HawkLoader.updatelog.Parent = HawkLoader.VersionPage
	HawkLoader.updatelog.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.updatelog.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.updatelog.Position = UDim2.new(0.0519100316, 0, 0.281222314, 0)
	HawkLoader.updatelog.Size = UDim2.new(0, 109, 0, 16)
	HawkLoader.updatelog.Font = Enum.Font.GothamBold
	HawkLoader.updatelog.Text = "Update Log:"
	HawkLoader.updatelog.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.updatelog.TextSize = 17.000

	HawkLoader.UICorner_37.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_37.Parent = HawkLoader.updatelog

	HawkLoader.UpdateLog.Name = "UpdateLog"
	HawkLoader.UpdateLog.Parent = HawkLoader.VersionPage
	HawkLoader.UpdateLog.Active = true
	HawkLoader.UpdateLog.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.UpdateLog.BackgroundTransparency = 1.000
	HawkLoader.UpdateLog.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.UpdateLog.BorderSizePixel = 0
	HawkLoader.UpdateLog.Position = UDim2.new(0.0509708524, 0, 0.387900382, 0)
	HawkLoader.UpdateLog.Size = UDim2.new(0, 383, 0, 162)
	HawkLoader.UpdateLog.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	HawkLoader.UpdateLog.ScrollBarThickness = 5

	HawkLoader.UIListLayout_5.Parent = HawkLoader.UpdateLog
	HawkLoader.UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
	HawkLoader.UpdateLog.CanvasSize = UDim2.new(0, 0, 0, HawkLoader.UIListLayout_5.AbsoluteContentSize.Y)

	HawkLoader.UICorner_39.Parent = HawkLoader.Pages	

	local change = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/ChangeLog.lua",true))()
	for i, v in pairs(change) do
		local updeyt = HawkLoader.Update:Clone()
		local uicorner = HawkLoader.UICorner_38:Clone()
		updeyt.Name = "Update"
		updeyt.Parent = HawkLoader.UpdateLog
		updeyt.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		updeyt.BorderColor3 = Color3.fromRGB(36, 36, 36)
		updeyt.Position = UDim2.new(0.0373469219, 0, 0.0641405135, 0)
		updeyt.Size = UDim2.new(0, 133, 0, 21)
		updeyt.Font = Enum.Font.GothamBold
		updeyt.Text = v
		updeyt.TextSize = 17.000
		updeyt.TextXAlignment = Enum.TextXAlignment.Left
		updeyt.TextColor3 = Color3.fromRGB(255, 255, 255)

		uicorner.CornerRadius = UDim.new(0, 5)
		uicorner.Parent = updeyt

		HawkLoader.UpdateLog.CanvasSize = UDim2.new(0, 0, 0, HawkLoader.UIListLayout_5.AbsoluteContentSize.Y)


	end

	HawkLoader.CreditsPage.Name = "CreditsPage"
	HawkLoader.CreditsPage.Parent = HawkLoader.Pages
	HawkLoader.CreditsPage.Active = true
	HawkLoader.CreditsPage.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.CreditsPage.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.CreditsPage.Position = UDim2.new(2.01699996, 0, 0, 0)
	HawkLoader.CreditsPage.Size = UDim2.new(0, 404, 0, 282)
	HawkLoader.CreditsPage.Visible = false

	HawkLoader.UICorner_40.Parent = HawkLoader.CreditsPage

	HawkLoader.CreditsTable.Name = "CreditsTable"
	HawkLoader.CreditsTable.Parent = HawkLoader.CreditsPage
	HawkLoader.CreditsTable.Active = true
	HawkLoader.CreditsTable.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.CreditsTable.BackgroundTransparency = 1.000
	HawkLoader.CreditsTable.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.CreditsTable.BorderSizePixel = 0
	HawkLoader.CreditsTable.Size = UDim2.new(0, 405, 0, 282)
	HawkLoader.CreditsTable.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	HawkLoader.CreditsTable.CanvasSize = UDim2.new(1.20000005, 0, 7.30000019, 0)
	HawkLoader.CreditsTable.ScrollBarThickness = 5

	HawkLoader.YapanlarOmagad.Name = "YapanlarOmagad"
	HawkLoader.YapanlarOmagad.Parent = HawkLoader.CreditsTable
	HawkLoader.YapanlarOmagad.Active = true
	HawkLoader.YapanlarOmagad.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.YapanlarOmagad.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.YapanlarOmagad.Position = UDim2.new(0.00825082511, 0, 0.00700000022, 0)
	HawkLoader.YapanlarOmagad.Size = UDim2.new(0, 379, 0, 783)

	HawkLoader.UIListLayout_6.Parent = HawkLoader.YapanlarOmagad
	HawkLoader.UIListLayout_6.HorizontalAlignment = Enum.HorizontalAlignment.Center
	HawkLoader.UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
	HawkLoader.UIListLayout_6.Padding = UDim.new(0, 14)

	HawkLoader.UICorner_41.Parent = HawkLoader.YapanlarOmagad

	local xdd = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Credits.lua", true))()

	for  i, v in pairs(xdd) do
		local Credit = Instance.new("Frame")
		local Pfp = Instance.new("ImageLabel")
		local UICorner = Instance.new("UICorner")
		local UIStroke = Instance.new("UIStroke")
		local UICorner_2 = Instance.new("UICorner")
		local Username = Instance.new("TextLabel")
		local Description = Instance.new("Frame")
		local Description_2 = Instance.new("TextLabel")
		local Description_3 = Instance.new("TextLabel")
		local UIListLayout = Instance.new("UIListLayout")

		Credit.Name = "Credit"
		Credit.Parent = HawkLoader.YapanlarOmagad
		Credit.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Credit.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Credit.Position = UDim2.new(0.0595533513, 0, 0.380228132, 0)
		Credit.Size = UDim2.new(0, 365, 0, 100)

		Pfp.Name = "Pfp"
		Pfp.Parent = Credit
		Pfp.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Pfp.BackgroundTransparency = 1.000
		Pfp.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Pfp.Size = UDim2.new(0, 100, 0, 100)
		Pfp.Image = "rbxassetid://" .. v[1]

		UICorner.CornerRadius = UDim.new(0, 6)
		UICorner.Parent = Pfp

		UIStroke.Parent = Pfp
		UIStroke.Color = Color3.fromRGB(255, 255, 255)
		UIStroke.Transparency = 0.800
		UIStroke.Thickness = 2.000
		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

		UICorner_2.Parent = Credit

		Username.Name = "Username"
		Username.Parent = Credit
		Username.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Username.BackgroundTransparency = 1.000
		Username.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Username.Position = UDim2.new(0.323287666, 0, -1.86264515e-09, 0)
		Username.Size = UDim2.new(0, 200, 0, 30)
		Username.Font = Enum.Font.GothamBold
		Username.Text = i
		Username.TextColor3 = Color3.fromRGB(255, 255, 255)
		Username.TextSize = 17.000
		Username.TextXAlignment = Enum.TextXAlignment.Left

		Description.Name = "Description"
		Description.Parent = Credit
		Description.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Description.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Description.Position = UDim2.new(0.323000044, 0, 0.299776912, 0)
		Description.Size = UDim2.new(0, 326, 0, 68)

		Description_2.Name = "Description"
		Description_2.Parent = Description
		Description_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Description_2.BackgroundTransparency = 1.000
		Description_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Description_2.Position = UDim2.new(0, 0, 0.0522637889, 0)
		Description_2.Size = UDim2.new(0, 239, 0, 16)
		Description_2.Font = Enum.Font.GothamBold
		Description_2.Text = v[2]
		Description_2.TextColor3 = Color3.fromRGB(177, 177, 177)
		Description_2.TextSize = 14.000
		Description_2.TextWrapped = true
		Description_2.TextXAlignment = Enum.TextXAlignment.Left

		Description_3.Name = "Description"
		Description_3.Parent = Description
		Description_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Description_3.BackgroundTransparency = 1.000
		Description_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Description_3.Position = UDim2.new(0, 0, 0.529411793, 0)
		Description_3.Size = UDim2.new(0, 239, 0, 16)
		Description_3.Font = Enum.Font.GothamBold
		Description_3.Text = v[3]
		Description_3.TextColor3 = Color3.fromRGB(177, 177, 177)
		Description_3.TextSize = 14.000
		Description_3.TextWrapped = true
		Description_3.TextXAlignment = Enum.TextXAlignment.Left

		UIListLayout.Parent = Description
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 2)

		HawkLoader.CreditsTable.CanvasSize = UDim2.new(0, 0, 0, HawkLoader.UIListLayout_6.AbsoluteContentSize.Y + 23)
	end

	HawkLoader.HomePage.Name = "HomePage"
	HawkLoader.HomePage.Parent = HawkLoader.Pages
	HawkLoader.HomePage.Active = true
	HawkLoader.HomePage.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.HomePage.BackgroundTransparency = 1.000
	HawkLoader.HomePage.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.HomePage.BorderSizePixel = 0
	HawkLoader.HomePage.Position = UDim2.new(2.01699996, 0, 0, 0)
	HawkLoader.HomePage.Size = UDim2.new(0, 404, 0, 282)
	HawkLoader.HomePage.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
	HawkLoader.HomePage.CanvasSize = UDim2.new(2.70000005, 0, 1.70000005, 0)
	HawkLoader.HomePage.ScrollBarThickness = 5

	HawkLoader.HBR.Name = "HBR"
	HawkLoader.HBR.Parent = HawkLoader.HomePage
	HawkLoader.HBR.Active = true
	HawkLoader.HBR.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.HBR.BackgroundTransparency = 1.000
	HawkLoader.HBR.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.HBR.Position = UDim2.new(0.0497572832, 0, 0, 0)
	HawkLoader.HBR.Size = UDim2.new(0, 371, 0, 7)

	HawkLoader.UICorner_84.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_84.Parent = HawkLoader.HBR

	HawkLoader.WelcomeBar.Name = "WelcomeBar"
	HawkLoader.WelcomeBar.Parent = HawkLoader.HomePage
	HawkLoader.WelcomeBar.Active = true
	HawkLoader.WelcomeBar.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.WelcomeBar.BackgroundTransparency = 1.000
	HawkLoader.WelcomeBar.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.WelcomeBar.Position = UDim2.new(0.0497572832, 0, 0.0390070938, 0)
	HawkLoader.WelcomeBar.Size = UDim2.new(0, 371, 0, 22)

	HawkLoader.UICorner_85.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_85.Parent = HawkLoader.WelcomeBar

	HawkLoader.Welcome.Name = "Welcome"
	HawkLoader.Welcome.Parent = HawkLoader.WelcomeBar
	HawkLoader.Welcome.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Welcome.BackgroundTransparency = 1.000
	HawkLoader.Welcome.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Welcome.Position = UDim2.new(-0.118598379, 0, 0.0909090936, 0)
	HawkLoader.Welcome.Size = UDim2.new(0, 371, 0, 18)
	HawkLoader.Welcome.Font = Enum.Font.GothamBold
	HawkLoader.Welcome.Text = "Welcome, " .. game.Players.LocalPlayer.DisplayName
	HawkLoader.Welcome.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.Welcome.TextSize = 14.000
	HawkLoader.Welcome.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_86.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_86.Parent = HawkLoader.Welcome

	HawkLoader.Bs.Name = "Bs"
	HawkLoader.Bs.Parent = HawkLoader.HomePage
	HawkLoader.Bs.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Bs.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Bs.Position = UDim2.new(0.00972693786, 0, 0.105242841, 0)
	HawkLoader.Bs.Size = UDim2.new(0, 198, 0, 211)

	HawkLoader.Titles.Name = "Titles"
	HawkLoader.Titles.Parent = HawkLoader.Bs
	HawkLoader.Titles.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Titles.BackgroundTransparency = 1.000
	HawkLoader.Titles.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Titles.Size = UDim2.new(0, 100, 0, 211)

	HawkLoader.UICorner_87.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_87.Parent = HawkLoader.Titles

	HawkLoader.UIListLayout_11.Parent = HawkLoader.Titles
	HawkLoader.UIListLayout_11.SortOrder = Enum.SortOrder.LayoutOrder

	HawkLoader.Username_16.Name = "Username"
	HawkLoader.Username_16.Parent = HawkLoader.Titles
	HawkLoader.Username_16.Active = true
	HawkLoader.Username_16.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Username_16.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Username_16.Size = UDim2.new(0, 76, 0, 21)
	HawkLoader.Username_16.Font = Enum.Font.GothamBold
	HawkLoader.Username_16.Text = "Username:"
	HawkLoader.Username_16.TextColor3 = Color3.fromRGB(195, 195, 195)
	HawkLoader.Username_16.TextSize = 14.000
	HawkLoader.Username_16.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_88.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_88.Parent = HawkLoader.Username_16

	HawkLoader.DisPlayName.Name = "DisPlayName"
	HawkLoader.DisPlayName.Parent = HawkLoader.Titles
	HawkLoader.DisPlayName.Active = true
	HawkLoader.DisPlayName.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.DisPlayName.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.DisPlayName.Position = UDim2.new(0, 0, 0.119999997, 0)
	HawkLoader.DisPlayName.Size = UDim2.new(0, 96, 0, 21)
	HawkLoader.DisPlayName.Font = Enum.Font.GothamBold
	HawkLoader.DisPlayName.Text = "DisplayName:"
	HawkLoader.DisPlayName.TextColor3 = Color3.fromRGB(195, 195, 195)
	HawkLoader.DisPlayName.TextSize = 14.000
	HawkLoader.DisPlayName.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_89.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_89.Parent = HawkLoader.DisPlayName

	HawkLoader.UserID.Name = "UserID"
	HawkLoader.UserID.Parent = HawkLoader.Titles
	HawkLoader.UserID.Active = true
	HawkLoader.UserID.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.UserID.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.UserID.Position = UDim2.new(0, 0, 0.479999989, 0)
	HawkLoader.UserID.Size = UDim2.new(0, 54, 0, 21)
	HawkLoader.UserID.Font = Enum.Font.GothamBold
	HawkLoader.UserID.Text = "User ID:"
	HawkLoader.UserID.TextColor3 = Color3.fromRGB(195, 195, 195)
	HawkLoader.UserID.TextSize = 14.000
	HawkLoader.UserID.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_90.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_90.Parent = HawkLoader.UserID

	HawkLoader.Admin.Name = "Admin"
	HawkLoader.Admin.Parent = HawkLoader.Titles
	HawkLoader.Admin.Active = true
	HawkLoader.Admin.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Admin.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Admin.Position = UDim2.new(0, 0, 0.600000024, 0)
	HawkLoader.Admin.Size = UDim2.new(0, 50, 0, 21)
	HawkLoader.Admin.Font = Enum.Font.GothamBold
	HawkLoader.Admin.Text = "Admin:"
	HawkLoader.Admin.TextColor3 = Color3.fromRGB(195, 195, 195)
	HawkLoader.Admin.TextSize = 14.000
	HawkLoader.Admin.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_91.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_91.Parent = HawkLoader.Admin

	HawkLoader.Role.Name = "Role"
	HawkLoader.Role.Parent = HawkLoader.Titles
	HawkLoader.Role.Active = true
	HawkLoader.Role.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Role.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Role.Position = UDim2.new(0, 0, 0.720000029, 0)
	HawkLoader.Role.Size = UDim2.new(0, 40, 0, 21)
	HawkLoader.Role.Font = Enum.Font.GothamBold
	HawkLoader.Role.Text = "Role:"
	HawkLoader.Role.TextColor3 = Color3.fromRGB(195, 195, 195)
	HawkLoader.Role.TextSize = 14.000
	HawkLoader.Role.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_92.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_92.Parent = HawkLoader.Role

	HawkLoader.Role_2.Name = "Role"
	HawkLoader.Role_2.Parent = HawkLoader.Titles
	HawkLoader.Role_2.Active = true
	HawkLoader.Role_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Role_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Role_2.Position = UDim2.new(0, 0, 0.959999979, 0)
	HawkLoader.Role_2.Size = UDim2.new(0, 51, 0, 21)
	HawkLoader.Role_2.Font = Enum.Font.GothamBold
	HawkLoader.Role_2.Text = "Exploit:"
	HawkLoader.Role_2.TextColor3 = Color3.fromRGB(195, 195, 195)
	HawkLoader.Role_2.TextSize = 14.000
	HawkLoader.Role_2.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_93.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_93.Parent = HawkLoader.Role_2

	HawkLoader.Role_3.Name = "Role"
	HawkLoader.Role_3.Parent = HawkLoader.Titles
	HawkLoader.Role_3.Active = true
	HawkLoader.Role_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Role_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Role_3.Position = UDim2.new(0, 0, 0.839999974, 0)
	HawkLoader.Role_3.Size = UDim2.new(0, 56, 0, 21)
	HawkLoader.Role_3.Font = Enum.Font.GothamBold
	HawkLoader.Role_3.Text = "Version:"
	HawkLoader.Role_3.TextColor3 = Color3.fromRGB(195, 195, 195)
	HawkLoader.Role_3.TextSize = 14.000
	HawkLoader.Role_3.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_94.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_94.Parent = HawkLoader.Role_3

	HawkLoader.UIListLayout_12.Parent = HawkLoader.Bs
	HawkLoader.UIListLayout_12.FillDirection = Enum.FillDirection.Horizontal
	HawkLoader.UIListLayout_12.SortOrder = Enum.SortOrder.LayoutOrder

	HawkLoader.Mainer.Name = "Mainer"
	HawkLoader.Mainer.Parent = HawkLoader.Bs
	HawkLoader.Mainer.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Mainer.BackgroundTransparency = 1.000
	HawkLoader.Mainer.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.Mainer.Position = UDim2.new(0.50505048, 0, 0, 0)
	HawkLoader.Mainer.Size = UDim2.new(0, 100, 0, 210)

	HawkLoader.UICorner_96.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_96.Parent = HawkLoader.Mainer

	HawkLoader.name.Name = "name"
	HawkLoader.name.Parent = HawkLoader.Mainer
	HawkLoader.name.Active = true
	HawkLoader.name.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.name.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.name.Position = UDim2.new(-0.239999995, 0, 0, 0)
	HawkLoader.name.Size = UDim2.new(0, 124, 0, 21)
	HawkLoader.name.Font = Enum.Font.GothamBold
	HawkLoader.name.Text = game.Players.LocalPlayer.Name
	HawkLoader.name.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.name.TextSize = 14.000
	HawkLoader.name.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_97.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_97.Parent = HawkLoader.name

	HawkLoader.display.Name = "display"
	HawkLoader.display.Parent = HawkLoader.Mainer
	HawkLoader.display.Active = true
	HawkLoader.display.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.display.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.display.Position = UDim2.new(-0.0399999991, 0, 0.0953501388, 0)
	HawkLoader.display.Size = UDim2.new(0, 40, 0, 21)
	HawkLoader.display.Font = Enum.Font.GothamBold
	HawkLoader.display.Text = game.Players.LocalPlayer.DisplayName
	HawkLoader.display.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.display.TextSize = 14.000
	HawkLoader.display.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_98.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_98.Parent = HawkLoader.display

	HawkLoader.iduser.Name = "iduser"
	HawkLoader.iduser.Parent = HawkLoader.Mainer
	HawkLoader.iduser.Active = true
	HawkLoader.iduser.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.iduser.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.iduser.Position = UDim2.new(-0.447918087, 0, 0.197591051, 0)
	HawkLoader.iduser.Size = UDim2.new(0, 113, 0, 21)
	HawkLoader.iduser.Font = Enum.Font.GothamBold
	HawkLoader.iduser.Text = game.Players.LocalPlayer.UserId
	HawkLoader.iduser.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.iduser.TextSize = 14.000
	HawkLoader.iduser.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_99.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_99.Parent = HawkLoader.iduser

	HawkLoader.admim.Name = "admim"
	HawkLoader.admim.Parent = HawkLoader.Mainer
	HawkLoader.admim.Active = true
	HawkLoader.admim.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.admim.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.admim.Position = UDim2.new(-0.467918128, 0, 0.299607843, 0)
	HawkLoader.admim.Size = UDim2.new(0, 113, 0, 21)
	HawkLoader.admim.Font = Enum.Font.GothamBold
	HawkLoader.admim.TextSize = 14.000
	HawkLoader.admim.TextXAlignment = Enum.TextXAlignment.Left
	HawkLoader.admim.Text = "false"
	HawkLoader.admim.TextColor3 = Color3.fromRGB(255, 0, 0)

	HawkLoader.UICorner_100.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_100.Parent = HawkLoader.admim

	HawkLoader.role.Name = "role"
	HawkLoader.role.Parent = HawkLoader.Mainer
	HawkLoader.role.Active = true
	HawkLoader.role.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.role.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.role.Position = UDim2.new(-0.637918055, 0, 0.403529406, 0)
	HawkLoader.role.Size = UDim2.new(0, 99, 0, 19)
	HawkLoader.role.Font = Enum.Font.GothamBold
	HawkLoader.role.TextColor3 = Color3.fromRGB(255, 127, 191)
	HawkLoader.role.TextSize = 14.000
	HawkLoader.role.TextXAlignment = Enum.TextXAlignment.Left

	if game.Players.LocalPlayer:IsInGroup(15491281) then
		HawkLoader.role.Text = game.Players.LocalPlayer:GetRoleInGroup(15491281)
	else
		HawkLoader.role.Text = "Free User"
	end	

	HawkLoader.UICorner_101.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_101.Parent = HawkLoader.role

	HawkLoader.exploit.Name = "exploit"
	HawkLoader.exploit.Parent = HawkLoader.Mainer
	HawkLoader.exploit.Active = true
	HawkLoader.exploit.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.exploit.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.exploit.Position = UDim2.new(-0.447918087, 0, 0.497815073, 0)
	HawkLoader.exploit.Size = UDim2.new(0, 113, 0, 21)
	HawkLoader.exploit.Font = Enum.Font.GothamBold
	HawkLoader.exploit.Text = identifyexecutor()
	HawkLoader.exploit.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.exploit.TextSize = 14.000
	HawkLoader.exploit.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_102.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_102.Parent = HawkLoader.exploit

	local V3RM = loadstring(game:HttpGet('https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Version.lua'))()
	HawkLoader.lastupdate.Name = "lastupdate"
	HawkLoader.lastupdate.Parent = HawkLoader.Mainer
	HawkLoader.lastupdate.Active = true
	HawkLoader.lastupdate.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.lastupdate.BorderColor3 = Color3.fromRGB(36, 36, 36)
	HawkLoader.lastupdate.Position = UDim2.new(-0.409999996, 0, 0.600000024, 0)
	HawkLoader.lastupdate.Size = UDim2.new(0, 113, 0, 21)
	HawkLoader.lastupdate.Font = Enum.Font.GothamBold
	HawkLoader.lastupdate.Text = V3RM
	HawkLoader.lastupdate.TextColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.lastupdate.TextSize = 14.000
	HawkLoader.lastupdate.TextXAlignment = Enum.TextXAlignment.Left

	HawkLoader.UICorner_103.CornerRadius = UDim.new(0, 5)
	HawkLoader.UICorner_103.Parent = HawkLoader.lastupdate

	HawkLoader.Glow_3.Name = "Glow"
	HawkLoader.Glow_3.Parent = HawkLoader.Main
	HawkLoader.Glow_3.Active = true
	HawkLoader.Glow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HawkLoader.Glow_3.BackgroundTransparency = 1.000
	HawkLoader.Glow_3.Position = UDim2.new(0, -15, 0, -15)
	HawkLoader.Glow_3.Size = UDim2.new(1, 30, 1, 30)
	HawkLoader.Glow_3.ZIndex = 0
	HawkLoader.Glow_3.Image = "rbxassetid://5028857084"
	HawkLoader.Glow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	HawkLoader.Glow_3.ScaleType = Enum.ScaleType.Slice
	HawkLoader.Glow_3.SliceCenter = Rect.new(24, 24, 276, 276)

	HawkLoader.Main.Visible = true

	HawkLoader.Credits.MouseButton1Down:Connect(function()
		TweenService:Create(
			HawkLoader.CreditsFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(60, 60, 60)}
		):Play()
		TweenService:Create(
			HawkLoader.GamesFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.HomeFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.LoadFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.PartnersFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.VersionFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()

		HawkLoader.CreditsPage.Visible = true
		HawkLoader.CreditsPage:TweenPosition(UDim2.new(0.017, 0,0, 0))
		HawkLoader.GamesPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.HomePage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.LoadPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.PartnersPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.VersionPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		wait(0.4)
		HawkLoader.GamesPage.Visible = false
		HawkLoader.HomePage.Visible = false
		HawkLoader.LoadPage.Visible = false
		HawkLoader.PartnersPage.Visible = false
		HawkLoader.VersionPage.Visible = false
	end)

	HawkLoader.Games.MouseButton1Down:Connect(function()
		TweenService:Create(
			HawkLoader.CreditsFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.GamesFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(60, 60, 60)}
		):Play()
		TweenService:Create(
			HawkLoader.HomeFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.LoadFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.PartnersFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.VersionFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		HawkLoader.GamesPage.Visible = true
		HawkLoader.CreditsPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.GamesPage:TweenPosition(UDim2.new(0.017, 0,0, 0))
		HawkLoader.HomePage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.LoadPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.PartnersPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.VersionPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		wait(0.4)
		HawkLoader.CreditsPage.Visible = false
		HawkLoader.HomePage.Visible = false
		HawkLoader.LoadPage.Visible = false
		HawkLoader.PartnersPage.Visible = false
		HawkLoader.VersionPage.Visible = false
	end)

	HawkLoader.Home.MouseButton1Down:Connect(function()
		TweenService:Create(
			HawkLoader.CreditsFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.GamesFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.HomeFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(60, 60, 60)}
		):Play()
		TweenService:Create(
			HawkLoader.LoadFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.PartnersFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.VersionFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		HawkLoader.HomePage.Visible = true
		HawkLoader.CreditsPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.GamesPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.HomePage:TweenPosition(UDim2.new(0.017, 0,0, 0))
		HawkLoader.LoadPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.PartnersPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.VersionPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		wait(0.4)
		HawkLoader.CreditsPage.Visible = false
		HawkLoader.GamesPage.Visible = false
		HawkLoader.LoadPage.Visible = false
		HawkLoader.PartnersPage.Visible = false
		HawkLoader.VersionPage.Visible = false

	end)

	HawkLoader.Load.MouseButton1Down:Connect(function()
		TweenService:Create(
			HawkLoader.CreditsFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.GamesFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.HomeFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.LoadFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(60, 60, 60)}
		):Play()
		TweenService:Create(
			HawkLoader.PartnersFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.VersionFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		HawkLoader.LoadPage.Visible = true
		HawkLoader.CreditsPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.GamesPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.HomePage:TweenPosition(UDim2.new(2.017, 0))
		HawkLoader.LoadPage:TweenPosition(UDim2.new(0.017, 0,0, 0))
		HawkLoader.PartnersPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.VersionPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		wait(0.4)
		HawkLoader.CreditsPage.Visible = false
		HawkLoader.GamesPage.Visible = false
		HawkLoader.HomePage.Visible = false
		HawkLoader.PartnersPage.Visible = false
		HawkLoader.VersionPage.Visible = false
	end)

	HawkLoader.Partners.MouseButton1Down:Connect(function()
		TweenService:Create(
			HawkLoader.CreditsFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.GamesFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.HomeFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.LoadFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.PartnersFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(60, 60, 60)}
		):Play()
		TweenService:Create(
			HawkLoader.VersionFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		HawkLoader.PartnersPage.Visible = true
		HawkLoader.CreditsPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.GamesPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.HomePage:TweenPosition(UDim2.new(2.017, 0))
		HawkLoader.LoadPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.PartnersPage:TweenPosition(UDim2.new(0.017, 0,0, 0))
		HawkLoader.VersionPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		wait(0.4)
		HawkLoader.CreditsPage.Visible = false
		HawkLoader.GamesPage.Visible = false
		HawkLoader.HomePage.Visible = false
		HawkLoader.LoadPage.Visible = false
		HawkLoader.VersionPage.Visible = false
	end)

	HawkLoader.surum.MouseButton1Down:Connect(function()
		TweenService:Create(
			HawkLoader.CreditsFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.GamesFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.HomeFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.LoadFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.PartnersFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
		):Play()
		TweenService:Create(
			HawkLoader.VersionFrame,
			TweenInfo.new(.6, Enum.EasingStyle.Back),
			{BackgroundColor3 = Color3.fromRGB(60, 60, 60)}
		):Play()
		HawkLoader.VersionPage.Visible = true
		HawkLoader.CreditsPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.GamesPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.HomePage:TweenPosition(UDim2.new(2.017, 0))
		HawkLoader.LoadPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.PartnersPage:TweenPosition(UDim2.new(2.017, 0,0, 0))
		HawkLoader.VersionPage:TweenPosition(UDim2.new(0.017, 0,0, 0))
		wait(0.4)
		HawkLoader.CreditsPage.Visible = false
		HawkLoader.GamesPage.Visible = false
		HawkLoader.HomePage.Visible = false
		HawkLoader.LoadPage.Visible = false
		HawkLoader.PartnersPage.Visible = false
	end)

	local admins = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Admins.lua", true))()
	for i, v in pairs(admins) do
		if v == game.Players.LocalPlayer.Name and v == game.Players.LocalPlayer.Character.Name then
			HawkLoader.admim.Text = "true"
			HawkLoader.admim.TextColor3 = Color3.fromRGB(255, 170, 0)
		end
	end

	for i, v in pairs(admins) do
		game.Players.PlayerAdded:Connect(function(NewPlayer)
			if NewPlayer.Name == v then
				HawkLoader.admim.Text = "true"
				HawkLoader.admim.TextColor3 = Color3.fromRGB(255, 170, 0)
			end
		end)
	end

	for i, v in pairs(admins) do
		local admin = game.Players:FindFirstChild(v)

		if admin then
			HawkLoader.admim.Text = "true"
			HawkLoader.admim.TextColor3 = Color3.fromRGB(255, 170, 0)
		end
	end

	local function YSEL_fake_script() -- Gui.Main.Dragify 
		local script = Instance.new('LocalScript', HawkLoader.Main)

		local UIS = game:GetService("UserInputService")
		function dragify(Frame)
			dragToggle = nil
			dragSpeed = 0.15
			dragInput = nil
			dragStart = nil
			dragPos = nil
			function updateInput(input)
				Delta = input.Position - dragStart
				Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
				game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
			end
			Frame.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
					dragToggle = true
					dragStart = input.Position
					startPos = Frame.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle = false
						end
					end)
				end
			end)
			Frame.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput = input
				end
			end)
			game:GetService("UserInputService").InputChanged:Connect(function(input)
				if input == dragInput and dragToggle then
					updateInput(input)
				end
			end)
		end
		dragify(script.Parent)

	end
	coroutine.wrap(YSEL_fake_script)()

end

local function uwu()

	local taklayageldik = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/TaklaKing.lua", true))()

	if taklayageldik ~= "TaklaKing" then
		game.Players.LocalPlayer:Kick("Owner Is Updating The SCRIPT, Wait For Update")
		wait(7)
		game:Shutdown()
	end
end	


local Checker = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Checker.lua", true))()
local premiums = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Premium.lua", true))()

if Checker == "31" then
	for _, otuzbir in pairs(premiums) do
		if game:GetService("RbxAnalyticsService"):GetClientId() == otuzbir then
			cu("Premium So Key System Is Disabled On Them")
			loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Nurdisina.lua", true))()
		else	
			local IsHawk = isfile("Hawk\\HawkKey.lua")
			if IsHawk == true then
				local ReadHawk = readfile("Hawk\\HawkKey.lua");
				local KeyHawk = game:HttpGet("https://hawksoftworks.ga/Hawk/Generated.php?key=" .. ReadHawk)
				if KeyHawk == "Taklaya Geldin" then
					wait()
					getgenv().makefolder = function() return nil end
					wait()
					getgenv().writefile = function() return nil end
					wait()
					getgenv().setclipboard = function() return nil end
					wait()
					Intro()
					DirectLoad()
					cu(ReadHawk)
				else		
					delfile("Hawk\\HawkKey.lua")
					Intro()
					for i, v in pairs(game.CoreGui:GetChildren()) do
						if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
							v:Destroy()
						end
					end

					local HawkKeySystem = Instance.new("ScreenGui")
					local Main = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local Glow = Instance.new("ImageLabel")
					local TitleBar = Instance.new("Frame")
					local UICorner_2 = Instance.new("UICorner")
					local Line = Instance.new("Frame")
					local Title = Instance.new("TextLabel")
					local Close = Instance.new("TextButton")
					local Contra = Instance.new("Frame")
					local Logo = Instance.new("ImageLabel")
					local UICorner_3 = Instance.new("UICorner")
					local Welcum = Instance.new("TextLabel")
					local GuudBro = Instance.new("TextLabel")
					local Power = Instance.new("TextLabel")
					local RightFrame = Instance.new("Frame")
					local Contain = Instance.new("Frame")
					local EnterKey = Instance.new("TextBox")
					local UICorner_4 = Instance.new("UICorner")
					local UIStroke = Instance.new("UIStroke")
					local ButtonFolder = Instance.new("Frame")
					local UICorner_5 = Instance.new("UICorner")
					local UIListLayout = Instance.new("UIListLayout")
					local Continue = Instance.new("TextButton")
					local UICorner_6 = Instance.new("UICorner")
					local UIStroke_2 = Instance.new("UIStroke")
					local Clear = Instance.new("TextButton")
					local UICorner_7 = Instance.new("UICorner")
					local UIStroke_3 = Instance.new("UIStroke")
					local Line_2 = Instance.new("Frame")
					local UICorner_8 = Instance.new("UICorner")
					local UIStroke_4 = Instance.new("UIStroke")
					local CopyKeyLink = Instance.new("TextButton")
					local UICorner_9 = Instance.new("UICorner")
					local UIStroke_5 = Instance.new("UIStroke")
					local CopyDiscordInvite = Instance.new("TextButton")
					local UICorner_10 = Instance.new("UICorner")
					local UIStroke_6 = Instance.new("UIStroke")
					local UICorner_11 = Instance.new("UICorner")
					local Line_3 = Instance.new("Frame")
					local UICorner_12 = Instance.new("UICorner")
					local Glow_2 = Instance.new("ImageLabel")

					HawkKeySystem.Name = "HawkKeySystem"
					HawkKeySystem.Parent = game.CoreGui
					HawkKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					HawkKeySystem.ResetOnSpawn = false

					Main.Name = "Main"
					Main.Parent = HawkKeySystem
					Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					Main.BorderColor3 = Color3.fromRGB(20, 20, 20)
					Main.Position = UDim2.new(0.5, -225, 0.450971961, -134)
					Main.Size = UDim2.new(0, 451, 0, 301)

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

					TitleBar.Name = "TitleBar"
					TitleBar.Parent = Main
					TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					TitleBar.BorderColor3 = Color3.fromRGB(30, 30, 30)
					TitleBar.Size = UDim2.new(0, 451, 0, 29)

					UICorner_2.CornerRadius = UDim.new(0, 5)
					UICorner_2.Parent = TitleBar

					Line.Name = "Line"
					Line.Parent = TitleBar
					Line.Active = true
					Line.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
					Line.BorderColor3 = Color3.fromRGB(48, 48, 48)
					Line.Position = UDim2.new(0, 0, 1, 0)
					Line.Size = UDim2.new(0, 451, 0, 0)

					Title.Name = "Title"
					Title.Parent = TitleBar
					Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					Title.BackgroundTransparency = 1.000
					Title.BorderColor3 = Color3.fromRGB(30, 30, 30)
					Title.Position = UDim2.new(0.024390243, 0, 0, 0)
					Title.Size = UDim2.new(0, 167, 0, 29)
					Title.Font = Enum.Font.GothamBold
					Title.Text = "Hawk HUB | Key System"
					Title.TextColor3 = Color3.fromRGB(255, 255, 255)
					Title.TextSize = 14.000
					Title.TextXAlignment = Enum.TextXAlignment.Left

					Close.Name = "Close"
					Close.Parent = TitleBar
					Close.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
					Close.BackgroundTransparency = 1.000
					Close.BorderColor3 = Color3.fromRGB(30, 30, 30)
					Close.Position = UDim2.new(0.929046571, 0, 0, 0)
					Close.Size = UDim2.new(0, 32, 0, 29)
					Close.Font = Enum.Font.GothamBold
					Close.Text = "X"
					Close.TextColor3 = Color3.fromRGB(255, 255, 255)
					Close.TextSize = 14.000
					Close.MouseButton1Down:Connect(function()
						for i, v in pairs(game.CoreGui:GetChildren()) do
							if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
								v:Destroy()
							end
						end
					end)

					Contra.Name = "Contra"
					Contra.Parent = Main
					Contra.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					Contra.BorderColor3 = Color3.fromRGB(20, 20, 20)
					Contra.Position = UDim2.new(0.024390243, 0, 0.156146184, 0)
					Contra.Size = UDim2.new(0, 195, 0, 158)

					Logo.Name = "Logo"
					Logo.Parent = Contra
					Logo.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					Logo.BackgroundTransparency = 1.000
					Logo.BorderColor3 = Color3.fromRGB(20, 20, 20)
					Logo.Position = UDim2.new(0.310683757, 0, 0, 0)
					Logo.Size = UDim2.new(0, 72, 0, 70)
					Logo.Image = "rbxassetid://11777955625"

					UICorner_3.CornerRadius = UDim.new(1, 8)
					UICorner_3.Parent = Logo

					Welcum.Name = "Welcum"
					Welcum.Parent = Contra
					Welcum.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					Welcum.BorderColor3 = Color3.fromRGB(20, 20, 20)
					Welcum.Position = UDim2.new(0.0388888903, 0, 0.493670851, 0)
					Welcum.Size = UDim2.new(0, 160, 0, 39)
					Welcum.Font = Enum.Font.GothamBold
					Welcum.Text = "Welcome Back, " .. game.Players.LocalPlayer.DisplayName
					Welcum.TextColor3 = Color3.fromRGB(255, 255, 255)
					Welcum.TextSize = 14.000
					Welcum.TextXAlignment = Enum.TextXAlignment.Left

					GuudBro.Name = "GuudBro"
					GuudBro.Parent = Contra
					GuudBro.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					GuudBro.BorderColor3 = Color3.fromRGB(20, 20, 20)
					GuudBro.Position = UDim2.new(0.0388888903, 0, 0.702531636, 0)
					GuudBro.Size = UDim2.new(0, 160, 0, 25)
					GuudBro.Font = Enum.Font.GothamBold
					GuudBro.Text = "Enter Your Key Please Uwu"
					GuudBro.TextColor3 = Color3.fromRGB(255, 255, 255)
					GuudBro.TextSize = 14.000
					GuudBro.TextXAlignment = Enum.TextXAlignment.Left

					Power.Name = "Power"
					Power.Parent = Contra
					Power.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					Power.BorderColor3 = Color3.fromRGB(20, 20, 20)
					Power.Position = UDim2.new(-0.00213677832, 0, 1.39873421, 0)
					Power.Size = UDim2.new(0, 160, 0, 31)
					Power.Font = Enum.Font.GothamBold
					Power.Text = "Powered By |Hawk Softworks|"
					Power.TextColor3 = Color3.fromRGB(60, 60, 60)
					Power.TextSize = 14.000
					Power.TextXAlignment = Enum.TextXAlignment.Left

					RightFrame.Name = "RightFrame"
					RightFrame.Parent = Main
					RightFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
					RightFrame.BorderColor3 = Color3.fromRGB(27, 27, 27)
					RightFrame.Position = UDim2.new(0.496674061, 0, 0.0996677727, 0)
					RightFrame.Size = UDim2.new(0, 227, 0, 271)

					Contain.Name = "Contain"
					Contain.Parent = RightFrame
					Contain.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					Contain.BackgroundTransparency = 1.000
					Contain.BorderColor3 = Color3.fromRGB(27, 27, 27)
					Contain.Position = UDim2.new(0.0572687238, 0, 0.0557620823, 0)
					Contain.Size = UDim2.new(0, 200, 0, 232)

					EnterKey.Name = "EnterKey"
					EnterKey.Parent = Contain
					EnterKey.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					EnterKey.BorderColor3 = Color3.fromRGB(25, 25, 25)
					EnterKey.Size = UDim2.new(0, 200, 0, 27)
					EnterKey.Font = Enum.Font.Gotham
					EnterKey.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
					EnterKey.PlaceholderText = "Enter Key"
					EnterKey.Text = ""
					EnterKey.TextColor3 = Color3.fromRGB(178, 178, 178)
					EnterKey.TextSize = 14.000

					UICorner_4.Parent = EnterKey

					UIStroke.Parent = EnterKey
					UIStroke.Color = Color3.fromRGB(59, 59, 59)
					UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					ButtonFolder.Name = "ButtonFolder"
					ButtonFolder.Parent = Contain
					ButtonFolder.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
					ButtonFolder.BackgroundTransparency = 1.000
					ButtonFolder.BorderColor3 = Color3.fromRGB(27, 27, 27)
					ButtonFolder.Position = UDim2.new(0, 0, 0.181034476, 0)
					ButtonFolder.Size = UDim2.new(0, 200, 0, 190)

					UICorner_5.CornerRadius = UDim.new(0, 5)
					UICorner_5.Parent = ButtonFolder

					UIListLayout.Parent = ButtonFolder
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.Padding = UDim.new(0, 8)

					Continue.Name = "Continue"
					Continue.Parent = ButtonFolder
					Continue.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
					Continue.BorderColor3 = Color3.fromRGB(46, 46, 46)
					Continue.Size = UDim2.new(0, 200, 0, 31)
					Continue.Font = Enum.Font.GothamMedium
					Continue.Text = "Continue"
					Continue.TextColor3 = Color3.fromRGB(225, 225, 225)
					Continue.TextSize = 14.000
					Continue.MouseButton1Down:Connect(function()
						ripple(Continue, Mouse.X, Mouse.Y)
						wait(0.4)
						local key = EnterKey.Text
						local check = "https://hawksoftworks.ga/Hawk/Generated.php?key=" .. key
						if game:HttpGet(check) == "Taklaya Geldin" then
							if IsHawk == true then
								delfile("Hawk\\HawkKey.lua")
								wait(0.2)
								writefile("Hawk\\HawkKey.lua", key)
							else
								writefile("Hawk\\HawkKey.lua", key)
							end	
							wait()
							getgenv().makefolder = function() return nil end
							wait()
							getgenv().writefile = function() return nil end
							wait()
							getgenv().setclipboard = function() return nil end
							wait()
							cu(key)
							LoadHawk()
						end
					end)

					UICorner_6.CornerRadius = UDim.new(0, 5)
					UICorner_6.Parent = Continue

					UIStroke_2.Parent = Continue
					UIStroke_2.Color = Color3.fromRGB(67, 67, 67)
					UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					Clear.Name = "Clear"
					Clear.Parent = ButtonFolder
					Clear.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
					Clear.BorderColor3 = Color3.fromRGB(46, 46, 46)
					Clear.Size = UDim2.new(0, 200, 0, 31)
					Clear.Font = Enum.Font.GothamMedium
					Clear.Text = "Clear"
					Clear.TextColor3 = Color3.fromRGB(225, 225, 225)
					Clear.TextSize = 14.000
					Clear.MouseButton1Down:Connect(function()
						ripple(Clear, Mouse.X, Mouse.Y)
						wait(0.4)
						EnterKey.Text = ""
					end)

					UICorner_7.CornerRadius = UDim.new(0, 5)
					UICorner_7.Parent = Clear

					UIStroke_3.Parent = Clear
					UIStroke_3.Color = Color3.fromRGB(67, 67, 67)
					UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					Line_2.Name = "Line"
					Line_2.Parent = ButtonFolder
					Line_2.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
					Line_2.BorderColor3 = Color3.fromRGB(13, 13, 13)
					Line_2.Position = UDim2.new(0, 0, 0.410810798, 0)
					Line_2.Size = UDim2.new(0, 200, 0, 4)

					UICorner_8.CornerRadius = UDim.new(0, 5)
					UICorner_8.Parent = Line_2

					UIStroke_4.Parent = Line_2
					UIStroke_4.Color = Color3.fromRGB(60, 60, 60)

					CopyKeyLink.Name = "CopyKeyLink"
					CopyKeyLink.Parent = ButtonFolder
					CopyKeyLink.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
					CopyKeyLink.BorderColor3 = Color3.fromRGB(46, 46, 46)
					CopyKeyLink.Size = UDim2.new(0, 200, 0, 31)
					CopyKeyLink.Font = Enum.Font.GothamMedium
					CopyKeyLink.Text = "Copy Key Link"
					CopyKeyLink.TextColor3 = Color3.fromRGB(225, 225, 225)
					CopyKeyLink.TextSize = 14.000
					CopyKeyLink.MouseButton1Down:Connect(function()
						ripple(CopyKeyLink,Mouse.X,Mouse.Y)
						setclipboard("https://hawksoftworks.ga/Hawk/index.php")
					end)

					UICorner_9.CornerRadius = UDim.new(0, 5)
					UICorner_9.Parent = CopyKeyLink

					UIStroke_5.Parent = CopyKeyLink
					UIStroke_5.Color = Color3.fromRGB(67, 67, 67)
					UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					CopyDiscordInvite.Name = "CopyDiscordInvite"
					CopyDiscordInvite.Parent = ButtonFolder
					CopyDiscordInvite.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
					CopyDiscordInvite.BorderColor3 = Color3.fromRGB(46, 46, 46)
					CopyDiscordInvite.Size = UDim2.new(0, 200, 0, 31)
					CopyDiscordInvite.Font = Enum.Font.GothamMedium
					CopyDiscordInvite.Text = "Copy Discord Invite"
					CopyDiscordInvite.TextColor3 = Color3.fromRGB(225, 225, 225)
					CopyDiscordInvite.TextSize = 14.000
					CopyDiscordInvite.MouseButton1Down:Connect(function()
						ripple(CopyDiscordInvite, Mouse.X, Mouse.Y)
						setclipboard("https://discord.gg/v38jY8AF7d")
					end)

					UICorner_10.CornerRadius = UDim.new(0, 5)
					UICorner_10.Parent = CopyDiscordInvite

					UIStroke_6.Parent = CopyDiscordInvite
					UIStroke_6.Color = Color3.fromRGB(67, 67, 67)
					UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					UICorner_11.CornerRadius = UDim.new(0, 5)
					UICorner_11.Parent = RightFrame

					Line_3.Name = "Line"
					Line_3.Parent = RightFrame
					Line_3.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
					Line_3.BorderColor3 = Color3.fromRGB(48, 48, 48)
					Line_3.Position = UDim2.new(-0.00440528616, 0, 0, 0)
					Line_3.Size = UDim2.new(0, 1, 0, 269)

					UICorner_12.CornerRadius = UDim.new(99, 99)
					UICorner_12.Parent = Line_3

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

					local function FHYAL_fake_script() 
						local script = Instance.new('LocalScript', Main)

						local UIS = game:GetService("UserInputService")
						function dragify(Frame)
							dragToggle = nil
							dragSpeed = 0.15
							dragInput = nil
							dragStart = nil
							dragPos = nil
							function updateInput(input)
								Delta = input.Position - dragStart
								Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
								game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
							end
							Frame.InputBegan:Connect(function(input)
								if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
									dragToggle = true
									dragStart = input.Position
									startPos = Frame.Position
									input.Changed:Connect(function()
										if input.UserInputState == Enum.UserInputState.End then
											dragToggle = false
										end
									end)
								end
							end)
							Frame.InputChanged:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
									dragInput = input
								end
							end)
							game:GetService("UserInputService").InputChanged:Connect(function(input)
								if input == dragInput and dragToggle then
									updateInput(input)
								end
							end)
						end
						dragify(script.Parent)

					end
					coroutine.wrap(FHYAL_fake_script)()

				end

			else
				Intro()
				for i, v in pairs(game.CoreGui:GetChildren()) do
					if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
						v:Destroy()
					end
				end

				local HawkKeySystem = Instance.new("ScreenGui")
				local Main = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local Glow = Instance.new("ImageLabel")
				local TitleBar = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local Line = Instance.new("Frame")
				local Title = Instance.new("TextLabel")
				local Close = Instance.new("TextButton")
				local Contra = Instance.new("Frame")
				local Logo = Instance.new("ImageLabel")
				local UICorner_3 = Instance.new("UICorner")
				local Welcum = Instance.new("TextLabel")
				local GuudBro = Instance.new("TextLabel")
				local Power = Instance.new("TextLabel")
				local RightFrame = Instance.new("Frame")
				local Contain = Instance.new("Frame")
				local EnterKey = Instance.new("TextBox")
				local UICorner_4 = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local ButtonFolder = Instance.new("Frame")
				local UICorner_5 = Instance.new("UICorner")
				local UIListLayout = Instance.new("UIListLayout")
				local Continue = Instance.new("TextButton")
				local UICorner_6 = Instance.new("UICorner")
				local UIStroke_2 = Instance.new("UIStroke")
				local Clear = Instance.new("TextButton")
				local UICorner_7 = Instance.new("UICorner")
				local UIStroke_3 = Instance.new("UIStroke")
				local Line_2 = Instance.new("Frame")
				local UICorner_8 = Instance.new("UICorner")
				local UIStroke_4 = Instance.new("UIStroke")
				local CopyKeyLink = Instance.new("TextButton")
				local UICorner_9 = Instance.new("UICorner")
				local UIStroke_5 = Instance.new("UIStroke")
				local CopyDiscordInvite = Instance.new("TextButton")
				local UICorner_10 = Instance.new("UICorner")
				local UIStroke_6 = Instance.new("UIStroke")
				local UICorner_11 = Instance.new("UICorner")
				local Line_3 = Instance.new("Frame")
				local UICorner_12 = Instance.new("UICorner")
				local Glow_2 = Instance.new("ImageLabel")

				HawkKeySystem.Name = "HawkKeySystem"
				HawkKeySystem.Parent = game.CoreGui
				HawkKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				HawkKeySystem.ResetOnSpawn = false

				Main.Name = "Main"
				Main.Parent = HawkKeySystem
				Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				Main.BorderColor3 = Color3.fromRGB(20, 20, 20)
				Main.Position = UDim2.new(0.5, -225, 0.450971961, -134)
				Main.Size = UDim2.new(0, 451, 0, 301)

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

				TitleBar.Name = "TitleBar"
				TitleBar.Parent = Main
				TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				TitleBar.BorderColor3 = Color3.fromRGB(30, 30, 30)
				TitleBar.Size = UDim2.new(0, 451, 0, 29)

				UICorner_2.CornerRadius = UDim.new(0, 5)
				UICorner_2.Parent = TitleBar

				Line.Name = "Line"
				Line.Parent = TitleBar
				Line.Active = true
				Line.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
				Line.BorderColor3 = Color3.fromRGB(48, 48, 48)
				Line.Position = UDim2.new(0, 0, 1, 0)
				Line.Size = UDim2.new(0, 451, 0, 0)

				Title.Name = "Title"
				Title.Parent = TitleBar
				Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				Title.BackgroundTransparency = 1.000
				Title.BorderColor3 = Color3.fromRGB(30, 30, 30)
				Title.Position = UDim2.new(0.024390243, 0, 0, 0)
				Title.Size = UDim2.new(0, 167, 0, 29)
				Title.Font = Enum.Font.GothamBold
				Title.Text = "Hawk HUB | Key System"
				Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title.TextSize = 14.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				Close.Name = "Close"
				Close.Parent = TitleBar
				Close.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				Close.BackgroundTransparency = 1.000
				Close.BorderColor3 = Color3.fromRGB(30, 30, 30)
				Close.Position = UDim2.new(0.929046571, 0, 0, 0)
				Close.Size = UDim2.new(0, 32, 0, 29)
				Close.Font = Enum.Font.GothamBold
				Close.Text = "X"
				Close.TextColor3 = Color3.fromRGB(255, 255, 255)
				Close.TextSize = 14.000
				Close.MouseButton1Down:Connect(function()
					for i, v in pairs(game.CoreGui:GetChildren()) do
						if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
							v:Destroy()
						end
					end
				end)

				Contra.Name = "Contra"
				Contra.Parent = Main
				Contra.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				Contra.BorderColor3 = Color3.fromRGB(20, 20, 20)
				Contra.Position = UDim2.new(0.024390243, 0, 0.156146184, 0)
				Contra.Size = UDim2.new(0, 195, 0, 158)

				Logo.Name = "Logo"
				Logo.Parent = Contra
				Logo.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				Logo.BackgroundTransparency = 1.000
				Logo.BorderColor3 = Color3.fromRGB(20, 20, 20)
				Logo.Position = UDim2.new(0.310683757, 0, 0, 0)
				Logo.Size = UDim2.new(0, 72, 0, 70)
				Logo.Image = "rbxassetid://11777955625"

				UICorner_3.CornerRadius = UDim.new(1, 8)
				UICorner_3.Parent = Logo

				Welcum.Name = "Welcum"
				Welcum.Parent = Contra
				Welcum.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				Welcum.BorderColor3 = Color3.fromRGB(20, 20, 20)
				Welcum.Position = UDim2.new(0.0388888903, 0, 0.493670851, 0)
				Welcum.Size = UDim2.new(0, 160, 0, 39)
				Welcum.Font = Enum.Font.GothamBold
				Welcum.Text = "Welcome Back, " .. game.Players.LocalPlayer.DisplayName
				Welcum.TextColor3 = Color3.fromRGB(255, 255, 255)
				Welcum.TextSize = 14.000
				Welcum.TextXAlignment = Enum.TextXAlignment.Left

				GuudBro.Name = "GuudBro"
				GuudBro.Parent = Contra
				GuudBro.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				GuudBro.BorderColor3 = Color3.fromRGB(20, 20, 20)
				GuudBro.Position = UDim2.new(0.0388888903, 0, 0.702531636, 0)
				GuudBro.Size = UDim2.new(0, 160, 0, 25)
				GuudBro.Font = Enum.Font.GothamBold
				GuudBro.Text = "Enter Your Key Please Uwu"
				GuudBro.TextColor3 = Color3.fromRGB(255, 255, 255)
				GuudBro.TextSize = 14.000
				GuudBro.TextXAlignment = Enum.TextXAlignment.Left

				Power.Name = "Power"
				Power.Parent = Contra
				Power.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
				Power.BorderColor3 = Color3.fromRGB(20, 20, 20)
				Power.Position = UDim2.new(-0.00213677832, 0, 1.39873421, 0)
				Power.Size = UDim2.new(0, 160, 0, 31)
				Power.Font = Enum.Font.GothamBold
				Power.Text = "Powered By |Hawk Softworks|"
				Power.TextColor3 = Color3.fromRGB(60, 60, 60)
				Power.TextSize = 14.000
				Power.TextXAlignment = Enum.TextXAlignment.Left

				RightFrame.Name = "RightFrame"
				RightFrame.Parent = Main
				RightFrame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
				RightFrame.BorderColor3 = Color3.fromRGB(27, 27, 27)
				RightFrame.Position = UDim2.new(0.496674061, 0, 0.0996677727, 0)
				RightFrame.Size = UDim2.new(0, 227, 0, 271)

				Contain.Name = "Contain"
				Contain.Parent = RightFrame
				Contain.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
				Contain.BackgroundTransparency = 1.000
				Contain.BorderColor3 = Color3.fromRGB(27, 27, 27)
				Contain.Position = UDim2.new(0.0572687238, 0, 0.0557620823, 0)
				Contain.Size = UDim2.new(0, 200, 0, 232)

				EnterKey.Name = "EnterKey"
				EnterKey.Parent = Contain
				EnterKey.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				EnterKey.BorderColor3 = Color3.fromRGB(25, 25, 25)
				EnterKey.Size = UDim2.new(0, 200, 0, 27)
				EnterKey.Font = Enum.Font.Gotham
				EnterKey.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
				EnterKey.PlaceholderText = "Enter Key"
				EnterKey.Text = ""
				EnterKey.TextColor3 = Color3.fromRGB(178, 178, 178)
				EnterKey.TextSize = 14.000

				UICorner_4.Parent = EnterKey

				UIStroke.Parent = EnterKey
				UIStroke.Color = Color3.fromRGB(59, 59, 59)
				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				ButtonFolder.Name = "ButtonFolder"
				ButtonFolder.Parent = Contain
				ButtonFolder.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
				ButtonFolder.BackgroundTransparency = 1.000
				ButtonFolder.BorderColor3 = Color3.fromRGB(27, 27, 27)
				ButtonFolder.Position = UDim2.new(0, 0, 0.181034476, 0)
				ButtonFolder.Size = UDim2.new(0, 200, 0, 190)

				UICorner_5.CornerRadius = UDim.new(0, 5)
				UICorner_5.Parent = ButtonFolder

				UIListLayout.Parent = ButtonFolder
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 8)

				Continue.Name = "Continue"
				Continue.Parent = ButtonFolder
				Continue.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
				Continue.BorderColor3 = Color3.fromRGB(46, 46, 46)
				Continue.Size = UDim2.new(0, 200, 0, 31)
				Continue.Font = Enum.Font.GothamMedium
				Continue.Text = "Continue"
				Continue.TextColor3 = Color3.fromRGB(225, 225, 225)
				Continue.TextSize = 14.000
				Continue.MouseButton1Down:Connect(function()
					ripple(Continue, Mouse.X, Mouse.Y)
					wait(0.4)
					local key = EnterKey.Text
					local check = "https://hawksoftworks.ga/Hawk/Generated.php?key=" .. key
					if game:HttpGet(check) == "Taklaya Geldin" then
						if IsHawk == true then
							delfile("Hawk\\HawkKey.lua")
							wait(0.2)
							writefile("Hawk\\HawkKey.lua", key)
						else
							writefile("Hawk\\HawkKey.lua", key)
						end	
						wait()
						getgenv().makefolder = function() return nil end
						wait()
						getgenv().writefile = function() return nil end
						wait()
						getgenv().setclipboard = function() return nil end
						wait()
						cu(key)
						LoadHawk()
					end
				end)

				UICorner_6.CornerRadius = UDim.new(0, 5)
				UICorner_6.Parent = Continue

				UIStroke_2.Parent = Continue
				UIStroke_2.Color = Color3.fromRGB(67, 67, 67)
				UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				Clear.Name = "Clear"
				Clear.Parent = ButtonFolder
				Clear.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
				Clear.BorderColor3 = Color3.fromRGB(46, 46, 46)
				Clear.Size = UDim2.new(0, 200, 0, 31)
				Clear.Font = Enum.Font.GothamMedium
				Clear.Text = "Clear"
				Clear.TextColor3 = Color3.fromRGB(225, 225, 225)
				Clear.TextSize = 14.000
				Clear.MouseButton1Down:Connect(function()
					ripple(Clear, Mouse.X, Mouse.Y)
					wait(0.4)
					EnterKey.Text = ""
				end)

				UICorner_7.CornerRadius = UDim.new(0, 5)
				UICorner_7.Parent = Clear

				UIStroke_3.Parent = Clear
				UIStroke_3.Color = Color3.fromRGB(67, 67, 67)
				UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				Line_2.Name = "Line"
				Line_2.Parent = ButtonFolder
				Line_2.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
				Line_2.BorderColor3 = Color3.fromRGB(13, 13, 13)
				Line_2.Position = UDim2.new(0, 0, 0.410810798, 0)
				Line_2.Size = UDim2.new(0, 200, 0, 4)

				UICorner_8.CornerRadius = UDim.new(0, 5)
				UICorner_8.Parent = Line_2

				UIStroke_4.Parent = Line_2
				UIStroke_4.Color = Color3.fromRGB(60, 60, 60)

				CopyKeyLink.Name = "CopyKeyLink"
				CopyKeyLink.Parent = ButtonFolder
				CopyKeyLink.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
				CopyKeyLink.BorderColor3 = Color3.fromRGB(46, 46, 46)
				CopyKeyLink.Size = UDim2.new(0, 200, 0, 31)
				CopyKeyLink.Font = Enum.Font.GothamMedium
				CopyKeyLink.Text = "Copy Key Link"
				CopyKeyLink.TextColor3 = Color3.fromRGB(225, 225, 225)
				CopyKeyLink.TextSize = 14.000
				CopyKeyLink.MouseButton1Down:Connect(function()
					ripple(CopyKeyLink,Mouse.X,Mouse.Y)
					setclipboard("https://hawksoftworks.ga/Hawk/index.php")
				end)

				UICorner_9.CornerRadius = UDim.new(0, 5)
				UICorner_9.Parent = CopyKeyLink

				UIStroke_5.Parent = CopyKeyLink
				UIStroke_5.Color = Color3.fromRGB(67, 67, 67)
				UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				CopyDiscordInvite.Name = "CopyDiscordInvite"
				CopyDiscordInvite.Parent = ButtonFolder
				CopyDiscordInvite.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
				CopyDiscordInvite.BorderColor3 = Color3.fromRGB(46, 46, 46)
				CopyDiscordInvite.Size = UDim2.new(0, 200, 0, 31)
				CopyDiscordInvite.Font = Enum.Font.GothamMedium
				CopyDiscordInvite.Text = "Copy Discord Invite"
				CopyDiscordInvite.TextColor3 = Color3.fromRGB(225, 225, 225)
				CopyDiscordInvite.TextSize = 14.000
				CopyDiscordInvite.MouseButton1Down:Connect(function()
					ripple(CopyDiscordInvite, Mouse.X, Mouse.Y)
					setclipboard("https://discord.gg/v38jY8AF7d")
				end)

				UICorner_10.CornerRadius = UDim.new(0, 5)
				UICorner_10.Parent = CopyDiscordInvite

				UIStroke_6.Parent = CopyDiscordInvite
				UIStroke_6.Color = Color3.fromRGB(67, 67, 67)
				UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				UICorner_11.CornerRadius = UDim.new(0, 5)
				UICorner_11.Parent = RightFrame

				Line_3.Name = "Line"
				Line_3.Parent = RightFrame
				Line_3.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
				Line_3.BorderColor3 = Color3.fromRGB(48, 48, 48)
				Line_3.Position = UDim2.new(-0.00440528616, 0, 0, 0)
				Line_3.Size = UDim2.new(0, 1, 0, 269)

				UICorner_12.CornerRadius = UDim.new(99, 99)
				UICorner_12.Parent = Line_3

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

				local function FHYAL_fake_script() 
					local script = Instance.new('LocalScript', Main)

					local UIS = game:GetService("UserInputService")
					function dragify(Frame)
						dragToggle = nil
						dragSpeed = 0.15
						dragInput = nil
						dragStart = nil
						dragPos = nil
						function updateInput(input)
							Delta = input.Position - dragStart
							Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
							game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
						end
						Frame.InputBegan:Connect(function(input)
							if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
								dragToggle = true
								dragStart = input.Position
								startPos = Frame.Position
								input.Changed:Connect(function()
									if input.UserInputState == Enum.UserInputState.End then
										dragToggle = false
									end
								end)
							end
						end)
						Frame.InputChanged:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
								dragInput = input
							end
						end)
						game:GetService("UserInputService").InputChanged:Connect(function(input)
							if input == dragInput and dragToggle then
								updateInput(input)
							end
						end)
					end
					dragify(script.Parent)

				end
				coroutine.wrap(FHYAL_fake_script)()
			end
		end 
	end
else
	Intro()
	LoadHawk()
	cu("Key System Is Disabled")
end	
