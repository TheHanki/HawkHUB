for i, v in pairs(game.CoreGui:GetChildren()) do
	if v.Name == "messii" then
		v:Destroy()
	end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/setup.lua"))()
local KeySystem = _G.KSS.classes.keysystem.new("PlanetHub") -- Key Systemin
local keylink;
local anahtar;
local Key = KeySystem:key() -- key systemin sonucunda aldigin key

for i, v in pairs(Key) do
	if i == "hwid" then
		local keylinq = "https://kys.rblxscripts.fun/getkey/PlanetHub?hwid="..v --key alma linki
		keylink = keylinq
	elseif i == "key" then
		anahtar = v
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

HawkKeySystem.Name = "messii"
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
Title.Text = "Planet HUB | Key System"
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
		if v.Name == "messii" then
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
Logo.Image = "rbxassetid://1"

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
Power.Text = "Powered By |messi|"
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
EnterKey.TextSize = 11.000

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
	for i, v in pairs(Key) do
		if i == "key" then
			if anahtar == v then
				print("buraya scriptini koyarsin")
			end
		end
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
	setclipboard(keylink)
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
	setclipboard("dc linkini buraya koyarsin")
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
