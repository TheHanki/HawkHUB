_Hawk = "iVpl7IrqpMm9dD9rChcL8dtTJWV2kAvTGZbBdMuCezzsPluYJnvDHrKMmjEks6d33hNd8q1eBAI7q2WxgDZ2mlNXxFMiAuY8K7SpC2gGCjuE6RZksxwvdjvMIdojUYH4MDkO6l9Eckwvj3W6YuArB6Qelzb2pJOpWKpsTRdo43M0gpTn6GakkFnZxPPQPZbJe4YsunXo0EqBQvbtgUH4zmymRyR3EaKJWA9eGl3bsy4HEJ7f7sccQiI8peC4Jeks8p0pDFMTlG9VWHrhQG6SFKQvSpYbujs9vojims1u1PR32Bw2q83giw23hf8nQMXl3cZQoTFlk5OYCHhowVMSYd9YRixyfwB1WCJ" 

for i, v in pairs(game.CoreGui:GetChildren()) do
	if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
		v:Destroy()
	end
end


local Mouse = game.Players.LocalPlayer:GetMouse()
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local corner = Instance.new("UICorner")
local Circle = Instance.new("ImageLabel")

function buttonanimation(button)
	TweenService:Create(button, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextSize = 18}):Play()
	wait(0.3)
	TweenService:Create(button, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextSize = 14}):Play()
end

local Mouse = game.Players.LocalPlayer:GetMouse()
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local HawkLoader = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Glow = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local Welcum = Instance.new("TextLabel")
local HawkHUB = Instance.new("TextLabel")
local Logo = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local CopyDiscord = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local JoinDiscord = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UIStroke_2 = Instance.new("UIStroke")
local Versiyon = Instance.new("TextLabel")
local Launch = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UIStroke_3 = Instance.new("UIStroke")
local FnafGayFurryPorn = Instance.new("ImageLabel")
local UICorner_7 = Instance.new("UICorner")
local Stroke = Instance.new("Frame")

HawkLoader.Name = "HawkLoader"
HawkLoader.Parent = game.CoreGui
HawkLoader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HawkLoader.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = HawkLoader
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.BorderColor3 = Color3.fromRGB(25, 25, 25)
Main.Position = UDim2.new(0.5, -210, 0.5, -180)
Main.Size = UDim2.new(0, 421, 0, 360)

UICorner.CornerRadius = UDim.new(0, 6)
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

UICorner_2.Parent = Glow

Welcum.Name = "Welcum"
Welcum.Parent = Main
Welcum.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Welcum.BackgroundTransparency = 1.000
Welcum.BorderColor3 = Color3.fromRGB(25, 25, 25)
Welcum.Position = UDim2.new(0.0813825056, 0, 0.0483383723, 0)
Welcum.Size = UDim2.new(0, 200, 0, 50)
Welcum.Font = Enum.Font.GothamBold
Welcum.Text = "Welcome To"
Welcum.TextColor3 = Color3.fromRGB(255, 255, 255)
Welcum.TextSize = 37.000
Welcum.TextXAlignment = Enum.TextXAlignment.Left

HawkHUB.Name = "HawkHUB"
HawkHUB.Parent = Main
HawkHUB.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
HawkHUB.BackgroundTransparency = 1.000
HawkHUB.BorderColor3 = Color3.fromRGB(25, 25, 25)
HawkHUB.Position = UDim2.new(0.186854571, 0, 0.199395761, 0)
HawkHUB.Size = UDim2.new(0, 131, 0, 33)
HawkHUB.Font = Enum.Font.GothamBold
HawkHUB.Text = "Hawk <font color=\"rgb(0, 100, 255)\">HUB</font>"
HawkHUB.TextColor3 = Color3.fromRGB(255, 255, 255)
HawkHUB.TextSize = 25.000
HawkHUB.TextXAlignment = Enum.TextXAlignment.Left
HawkHUB.RichText = true

Logo.Name = "Logo"
Logo.Parent = Main
Logo.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(25, 25, 25)
Logo.Position = UDim2.new(0.70615536, 0, 0.0288939159, 0)
Logo.Size = UDim2.new(0, 95, 0, 90)
Logo.Image = "http://www.roblox.com/asset/?id=10179402650"

UICorner_3.CornerRadius = UDim.new(0, 9)
UICorner_3.Parent = Logo

CopyDiscord.Name = "CopyDiscord"
CopyDiscord.Parent = Main
CopyDiscord.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
CopyDiscord.BackgroundTransparency = 1.000
CopyDiscord.BorderColor3 = Color3.fromRGB(0, 100, 255)
CopyDiscord.Position = UDim2.new(0.355839282, 0, 0.343907326, 0)
CopyDiscord.Size = UDim2.new(0, 120, 0, 30)
CopyDiscord.Font = Enum.Font.GothamBold
CopyDiscord.Text = "Copy Discord"
CopyDiscord.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyDiscord.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(1, 6)
UICorner_4.Parent = CopyDiscord

UIStroke.Parent = CopyDiscord
UIStroke.Color = Color3.fromRGB(0, 100, 255)
UIStroke.Thickness = 2.000
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

JoinDiscord.Name = "JoinDiscord"
JoinDiscord.Parent = Main
JoinDiscord.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
JoinDiscord.BackgroundTransparency = 1.000
JoinDiscord.BorderColor3 = Color3.fromRGB(0, 100, 255)
JoinDiscord.Position = UDim2.new(0.0426199473, 0, 0.344410866, 0)
JoinDiscord.Size = UDim2.new(0, 120, 0, 30)
JoinDiscord.Font = Enum.Font.GothamBold
JoinDiscord.Text = "Join Discord"
JoinDiscord.TextColor3 = Color3.fromRGB(255, 255, 255)
JoinDiscord.TextSize = 14.000

