for i, v in pairs(game.CoreGui:GetChildren()) do
	if v.Name == "Haw" then
		v:Destroy()
	end
end

local HawkKeySystem = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Stroke = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local KeyBox = Instance.new("TextBox")
local UICorner_6 = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Container = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local Clear = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local Temizle = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Line = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local CopyKeyLink = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local CKL = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local Line_2 = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local CopyDiscordLink = Instance.new("Frame")
local UICorner_14 = Instance.new("UICorner")
local CDL = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local Glow = Instance.new("ImageLabel")
local Glow_2 = Instance.new("ImageLabel")

HawkKeySystem.Name = "HawkKeySystem"
HawkKeySystem.Parent = game.CoreGui
HawkKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HawkKeySystem.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = HawkKeySystem
Main.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Main.Position = UDim2.new(0.413496673, -190, 0.5, -106)
Main.Size = UDim2.new(0, 463, 0, 213)

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Main

TitleBar.Name = "TitleBar"
TitleBar.Parent = Main
TitleBar.Active = true
TitleBar.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
TitleBar.BorderColor3 = Color3.fromRGB(60, 60, 60)
TitleBar.Size = UDim2.new(0, 463, 0, 28)

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = TitleBar

Stroke.Name = "Stroke"
Stroke.Parent = TitleBar
Stroke.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stroke.BackgroundTransparency = 0.850
Stroke.BorderColor3 = Color3.fromRGB(255, 255, 255)
Stroke.Position = UDim2.new(0, 0, 1, 0)
Stroke.Size = UDim2.new(0, 462, 0, 0)

UICorner_3.CornerRadius = UDim.new(0, 6)
UICorner_3.Parent = Stroke

Title.Name = "Title"
Title.Parent = TitleBar
Title.Active = true
Title.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(60, 60, 60)
Title.Position = UDim2.new(0.0129589634, 0, 0, 0)
Title.Size = UDim2.new(0, 206, 0, 28)
Title.Font = Enum.Font.GothamBold
Title.Text = "Hawk HUB | Key System"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UICorner_4.CornerRadius = UDim.new(0, 6)
UICorner_4.Parent = Title

Close.Name = "Close"
Close.Parent = TitleBar
Close.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Close.BackgroundTransparency = 1.000
Close.BorderColor3 = Color3.fromRGB(60, 60, 60)
Close.Position = UDim2.new(0.933708847, 0, 0, 0)
Close.Size = UDim2.new(0, 29, 0, 28)
Close.Font = Enum.Font.FredokaOne
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

UICorner_5.CornerRadius = UDim.new(0, 6)
UICorner_5.Parent = Close

KeyBox.Name = "KeyBox"
KeyBox.Parent = Main
KeyBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
KeyBox.BorderColor3 = Color3.fromRGB(60, 60, 60)
KeyBox.Position = UDim2.new(0.026423214, 0, 0.226172715, 0)
KeyBox.Size = UDim2.new(0, 438, 0, 46)
KeyBox.ClearTextOnFocus = false
KeyBox.Font = Enum.Font.FredokaOne
KeyBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
KeyBox.PlaceholderText = "Put Your Key Here"
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.fromRGB(178, 178, 178)
KeyBox.TextSize = 16.000
KeyBox.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 6)
UICorner_6.Parent = KeyBox

UIStroke.Parent = KeyBox
UIStroke.Color = Color3.fromRGB(255, 255, 255)
UIStroke.Transparency = 0.760
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

Container.Name = "Container"
Container.Parent = Main
Container.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Container.BackgroundTransparency = 1.000
Container.BorderColor3 = Color3.fromRGB(46, 46, 46)
Container.Position = UDim2.new(0, 0, 0.546831846, 0)
Container.Size = UDim2.new(0, 463, 0, 96)
Container.ZIndex = 3

UICorner_7.CornerRadius = UDim.new(0, 6)
UICorner_7.Parent = Container

UIListLayout.Parent = Container
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Clear.Name = "Clear"
Clear.Parent = Container
Clear.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Clear.BorderColor3 = Color3.fromRGB(60, 60, 60)
Clear.Size = UDim2.new(0, 463, 0, 30)
Clear.ZIndex = 0

UICorner_8.CornerRadius = UDim.new(0, 5)
UICorner_8.Parent = Clear

