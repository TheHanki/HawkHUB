local ChristmasChecker = loadstring(game:HttpGet("https://hawksoftworks.ga/Hawk/Christmas.lua", true))()

for i, v in pairs(game.CoreGui:GetDescendants()) do
	if v.Name == "HawkLoader" then
		v:Destroy()
	end
end
for i, v in pairs(game.CoreGui:GetDescendants()) do
	if v.Name == "Hawk" then
		v:Destroy()
	end
end
for i, v in pairs(game.CoreGui:GetDescendants()) do
	if v.Name == "HawkNotification" then
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
	TweenInfo.new(.2, Enum.EasingStyle.Quad),
	{BackgroundTransparency = 0}
):Play()
TweenService:Create(
	Hawk_Logo,
	TweenInfo.new(.2, Enum.EasingStyle.Quad),
	{ImageTransparency = 0}
):Play()
TweenService:Create(
	Shadow,
	TweenInfo.new(.2, Enum.EasingStyle.Quad),
	{ImageTransparency = 0}
):Play()
TweenService:Create(
	Shadow_2,
	TweenInfo.new(.2, Enum.EasingStyle.Quad),
	{ImageTransparency = 0}
):Play()
wait(1)
TweenService:Create(
	Hawk_Logo,
	TweenInfo.new(.2, Enum.EasingStyle.Quad),
	{ImageTransparency = 1}
):Play()