UICorner_5.CornerRadius = UDim.new(1, 6)
UICorner_5.Parent = JoinDiscord

UIStroke_2.Parent = JoinDiscord
UIStroke_2.Color = Color3.fromRGB(0, 100, 255)
UIStroke_2.Thickness = 2.000
UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local V3RM = loadstring(game:HttpGet('https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Version.lua'))()
Versiyon.Name = "Version"
Versiyon.Parent = Main
Versiyon.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Versiyon.BorderColor3 = Color3.fromRGB(25, 25, 25)
Versiyon.Position = UDim2.new(0.0410025045, 0, 0.447129905, 0)
Versiyon.Size = UDim2.new(0, 174, 0, 34)
Versiyon.Font = Enum.Font.GothamBold
Versiyon.Text = "Version: <font color=\"rgb(0, 100, 255)\">"..V3RM.."</font>"
Versiyon.TextColor3 = Color3.fromRGB(255, 255, 255)
Versiyon.TextSize = 17.000
Versiyon.RichText = true

Launch.Name = "Launch"
Launch.Parent = Main
Launch.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
Launch.BackgroundTransparency = 1.000
Launch.BorderColor3 = Color3.fromRGB(0, 100, 255)
Launch.Position = UDim2.new(0.676504493, 0, 0.343907326, 0)
Launch.Size = UDim2.new(0, 120, 0, 30)
Launch.Font = Enum.Font.GothamBold
Launch.Text = "Launch"
Launch.TextColor3 = Color3.fromRGB(255, 255, 255)
Launch.TextSize = 14.000

UICorner_6.CornerRadius = UDim.new(1, 6)
UICorner_6.Parent = Launch

UIStroke_3.Parent = Launch
UIStroke_3.Color = Color3.fromRGB(0, 100, 255)
UIStroke_3.Thickness = 2.000
UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

FnafGayFurryPorn.Name = "FnafGayFurryPorn"
FnafGayFurryPorn.Parent = Main
FnafGayFurryPorn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
FnafGayFurryPorn.BackgroundTransparency = 1.000
FnafGayFurryPorn.BorderColor3 = Color3.fromRGB(25, 25, 25)
FnafGayFurryPorn.Position = UDim2.new(0, 0, 0.551309049, 0)
FnafGayFurryPorn.Size = UDim2.new(0, 421, 0, 161)
FnafGayFurryPorn.Image = "rbxassetid://7941569550"

UICorner_7.CornerRadius = UDim.new(0, 6)
UICorner_7.Parent = FnafGayFurryPorn

Stroke.Name = "Stroke"
Stroke.Parent = Main
Stroke.BackgroundColor3 = Color3.fromRGB(107, 107, 107)
Stroke.BorderColor3 = Color3.fromRGB(107, 107, 107)
Stroke.Position = UDim2.new(0, 0, 0.548531294, 0)
Stroke.Size = UDim2.new(0, 421, 0, 1)

Launch.MouseEnter:Connect(function()
	TweenService:Create(
		Launch,
		TweenInfo.new(.3, Enum.EasingStyle.Back),
		{BackgroundTransparency = 0}
	):Play()
end)

CopyDiscord.MouseEnter:Connect(function()
	TweenService:Create(
		CopyDiscord,
		TweenInfo.new(.3, Enum.EasingStyle.Back),
		{BackgroundTransparency = 0}
	):Play()
end)

JoinDiscord.MouseEnter:Connect(function()
	TweenService:Create(
		JoinDiscord,
		TweenInfo.new(.3, Enum.EasingStyle.Back),
		{BackgroundTransparency = 0}
	):Play()
end)

Launch.MouseLeave:Connect(function()
	TweenService:Create(
		Launch,
		TweenInfo.new(.3, Enum.EasingStyle.Back),
		{BackgroundTransparency = 1}
	):Play()
end)

CopyDiscord.MouseLeave:Connect(function()
	TweenService:Create(
		CopyDiscord,
		TweenInfo.new(.3, Enum.EasingStyle.Back),
		{BackgroundTransparency = 1}
	):Play()
end)

JoinDiscord.MouseLeave:Connect(function()
	TweenService:Create(
		JoinDiscord,
		TweenInfo.new(.3, Enum.EasingStyle.Back),
		{BackgroundTransparency = 1}
	):Play()
end)

JoinDiscord.MouseButton1Down:Connect(function()
	buttonanimation(JoinDiscord)
	wait(1)
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


end)

CopyDiscord.MouseButton1Down:Connect(function()
	buttonanimation(CopyDiscord)
	wait(1)
	setclipboard("https://discord.gg/5TSZESaFhG")
end)

Launch.MouseButton1Down:Connect(function()
	buttonanimation(Launch)
	wait(1)
	for i, v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
			v:Destroy()
		end
	end
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Nurdisina.lua", true))()

	local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Libs/MobileLib.lua", true))()
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
				_Hawk = "
				
				" 
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
	

	local admins = loadstring(game:HttpGet("https://raw.githubusercontent.com/SimsekGucu/BabaPro/main/Tables/Admins.lua", true))()
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

local function YSEL_fake_script() -- Gui.Main.Dragify 
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
coroutine.wrap(YSEL_fake_script)()