Temizle.Name = "Temizle"
Temizle.Parent = Clear
Temizle.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Temizle.BackgroundTransparency = 1.000
Temizle.BorderColor3 = Color3.fromRGB(60, 60, 60)
Temizle.Size = UDim2.new(0, 463, 0, 30)
Temizle.ZIndex = 0
Temizle.Font = Enum.Font.FredokaOne
Temizle.Text = "Clear"
Temizle.TextColor3 = Color3.fromRGB(255, 255, 255)
Temizle.TextSize = 16.000
Temizle.MouseButton1Down:Connect(function()
	ripple(Temizle,Mouse.X,Mouse.Y)
	KeyBox.Text = ""
end)

UICorner_9.CornerRadius = UDim.new(0, 5)
UICorner_9.Parent = Temizle

Line.Name = "Line"
Line.Parent = Container
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 0.850
Line.BorderColor3 = Color3.fromRGB(255, 255, 255)
Line.Position = UDim2.new(0, 0, 0.3125, 0)
Line.Size = UDim2.new(0, 463, 0, 3)

UICorner_10.CornerRadius = UDim.new(0, 6)
UICorner_10.Parent = Line

CopyKeyLink.Name = "CopyKeyLink"
CopyKeyLink.Parent = Container
CopyKeyLink.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CopyKeyLink.Position = UDim2.new(0, 0, 0.34375, 0)
CopyKeyLink.Size = UDim2.new(0, 463, 0, 30)
CopyKeyLink.ZIndex = 0

UICorner_11.CornerRadius = UDim.new(0, 5)
UICorner_11.Parent = CopyKeyLink

CKL.Name = "CKL"
CKL.Parent = CopyKeyLink
CKL.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CKL.BackgroundTransparency = 1.000
CKL.BorderColor3 = Color3.fromRGB(60, 60, 60)
CKL.Size = UDim2.new(0, 463, 0, 30)
CKL.ZIndex = 0
CKL.Font = Enum.Font.FredokaOne
CKL.Text = "Copy Key Link"
CKL.TextColor3 = Color3.fromRGB(255, 255, 255)
CKL.TextSize = 16.000
CKL.MouseButton1Down:Connect(function()
	ripple(CKL,Mouse.X,Mouse.Y)
	setclipboard("https://hawksoftworks.ga/Hawk/index.php")
end)

UICorner_12.CornerRadius = UDim.new(0, 5)
UICorner_12.Parent = CKL

Line_2.Name = "Line"
Line_2.Parent = Container
Line_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line_2.BackgroundTransparency = 0.850
Line_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Line_2.Position = UDim2.new(0, 0, 0.65625, 0)
Line_2.Size = UDim2.new(0, 463, 0, 3)

UICorner_13.CornerRadius = UDim.new(0, 6)
UICorner_13.Parent = Line_2

CopyDiscordLink.Name = "CopyDiscordLink"
CopyDiscordLink.Parent = Container
CopyDiscordLink.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CopyDiscordLink.Position = UDim2.new(0, 0, 0.6875, 0)
CopyDiscordLink.Size = UDim2.new(0, 463, 0, 30)
CopyDiscordLink.ZIndex = 0

UICorner_14.CornerRadius = UDim.new(0, 5)
UICorner_14.Parent = CopyDiscordLink

CDL.Name = "CDL"
CDL.Parent = CopyDiscordLink
CDL.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
CDL.BackgroundTransparency = 1.000
CDL.BorderColor3 = Color3.fromRGB(60, 60, 60)
CDL.Size = UDim2.new(0, 463, 0, 30)
CDL.ZIndex = 0
CDL.Font = Enum.Font.FredokaOne
CDL.Text = "Copy Discord Link"
CDL.TextColor3 = Color3.fromRGB(255, 255, 255)
CDL.TextSize = 16.000
CDL.MouseButton1Down:Connect(function()
	ripple(CDL,Mouse.X,Mouse.Y)
	setclipboard("https://discord.gg/v38jY8AF7d")
end)

UICorner_15.CornerRadius = UDim.new(0, 5)
UICorner_15.Parent = CDL

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

Anan = false
repeat wait(0.5)
	local key = KeyBox.Text
	local check = "https://hawksoftworks.ga/Hawk/check.php?key=" .. key
	if game:HttpGet(check) == "Whitelisted" then
		Anan = true
		if IsHawk == true then
			delfile("HawkKey.lua")
			wait(0.2)
			writefile("HawkKey.lua", key)
		else
			writefile("HawkKey.lua", key)
		end	
		LoadHawkMobile()
	end
	wait()
until Anan == true