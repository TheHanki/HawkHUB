for i, v in pairs(game.CoreGui:GetDescendants()) do
	if v.Name == "HawkAd" then
		v:Destroy()
	end
end

local HawkAd = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Glow = Instance.new("ImageLabel")
local Glow_2 = Instance.new("ImageLabel")
local Logo = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local close = Instance.new("ImageButton")
local check = Instance.new("ImageButton")

HawkAd.Name = "HawkAd"
HawkAd.Parent = game.CoreGui
HawkAd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HawkAd.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = HawkAd
Main.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Main.BorderColor3 = Color3.fromRGB(21, 21, 21)
Main.Position = UDim2.new(0.228516892, 0, 0.746062994, 0)
Main.Size = UDim2.new(0.588408649, 0, 0.196850389, 0)

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

Logo.Name = "Logo"
Logo.Parent = Main
Logo.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(20, 20, 20)
Logo.Position = UDim2.new(0.021869028, 0, 0.0700000077, 0)
Logo.Size = UDim2.new(0.118260697, 0, 0.599722207, 0)
Logo.Image = "rbxassetid://11777955625"

UICorner_2.CornerRadius = UDim.new(1, 8)
UICorner_2.Parent = Logo

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(21, 21, 21)
TextLabel.Position = UDim2.new(0.20200333, 0, 0.129999995, 0)
TextLabel.Size = UDim2.new(0.445138574, 0, 0.232833326, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Wanna Load Hawk HUB!!!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 18.000

TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(21, 21, 21)
TextLabel_2.Position = UDim2.new(0.202003345, 0, 0.460000008, 0)
TextLabel_2.Size = UDim2.new(0.520878553, 0, 0.324555546, 0)
TextLabel_2.Font = Enum.Font.GothamBold
TextLabel_2.Text = "B, we finally fixed the script :)"
TextLabel_2.TextColor3 = Color3.fromRGB(203, 203, 203)
TextLabel_2.TextSize = 18.000
TextLabel_2.TextWrapped = true

close.Name = "close"
close.Parent = Main
close.BackgroundTransparency = 1.000
close.LayoutOrder = 5
close.Position = UDim2.new(0.924040079, 0, 0.530000031, 0)
close.Size = UDim2.new(0.0478357859, 0, 0.275166661, 0)
close.ZIndex = 2
close.Image = "rbxassetid://3926305904"
close.ImageRectOffset = Vector2.new(284, 4)
close.ImageRectSize = Vector2.new(24, 24)
close.MouseButton1Down:Connect(function()
	for i, v in pairs(game.CoreGui:GetDescendants()) do
		if v.Name == "HawkAd" then
			v:Destroy()
		end
	end
end)

check.Name = "check"
check.Parent = Main
check.BackgroundTransparency = 1.000
check.LayoutOrder = 5
check.Position = UDim2.new(0.924040079, 0, 0.0700000003, 0)
check.Size = UDim2.new(0.0478357859, 0, 0.275166661, 0)
check.ZIndex = 2
check.Image = "rbxassetid://3926305904"
check.ImageRectOffset = Vector2.new(312, 4)
check.ImageRectSize = Vector2.new(24, 24)
check.MouseButton1Down:Connect(function()
	for i, v in pairs(game.CoreGui:GetDescendants()) do
		if v.Name == "HawkAd" then
			v:Destroy()
		end
	end
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TheHanki/Hawk/main/HUB/HawkHUB.lua",true))();
end)