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

local V3RM = game:HttpGet('https://raw.githubusercontent.com/TheHanki/Hawk/main/LastUpdate')
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