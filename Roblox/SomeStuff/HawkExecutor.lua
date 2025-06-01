local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Mouse = game.Players.LocalPlayer:GetMouse()
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

local function ripple(button, x, y)
	spawn(function()
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
		circle:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, -size / 2, 0.5, -size / 2), "Out", "Linear", 0.3)
		for i = 1, 10 do
			circle.ImageTransparency = i/10
			wait()
		end
		circle:Destroy()   
	end)
end

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
				input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end

for i, v in pairs(game.CoreGui:GetChildren()) do
	if v.Name == "HawkSec" then
		v:Destroy()
	end
end

local HawkSec = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Glow = Instance.new("ImageLabel")
local Glow_2 = Instance.new("ImageLabel")
local TitleBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Glow_3 = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local Pages = Instance.new("Frame")
local ObfuscatorFrame = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Obf = Instance.new("TextBox")
local UICorner_5 = Instance.new("UICorner")
local Glow_4 = Instance.new("ImageLabel")
local Obfuscate = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Glow_5 = Instance.new("ImageLabel")
local Copy = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Glow_6 = Instance.new("ImageLabel")
local UICorner_8 = Instance.new("UICorner")
local LoadstringerFrame = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local Loads = Instance.new("TextBox")
local UICorner_10 = Instance.new("UICorner")
local Glow_7 = Instance.new("ImageLabel")
local Lolinger = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local Glow_8 = Instance.new("ImageLabel")
local Copy_2 = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local Glow_9 = Instance.new("ImageLabel")
local CreditsFrame = Instance.new("Frame")
local UICorner_13 = Instance.new("UICorner")
local takla = Instance.new("TextLabel")
local UICorner_14 = Instance.new("UICorner")
local takla_2 = Instance.new("TextLabel")
local UICorner_15 = Instance.new("UICorner")
local takla_3 = Instance.new("TextLabel")
local UICorner_16 = Instance.new("UICorner")
local ExecutorFrame = Instance.new("Frame")
local UICorner_17 = Instance.new("UICorner")
local Run = Instance.new("Frame")
local UICorner_18 = Instance.new("UICorner")
local Glow_10 = Instance.new("ImageLabel")
local Contanier = Instance.new("Frame")
local UICorner_19 = Instance.new("UICorner")
local Clear = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local Refresh = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local Execute = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local SaveFile = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local Script = Instance.new("ScrollingFrame")
local Lines = Instance.new("TextLabel")
local Source = Instance.new("TextBox")
local Comments_ = Instance.new("TextLabel")
local Globals_ = Instance.new("TextLabel")
local Keywords_ = Instance.new("TextLabel")
local RemoteHighlight_ = Instance.new("TextLabel")
local Strings_ = Instance.new("TextLabel")
local Tokens_ = Instance.new("TextLabel")
local Numbers_ = Instance.new("TextLabel")
local ScriptList = Instance.new("Frame")
local UICorner_24 = Instance.new("UICorner")
local ScriptTitleBar = Instance.new("Frame")
local UICorner_25 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Scripts = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Tabs = Instance.new("Frame")
local TabsContainer = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local Obfuscator = Instance.new("TextButton")
local Executor = Instance.new("TextButton")
local Loadstringer = Instance.new("TextButton")
local Credits = Instance.new("TextButton")
local UICorner_27 = Instance.new("UICorner")
local UICorner_28 = Instance.new("UICorner")
local SaveFileCheckFrame = Instance.new("Frame")
local SaveFileCheckFrameCorner = Instance.new("UICorner")
local OptionsFrame = Instance.new("Frame")
local OptionsFrameCorner = Instance.new("UICorner")
local YESButton = Instance.new("TextButton")
local YESButtonCorner = Instance.new("UICorner")
local NOButton = Instance.new("TextButton")
local NOButtonCorner = Instance.new("UICorner")
local CreateButton = Instance.new("TextButton")
local CreateButtonCorner = Instance.new("UICorner")
local OptionsFrameTitle = Instance.new("TextLabel")
local OptionsFrameDesc = Instance.new("TextLabel")
local FileCreateBox = Instance.new("TextBox")
local FileCreateBoxCorner = Instance.new("UICorner")

local MainFolder = "Hawk"
local CodeStorage = MainFolder.."/".."CodeStorage"
local FilesStorage = MainFolder.."/".."FilesStorage"
--local ConfigsStorage = MainFolder.."/".."ConfigsStorage"

local ExecuteFile = CodeStorage.."/".."Exec.lua"
local SaveProgress = CodeStorage.."/".."Saved.lua"

function addluafolder()
	if isfolder(MainFolder) then

	else
		makefolder(MainFolder)
	end
end

function addluastorage()
	if isfolder(CodeStorage) then

	else
		makefolder(CodeStorage)
	end
end

function addFilesStorage()
	if isfolder(FilesStorage) then

	else
		makefolder(FilesStorage)
	end
end

--[[
function addConfigsStorage()
	if isfolder(ConfigsStorage) then

	else
		makefolder(ConfigsStorage)
	end
end
]]

addluafolder()
addluastorage()
addFilesStorage()
--addConfigsStorage()


function AddFileToStorage(name)
	writefile(FilesStorage.."/"..name..".lua", Source.Text)
	local stringi = FilesStorage.."/"..name..".lua"

	local NewFileClone = game:GetService("CoreGui").InternalUi.Main.ScriptList.Scripts.SavedFiles:Clone()
	NewFileClone.Parent = Scripts
	NewFileClone.Text = string.gsub(stringi, "Hawk/FilesStorage", "\n")
	NewFileClone.Name = string.gsub(stringi, "Hawk/FilesStorage", "\n")
	NewFileClone.Visible = true
	NewFileClone.TextXAlignment = Enum.TextXAlignment.Left
end

function RefreshFilesStorage()
	for i,v in pairs(Scripts:GetChildren()) do
		if v.ClassName == "TextButton" and v.Name ~= "SavedFiles" then
			v:Destroy()
		end
	end
	local listF = listfiles(FilesStorage)
	for i,v in pairs(listF) do
		local NewFileClone = game:GetService("CoreGui").InternalUi.Main.ScriptList.Scripts.SavedFiles:Clone()
		NewFileClone.Parent = Scripts
		NewFileClone.Text = string.gsub(v, "Hawk/FilesStorage", "\n")
		NewFileClone.Name = v
		NewFileClone.Visible = true
		NewFileClone.TextXAlignment = Enum.TextXAlignment.Left
	end
	for i,v in pairs(Scripts:GetChildren()) do
		if v.ClassName == "TextButton" then
			v.MouseButton1Click:Connect(function()
				Source.Text = ""
				Source.Text = readfile(v.Name)
			end)
		end
	end
end

function addluaexecutefile()
	writefile(ExecuteFile, Source.Text)
end

function savefileprogress()
	writefile(SaveProgress, Source.Text)
end

HawkSec.Name = "HawkSec"
HawkSec.Parent = game.CoreGui
HawkSec.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
HawkSec.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = HawkSec
Main.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
Main.BorderColor3 = Color3.fromRGB(28, 28, 28)
Main.Position = UDim2.new(0.273944438, 0, 0.18875502, 0)
Main.Size = UDim2.new(0, 448, 0, 278)
MakeDraggable(Main,Main)

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

TitleBar.Name = "TitleBar"
TitleBar.Parent = Main
TitleBar.Active = true
TitleBar.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
TitleBar.BorderColor3 = Color3.fromRGB(38, 38, 38)
TitleBar.Size = UDim2.new(0, 448, 0, 31)

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = TitleBar

Glow_3.Name = "Glow"
Glow_3.Parent = TitleBar
Glow_3.Active = true
Glow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_3.BackgroundTransparency = 1.000
Glow_3.Position = UDim2.new(0, -15, 0, -15)
Glow_3.Size = UDim2.new(1, 30, 1, 30)
Glow_3.ZIndex = 0
Glow_3.Image = "rbxassetid://5028857084"
Glow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_3.ImageTransparency = 0.800
Glow_3.ScaleType = Enum.ScaleType.Slice
Glow_3.SliceCenter = Rect.new(24, 24, 276, 276)

TextLabel.Parent = TitleBar
TextLabel.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(38, 38, 38)
TextLabel.Position = UDim2.new(0.0223214291, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 31)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "HawkSec"
TextLabel.TextColor3 = Color3.fromRGB(223, 223, 223)
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

UICorner_3.CornerRadius = UDim.new(0, 5)
UICorner_3.Parent = TextLabel

TextButton.Parent = TitleBar
TextButton.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(38, 38, 38)
TextButton.Position = UDim2.new(0.928571403, 0, 0, 0)
TextButton.Size = UDim2.new(0, 32, 0, 31)
TextButton.Font = Enum.Font.GothamBlack
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(223, 223, 223)
TextButton.TextSize = 14.000
TextButton.MouseButton1Down:Connect(function()
	for i, v in pairs(game.CoreGui:GetChildren()) do
		if v.Name == "HawkSec" then
			v:Destroy()
		end
	end
end)

Pages.Name = "Pages"
Pages.Parent = Main
Pages.Active = true
Pages.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
Pages.BackgroundTransparency = 1.000
Pages.BorderColor3 = Color3.fromRGB(28, 28, 28)
Pages.Position = UDim2.new(0.225446433, 0, 0.111510791, 0)
Pages.Size = UDim2.new(0, 347, 0, 247)
Pages.ZIndex = 0

ObfuscatorFrame.Name = "ObfuscatorFrame"
ObfuscatorFrame.Parent = Pages
ObfuscatorFrame.Active = true
ObfuscatorFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
ObfuscatorFrame.BorderColor3 = Color3.fromRGB(28, 28, 28)
ObfuscatorFrame.Size = UDim2.new(0, 347, 0, 247)
ObfuscatorFrame.Visible = false

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = ObfuscatorFrame

Obf.Name = "Obf"
Obf.Parent = ObfuscatorFrame
Obf.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Obf.BorderColor3 = Color3.fromRGB(39, 39, 39)
Obf.Position = UDim2.new(0.0662824214, 0, 0.0607287437, 0)
Obf.Size = UDim2.new(0, 300, 0, 110)
Obf.Font = Enum.Font.GothamBlack
Obf.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
Obf.PlaceholderText = "Put Your Code For Obfuscate"
Obf.Text = ""
Obf.TextColor3 = Color3.fromRGB(178, 178, 178)
Obf.TextSize = 14.000
Obf.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = Obf

Glow_4.Name = "Glow"
Glow_4.Parent = Obf
Glow_4.Active = true
Glow_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_4.BackgroundTransparency = 1.000
Glow_4.Position = UDim2.new(0, -15, 0, -15)
Glow_4.Size = UDim2.new(1, 30, 1, 30)
Glow_4.ZIndex = 0
Glow_4.Image = "rbxassetid://5028857084"
Glow_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_4.ScaleType = Enum.ScaleType.Slice
Glow_4.SliceCenter = Rect.new(24, 24, 276, 276)

Obfuscate.Name = "Obfuscate"
Obfuscate.Parent = ObfuscatorFrame
Obfuscate.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Obfuscate.Position = UDim2.new(0.0662824214, 0, 0.647773266, 0)
Obfuscate.Size = UDim2.new(0, 136, 0, 69)
Obfuscate.Font = Enum.Font.GothamBold
Obfuscate.Text = "Obfuscate!"
Obfuscate.TextColor3 = Color3.fromRGB(223, 223, 223)
Obfuscate.TextSize = 14.000
Obfuscate.MouseButton1Down:Connect(function()
	ripple(Obfuscate, Mouse.X,Mouse.Y)
	local script_to_obfuscate = Obf.Text

	for i=0, 2 do
		wait(0.3)
		print("\nObfuscating...\n")
	end

	local string_list = {
		"HawkSec",
		"Piro",
		"Napim",
		"Kuesti Siktik",
		"Cok Tehlikeli Oldu",
		"(Evde Denemeyin)",
		"Pepe Izle",
		"Hawked",
		"Rescept Bro Rescept",
		"Rekt",
		"Ez",
		"Sana Soran Olmadi",
		"Sen Agliyon",
		"Caillou Trap Remix",
		"Free Robux",
		"Elon Musk",
		"this is a epicc obfuscator",
		"omg!/?!?1?11?! JSJSPOLOIT OBFUSCATOR?/?",
		"hi",
		"this is a anan",
		"Anan was here",
		"vavavavavavavavavdywvfuewwufbwe",
		"IliILilliiLLIlili",
		"boblaks",
		"why did i choose to learn lua",
		"Omagad",
		"Omaga Killer",
		"Zort Technologies",
		"DL version 1.0 = trash obfuscator  |  use moonsec",
		"Amogus??",
		"l + ratio = ...",
		"sakpot sucks",
		"define getfenv",
		"G-G-GUYS IS JJSPLOIT A-A-A V-VIRUS??!1!:?1?",
		"Komikmi Orosbu cocu",
		"Omagas",
		"e",
		"thats what the point of the mask is",
		"#6$2*640x2  omgz look incripted numbors!1!",
		"British HUB sucks",
		"sussy",
		"Jun Hajaj Gay ming",
		"Heckir",
		"Sussy Bakaa"
	}


	function getRandomStringFromTable(table)
		local amountofthingsintable = #table
		local randnum = math.random(1,amountofthingsintable)
		local count = 0
		for i, v in pairs(table)do
			count = count + 1
			if count == randnum then
				return v
			end
		end
	end


	local obfuscated_script = "local NNUNUNUNNUNUNUNUNUNUUN = 'Obfuscated_By_Hawk_Sec, Discord=discord.gg/7Y25tcPH4D, #OnlyHawk'"

	function addVarToString()
		obfuscated_script = obfuscated_script.." local HawkSecure"..math.random(10000000,99999999).." = "..math.random(1,5254).." "
	end

	function addStringVarToString()
		obfuscated_script = obfuscated_script.." local KafadarAyilar"..math.random(10000000,99999999).."=\""..getRandomStringFromTable(string_list).."\""
	end

	function addFuncToString()
		obfuscated_script = obfuscated_script.." function Ananananannanan"..math.random(100000000,999999999).."()return \""..getRandomStringFromTable(string_list).."\" end"
	end

	local encoded = script_to_obfuscate:gsub(".", function(bb) return "\\" .. bb:byte() end) or script_to_obfuscate .. "\""
	wait(0.1)
	addVarToString()
	addStringVarToString()
	addFuncToString()
	wait(0.1)

	Obf.Text = obfuscated_script .. ' loadstring(' .. encoded .. ')'  
	function otuzbiy()
		setclipboard(obfuscated_script .. ' loadstring(' .. encoded .. ')'  )
	end
end)

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = Obfuscate

Glow_5.Name = "Glow"
Glow_5.Parent = Obfuscate
Glow_5.Active = true
Glow_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_5.BackgroundTransparency = 1.000
Glow_5.Position = UDim2.new(0, -15, 0, -15)
Glow_5.Size = UDim2.new(1, 30, 1, 30)
Glow_5.ZIndex = 0
Glow_5.Image = "rbxassetid://5028857084"
Glow_5.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_5.ScaleType = Enum.ScaleType.Slice
Glow_5.SliceCenter = Rect.new(24, 24, 276, 276)

Copy.Name = "Copy"
Copy.Parent = ObfuscatorFrame
Copy.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Copy.Position = UDim2.new(0.538904905, 0, 0.647773266, 0)
Copy.Size = UDim2.new(0, 136, 0, 69)
Copy.Font = Enum.Font.GothamBold
Copy.Text = "Copy!"
Copy.TextColor3 = Color3.fromRGB(223, 223, 223)
Copy.TextSize = 14.000
Copy.MouseButton1Down:Connect(function()
	ripple(Copy,Mouse.X,Mouse.Y)
	otuzbiy()
end)

UICorner_7.CornerRadius = UDim.new(0, 5)
UICorner_7.Parent = Copy

Glow_6.Name = "Glow"
Glow_6.Parent = Copy
Glow_6.Active = true
Glow_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_6.BackgroundTransparency = 1.000
Glow_6.Position = UDim2.new(0, -15, 0, -15)
Glow_6.Size = UDim2.new(1, 30, 1, 30)
Glow_6.ZIndex = 0
Glow_6.Image = "rbxassetid://5028857084"
Glow_6.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_6.ScaleType = Enum.ScaleType.Slice
Glow_6.SliceCenter = Rect.new(24, 24, 276, 276)

UICorner_8.CornerRadius = UDim.new(0, 5)
UICorner_8.Parent = Pages

LoadstringerFrame.Name = "LoadstringerFrame"
LoadstringerFrame.Parent = Pages
LoadstringerFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
LoadstringerFrame.BorderColor3 = Color3.fromRGB(28, 28, 28)
LoadstringerFrame.Size = UDim2.new(0, 347, 0, 247)
LoadstringerFrame.Visible = false

UICorner_9.CornerRadius = UDim.new(0, 5)
UICorner_9.Parent = LoadstringerFrame

Loads.Name = "Loads"
Loads.Parent = LoadstringerFrame
Loads.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Loads.BorderColor3 = Color3.fromRGB(39, 39, 39)
Loads.Position = UDim2.new(0.0662824214, 0, 0.0607287437, 0)
Loads.Size = UDim2.new(0, 300, 0, 110)
Loads.Font = Enum.Font.GothamBlack
Loads.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
Loads.PlaceholderText = "Put Your Code For Loadstring"
Loads.Text = ""
Loads.TextColor3 = Color3.fromRGB(178, 178, 178)
Loads.TextSize = 14.000
Loads.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 5)
UICorner_10.Parent = Loads

Glow_7.Name = "Glow"
Glow_7.Parent = Loads
Glow_7.Active = true
Glow_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_7.BackgroundTransparency = 1.000
Glow_7.Position = UDim2.new(0, -15, 0, -15)
Glow_7.Size = UDim2.new(1, 30, 1, 30)
Glow_7.ZIndex = 0
Glow_7.Image = "rbxassetid://5028857084"
Glow_7.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_7.ScaleType = Enum.ScaleType.Slice
Glow_7.SliceCenter = Rect.new(24, 24, 276, 276)

Lolinger.Name = "Lolinger"
Lolinger.Parent = LoadstringerFrame
Lolinger.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Lolinger.Position = UDim2.new(0.0662824214, 0, 0.647773266, 0)
Lolinger.Size = UDim2.new(0, 136, 0, 69)
Lolinger.Font = Enum.Font.GothamBold
Lolinger.Text = "Loadstring!"
Lolinger.TextColor3 = Color3.fromRGB(223, 223, 223)
Lolinger.TextSize = 14.000
Lolinger.MouseButton1Down:Connect(function()
	ripple(Lolinger,Mouse.X,Mouse.Y)
	Loads.Text = "loadstring" .. "(game:HttpGet(" .. Loads.Text .. ", true))()"
end)

UICorner_11.CornerRadius = UDim.new(0, 5)
UICorner_11.Parent = Lolinger

Glow_8.Name = "Glow"
Glow_8.Parent = Lolinger
Glow_8.Active = true
Glow_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_8.BackgroundTransparency = 1.000
Glow_8.Position = UDim2.new(0, -15, 0, -15)
Glow_8.Size = UDim2.new(1, 30, 1, 30)
Glow_8.ZIndex = 0
Glow_8.Image = "rbxassetid://5028857084"
Glow_8.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_8.ScaleType = Enum.ScaleType.Slice
Glow_8.SliceCenter = Rect.new(24, 24, 276, 276)

Copy_2.Name = "Copy"
Copy_2.Parent = LoadstringerFrame
Copy_2.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
Copy_2.Position = UDim2.new(0.538904905, 0, 0.647773266, 0)
Copy_2.Size = UDim2.new(0, 136, 0, 69)
Copy_2.Font = Enum.Font.GothamBold
Copy_2.Text = "Copy!"
Copy_2.TextColor3 = Color3.fromRGB(223, 223, 223)
Copy_2.TextSize = 14.000
Copy_2.MouseButton1Down:Connect(function()
	ripple(Copy_2,Mouse.X,Mouse.Y)
	setclipboard(Loads.Text)
end)

UICorner_12.CornerRadius = UDim.new(0, 5)
UICorner_12.Parent = Copy_2

Glow_9.Name = "Glow"
Glow_9.Parent = Copy_2
Glow_9.Active = true
Glow_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_9.BackgroundTransparency = 1.000
Glow_9.Position = UDim2.new(0, -15, 0, -15)
Glow_9.Size = UDim2.new(1, 30, 1, 30)
Glow_9.ZIndex = 0
Glow_9.Image = "rbxassetid://5028857084"
Glow_9.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_9.ScaleType = Enum.ScaleType.Slice
Glow_9.SliceCenter = Rect.new(24, 24, 276, 276)

CreditsFrame.Name = "CreditsFrame"
CreditsFrame.Parent = Pages
CreditsFrame.Active = true
CreditsFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
CreditsFrame.BorderColor3 = Color3.fromRGB(28, 28, 28)
CreditsFrame.Size = UDim2.new(0, 347, 0, 247)
CreditsFrame.Visible = false

UICorner_13.CornerRadius = UDim.new(0, 5)
UICorner_13.Parent = CreditsFrame

takla.Name = "takla"
takla.Parent = CreditsFrame
takla.Active = true
takla.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
takla.BorderColor3 = Color3.fromRGB(28, 28, 28)
takla.Position = UDim2.new(0.0518731996, 0, 0.0607287437, 0)
takla.Size = UDim2.new(0, 316, 0, 50)
takla.Font = Enum.Font.GothamBlack
takla.Text = "Hepinizi takla getirdim olm"
takla.TextColor3 = Color3.fromRGB(255, 255, 255)
takla.TextScaled = true
takla.TextSize = 14.000
takla.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 5)
UICorner_14.Parent = takla

takla_2.Name = "takla"
takla_2.Parent = CreditsFrame
takla_2.Active = true
takla_2.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
takla_2.BorderColor3 = Color3.fromRGB(28, 28, 28)
takla_2.Position = UDim2.new(0.0432276651, 0, 0.396761119, 0)
takla_2.Size = UDim2.new(0, 316, 0, 50)
takla_2.Font = Enum.Font.GothamBlack
takla_2.Text = "lol jk"
takla_2.TextColor3 = Color3.fromRGB(255, 255, 255)
takla_2.TextSize = 18.000
takla_2.TextWrapped = true

UICorner_15.CornerRadius = UDim.new(0, 5)
UICorner_15.Parent = takla_2

takla_3.Name = "takla"
takla_3.Parent = CreditsFrame
takla_3.Active = true
takla_3.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
takla_3.BorderColor3 = Color3.fromRGB(28, 28, 28)
takla_3.Position = UDim2.new(0.0432276651, 0, 0.712550581, 0)
takla_3.Size = UDim2.new(0, 316, 0, 50)
takla_3.Font = Enum.Font.GothamBlack
takla_3.Text = "Owner: Hanki#4704"
takla_3.TextColor3 = Color3.fromRGB(255, 255, 255)
takla_3.TextSize = 18.000
takla_3.TextWrapped = true

UICorner_16.CornerRadius = UDim.new(0, 5)
UICorner_16.Parent = takla_3

ExecutorFrame.Name = "ExecutorFrame"
ExecutorFrame.Parent = Pages
ExecutorFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
ExecutorFrame.BorderColor3 = Color3.fromRGB(28, 28, 28)
ExecutorFrame.Size = UDim2.new(0, 347, 0, 247)
ExecutorFrame.Visible = false

UICorner_17.CornerRadius = UDim.new(0, 5)
UICorner_17.Parent = ExecutorFrame

Run.Name = "Run"
Run.Parent = ExecutorFrame
Run.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Run.BorderColor3 = Color3.fromRGB(39, 39, 39)
Run.Position = UDim2.new(0, 0, 0, 222)
Run.Size = UDim2.new(0, 347, 0, 25)

UICorner_18.CornerRadius = UDim.new(0, 5)
UICorner_18.Parent = Run

Glow_10.Name = "Glow"
Glow_10.Parent = Run
Glow_10.Active = true
Glow_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Glow_10.BackgroundTransparency = 1.000
Glow_10.Position = UDim2.new(0, -15, 0, -15)
Glow_10.Size = UDim2.new(1, 30, 1, 30)
Glow_10.ZIndex = 0
Glow_10.Image = "rbxassetid://5028857084"
Glow_10.ImageColor3 = Color3.fromRGB(0, 0, 0)
Glow_10.ImageTransparency = 0.700
Glow_10.ScaleType = Enum.ScaleType.Slice
Glow_10.SliceCenter = Rect.new(24, 24, 276, 276)

Contanier.Name = "Contanier"
Contanier.Parent = Run
Contanier.Active = true
Contanier.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Contanier.BorderColor3 = Color3.fromRGB(39, 39, 39)
Contanier.Size = UDim2.new(0, 347, 0, 25)

UICorner_19.CornerRadius = UDim.new(0, 5)
UICorner_19.Parent = Contanier

Clear.Name = "Clear"
Clear.Parent = Contanier
Clear.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Clear.BorderColor3 = Color3.fromRGB(39, 39, 39)
Clear.Size = UDim2.new(0, 72, 0, 25)
Clear.Font = Enum.Font.GothamBlack
Clear.Text = "Clear"
Clear.TextColor3 = Color3.fromRGB(165, 165, 165)
Clear.TextSize = 14.000
Clear.MouseButton1Down:Connect(function()
	Source.Text  = ""
end)

UICorner_20.CornerRadius = UDim.new(0, 5)
UICorner_20.Parent = Clear

Refresh.Name = "Refresh"
Refresh.Parent = Contanier
Refresh.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Refresh.BorderColor3 = Color3.fromRGB(39, 39, 39)
Refresh.Position = UDim2.new(0, 87, 0, 0)
Refresh.Size = UDim2.new(0, 72, 0, 25)
Refresh.Font = Enum.Font.GothamBlack
Refresh.Text = "Refresh"
Refresh.TextColor3 = Color3.fromRGB(165, 165, 165)
Refresh.TextSize = 14.000

UICorner_21.CornerRadius = UDim.new(0, 5)
UICorner_21.Parent = Refresh

Execute.Name = "Execute"
Execute.Parent = Contanier
Execute.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Execute.BorderColor3 = Color3.fromRGB(39, 39, 39)
Execute.Position = UDim2.new(0.504018486, 0, 0, 0)
Execute.Size = UDim2.new(0, 72, 0, 25)
Execute.Font = Enum.Font.GothamBlack
Execute.Text = "Execute"
Execute.TextColor3 = Color3.fromRGB(165, 165, 165)
Execute.TextSize = 14.000

Execute.MouseButton1Down:Connect(function()
	loadstring(Source.Text)
	assert(loadstring(Source.Text),true)
	loadstring(Source.Text,true)
	pcall(loadstring(Source.Text))
end)

UICorner_22.CornerRadius = UDim.new(0, 5)
UICorner_22.Parent = Execute

UIListLayout.Parent = Contanier
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 20)

SaveFile.Name = "SaveFile"
SaveFile.Parent = Contanier
SaveFile.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
SaveFile.BorderColor3 = Color3.fromRGB(39, 39, 39)
SaveFile.Position = UDim2.new(0.504018486, 0, 0, 0)
SaveFile.Size = UDim2.new(0, 72, 0, 25)
SaveFile.Font = Enum.Font.GothamBlack
SaveFile.Text = "Save File"
SaveFile.TextColor3 = Color3.fromRGB(165, 165, 165)
SaveFile.TextSize = 14.000

UICorner_23.CornerRadius = UDim.new(0, 5)
UICorner_23.Parent = SaveFile

Script.Name = "Script"
Script.Parent = ExecutorFrame
Script.Active = true
Script.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
Script.BorderColor3 = Color3.fromRGB(28, 28, 28)
Script.Position = UDim2.new(0, 6, 0, 7)
Script.Size = UDim2.new(0, 250, 0, 208)
Script.ScrollBarThickness = 5

Lines.Name = "Lines"
Lines.Parent = Script
Lines.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
Lines.BackgroundTransparency = 1.000
Lines.BorderColor3 = Color3.fromRGB(28, 28, 28)
Lines.Size = UDim2.new(0, 35, 0, 141)
Lines.ZIndex = 4
Lines.Font = Enum.Font.Code
Lines.Text = "1\\n"
Lines.TextColor3 = Color3.fromRGB(255, 255, 255)
Lines.TextSize = 15.000
Lines.TextYAlignment = Enum.TextYAlignment.Top

Source.Name = "Source"
Source.Parent = Script
Source.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Source.BackgroundTransparency = 1.000
Source.Position = UDim2.new(0, 35, 0, 0)
Source.Size = UDim2.new(0, 264, 0, 428)
Source.ZIndex = 3
Source.ClearTextOnFocus = false
Source.Font = Enum.Font.Code
Source.MultiLine = true
Source.PlaceholderColor3 = Color3.fromRGB(204, 204, 204)
Source.Text = ""
Source.TextColor3 = Color3.fromRGB(204, 204, 204)
Source.TextSize = 15.000
Source.TextWrapped = true
Source.TextXAlignment = Enum.TextXAlignment.Left
Source.TextYAlignment = Enum.TextYAlignment.Top

Comments_.Name = "Comments_"
Comments_.Parent = Source
Comments_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Comments_.BackgroundTransparency = 1.000
Comments_.Size = UDim2.new(0, 264, 0, 135)
Comments_.ZIndex = 5
Comments_.Font = Enum.Font.Code
Comments_.Text = ""
Comments_.TextColor3 = Color3.fromRGB(59, 200, 59)
Comments_.TextSize = 15.000
Comments_.TextXAlignment = Enum.TextXAlignment.Left
Comments_.TextYAlignment = Enum.TextYAlignment.Top

Globals_.Name = "Globals_"
Globals_.Parent = Source
Globals_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Globals_.BackgroundTransparency = 1.000
Globals_.Size = UDim2.new(0, 264, 0, 135)
Globals_.ZIndex = 5
Globals_.Font = Enum.Font.Code
Globals_.Text = ""
Globals_.TextColor3 = Color3.fromRGB(132, 214, 247)
Globals_.TextSize = 15.000
Globals_.TextXAlignment = Enum.TextXAlignment.Left
Globals_.TextYAlignment = Enum.TextYAlignment.Top

Keywords_.Name = "Keywords_"
Keywords_.Parent = Source
Keywords_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keywords_.BackgroundTransparency = 1.000
Keywords_.Size = UDim2.new(0, 264, 0, 135)
Keywords_.ZIndex = 5
Keywords_.Font = Enum.Font.Code
Keywords_.Text = ""
Keywords_.TextColor3 = Color3.fromRGB(248, 109, 124)
Keywords_.TextSize = 15.000
Keywords_.TextXAlignment = Enum.TextXAlignment.Left
Keywords_.TextYAlignment = Enum.TextYAlignment.Top

RemoteHighlight_.Name = "RemoteHighlight_"
RemoteHighlight_.Parent = Source
RemoteHighlight_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RemoteHighlight_.BackgroundTransparency = 1.000
RemoteHighlight_.Size = UDim2.new(0, 264, 0, 135)
RemoteHighlight_.ZIndex = 5
RemoteHighlight_.Font = Enum.Font.Code
RemoteHighlight_.Text = ""
RemoteHighlight_.TextColor3 = Color3.fromRGB(0, 144, 255)
RemoteHighlight_.TextSize = 15.000
RemoteHighlight_.TextXAlignment = Enum.TextXAlignment.Left
RemoteHighlight_.TextYAlignment = Enum.TextYAlignment.Top

Strings_.Name = "Strings_"
Strings_.Parent = Source
Strings_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Strings_.BackgroundTransparency = 1.000
Strings_.Size = UDim2.new(0, 264, 0, 135)
Strings_.ZIndex = 5
Strings_.Font = Enum.Font.Code
Strings_.Text = ""
Strings_.TextColor3 = Color3.fromRGB(173, 241, 149)
Strings_.TextSize = 15.000
Strings_.TextXAlignment = Enum.TextXAlignment.Left
Strings_.TextYAlignment = Enum.TextYAlignment.Top

Tokens_.Name = "Tokens_"
Tokens_.Parent = Source
Tokens_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tokens_.BackgroundTransparency = 1.000
Tokens_.Size = UDim2.new(0, 264, 0, 135)
Tokens_.ZIndex = 5
Tokens_.Font = Enum.Font.Code
Tokens_.Text = ""
Tokens_.TextColor3 = Color3.fromRGB(255, 255, 255)
Tokens_.TextSize = 15.000
Tokens_.TextXAlignment = Enum.TextXAlignment.Left
Tokens_.TextYAlignment = Enum.TextYAlignment.Top

Numbers_.Name = "Numbers_"
Numbers_.Parent = Source
Numbers_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Numbers_.BackgroundTransparency = 1.000
Numbers_.Size = UDim2.new(0, 264, 0, 135)
Numbers_.ZIndex = 4
Numbers_.Font = Enum.Font.Code
Numbers_.Text = ""
Numbers_.TextColor3 = Color3.fromRGB(255, 198, 0)
Numbers_.TextSize = 15.000
Numbers_.TextXAlignment = Enum.TextXAlignment.Left
Numbers_.TextYAlignment = Enum.TextYAlignment.Top

ScriptList.Name = "ScriptList"
ScriptList.Parent = ExecutorFrame
ScriptList.Active = true
ScriptList.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
ScriptList.BorderColor3 = Color3.fromRGB(28, 28, 28)
ScriptList.Position = UDim2.new(0, 266, 0, 1)
ScriptList.Size = UDim2.new(0, 82, 0, 214)

UICorner_24.CornerRadius = UDim.new(0, 5)
UICorner_24.Parent = ScriptList

ScriptTitleBar.Name = "ScriptTitleBar"
ScriptTitleBar.Parent = ScriptList
ScriptTitleBar.Active = true
ScriptTitleBar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
ScriptTitleBar.BorderColor3 = Color3.fromRGB(31, 31, 31)
ScriptTitleBar.Size = UDim2.new(0, 81, 0, 30)

UICorner_25.CornerRadius = UDim.new(0, 6)
UICorner_25.Parent = ScriptTitleBar

Title.Name = "Title"
Title.Parent = ScriptTitleBar
Title.Active = true
Title.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(31, 31, 31)
Title.Position = UDim2.new(0, 9, 0, 0)
Title.Size = UDim2.new(0, 72, 0, 30)
Title.Font = Enum.Font.GothamBlack
Title.Text = "Script List"
Title.TextColor3 = Color3.fromRGB(165, 165, 165)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint.Parent = Title
UITextSizeConstraint.MaxTextSize = 14

Scripts.Name = "Scripts"
Scripts.Parent = ScriptList
Scripts.Active = true
Scripts.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
Scripts.BorderColor3 = Color3.fromRGB(28, 28, 28)
Scripts.Position = UDim2.new(0, 9, 0, 33)
Scripts.Size = UDim2.new(0, 72, 0, 181)
Scripts.ScrollBarThickness = 5

UIListLayout_2.Parent = Scripts
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 7)

Tabs.Name = "Tabs"
Tabs.Parent = Main
Tabs.Active = true
Tabs.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Tabs.BorderColor3 = Color3.fromRGB(38, 38, 38)
Tabs.Position = UDim2.new(0, 0, 0.0827338099, 0)
Tabs.Size = UDim2.new(0, 101, 0, 255)

TabsContainer.Name = "TabsContainer"
TabsContainer.Parent = Tabs
TabsContainer.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
TabsContainer.BackgroundTransparency = 1.000
TabsContainer.BorderColor3 = Color3.fromRGB(38, 38, 38)
TabsContainer.Position = UDim2.new(0, 0, 0.0588235296, 0)
TabsContainer.Size = UDim2.new(0, 101, 0, 240)

UIListLayout_3.Parent = TabsContainer
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

Obfuscator.Name = "Obfuscator"
Obfuscator.Parent = TabsContainer
Obfuscator.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Obfuscator.BackgroundTransparency = 1.000
Obfuscator.BorderColor3 = Color3.fromRGB(38, 38, 38)
Obfuscator.Size = UDim2.new(0, 101, 0, 27)
Obfuscator.Font = Enum.Font.GothamBold
Obfuscator.Text = "Obfuscator"
Obfuscator.TextColor3 = Color3.fromRGB(206, 206, 206)
Obfuscator.TextSize = 14.000

Executor.Name = "Executor"
Executor.Parent = TabsContainer
Executor.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Executor.BackgroundTransparency = 1.000
Executor.BorderColor3 = Color3.fromRGB(38, 38, 38)
Executor.Position = UDim2.new(0, 0, 0.112499997, 0)
Executor.Size = UDim2.new(0, 101, 0, 27)
Executor.Font = Enum.Font.GothamBold
Executor.Text = "Executor"
Executor.TextColor3 = Color3.fromRGB(206, 206, 206)
Executor.TextSize = 14.000

Loadstringer.Name = "Loadstringer"
Loadstringer.Parent = TabsContainer
Loadstringer.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Loadstringer.BackgroundTransparency = 1.000
Loadstringer.BorderColor3 = Color3.fromRGB(38, 38, 38)
Loadstringer.Position = UDim2.new(0, 0, 0.224999994, 0)
Loadstringer.Size = UDim2.new(0, 101, 0, 27)
Loadstringer.Font = Enum.Font.GothamBold
Loadstringer.Text = "Loadstringer"
Loadstringer.TextColor3 = Color3.fromRGB(206, 206, 206)
Loadstringer.TextSize = 14.000

Credits.Name = "Credits"
Credits.Parent = TabsContainer
Credits.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Credits.BackgroundTransparency = 1.000
Credits.BorderColor3 = Color3.fromRGB(38, 38, 38)
Credits.Position = UDim2.new(0, 0, 0.337500006, 0)
Credits.Size = UDim2.new(0, 101, 0, 27)
Credits.Font = Enum.Font.GothamBold
Credits.Text = "Credits"
Credits.TextColor3 = Color3.fromRGB(206, 206, 206)
Credits.TextSize = 14.000

UICorner_27.CornerRadius = UDim.new(0, 5)
UICorner_27.Parent = TabsContainer

UICorner_28.CornerRadius = UDim.new(0, 5)
UICorner_28.Parent = Tabs

SaveFileCheckFrame.Name = "SaveFileCheckFrame"
SaveFileCheckFrame.Parent = Main
SaveFileCheckFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SaveFileCheckFrame.Size = UDim2.new(0, 466, 0, 240)
SaveFileCheckFrame.Visible = false

SaveFileCheckFrameCorner.CornerRadius = UDim.new(0, 5)
SaveFileCheckFrameCorner.Name = "SaveFileCheckFrameCorner"
SaveFileCheckFrameCorner.Parent = SaveFileCheckFrame

OptionsFrame.Name = "OptionsFrame"
OptionsFrame.Parent = SaveFileCheckFrame
OptionsFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
OptionsFrame.Position = UDim2.new(0.104304887, 0, 0.0516592674, 0)
OptionsFrame.Size = UDim2.new(0, 368, 0, 207)

OptionsFrameCorner.CornerRadius = UDim.new(0, 3)
OptionsFrameCorner.Name = "OptionsFrameCorner"
OptionsFrameCorner.Parent = OptionsFrame

YESButton.Name = "YESButton"
YESButton.Parent = OptionsFrame
YESButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
YESButton.Position = UDim2.new(0.0803843811, 0, 0.701554358, 0)
YESButton.Size = UDim2.new(0, 91, 0, 30)
YESButton.Font = Enum.Font.Gotham
YESButton.Text = "Yes"
YESButton.TextColor3 = Color3.fromRGB(255, 255, 255)
YESButton.TextSize = 14.000

YESButtonCorner.CornerRadius = UDim.new(0, 4)
YESButtonCorner.Name = "YESButtonCorner"
YESButtonCorner.Parent = YESButton

NOButton.Name = "NOButton"
NOButton.Parent = OptionsFrame
NOButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
NOButton.Position = UDim2.new(0.672945976, 0, 0.706385255, 0)
NOButton.Size = UDim2.new(0, 91, 0, 30)
NOButton.Font = Enum.Font.Gotham
NOButton.Text = "No"
NOButton.TextColor3 = Color3.fromRGB(255, 255, 255)
NOButton.TextSize = 14.000

NOButtonCorner.CornerRadius = UDim.new(0, 4)
NOButtonCorner.Name = "NOButtonCorner"
NOButtonCorner.Parent = NOButton

CreateButton.Name = "CreateButton"
CreateButton.Parent = OptionsFrame
CreateButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CreateButton.Position = UDim2.new(0.38617608, 0, 0.774018109, 0)
CreateButton.Size = UDim2.new(0, 91, 0, 30)
CreateButton.Visible = false
CreateButton.Font = Enum.Font.Gotham
CreateButton.Text = "Create"
CreateButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CreateButton.TextSize = 14.000

CreateButtonCorner.CornerRadius = UDim.new(0, 4)
CreateButtonCorner.Name = "CreateButtonCorner"
CreateButtonCorner.Parent = CreateButton

OptionsFrameTitle.Name = "OptionsFrameTitle"
OptionsFrameTitle.Parent = OptionsFrame
OptionsFrameTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OptionsFrameTitle.BackgroundTransparency = 1.000
OptionsFrameTitle.Position = UDim2.new(0.245614037, 0, 0.0460251048, 0)
OptionsFrameTitle.Size = UDim2.new(0, 200, 0, 18)
OptionsFrameTitle.Font = Enum.Font.Gotham
OptionsFrameTitle.Text = "Create File"
OptionsFrameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
OptionsFrameTitle.TextSize = 19.000

OptionsFrameDesc.Name = "OptionsFrameDesc"
OptionsFrameDesc.Parent = OptionsFrame
OptionsFrameDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OptionsFrameDesc.BackgroundTransparency = 1.000
OptionsFrameDesc.Position = UDim2.new(0.248120308, 0, 0.179916322, 0)
OptionsFrameDesc.Size = UDim2.new(0, 200, 0, 18)
OptionsFrameDesc.Font = Enum.Font.Gotham
OptionsFrameDesc.Text = "Do you wish to create this file?"
OptionsFrameDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
OptionsFrameDesc.TextSize = 14.000

FileCreateBox.Name = "FileCreateBox"
FileCreateBox.Parent = OptionsFrame
FileCreateBox.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
FileCreateBox.Position = UDim2.new(0.294894844, 0, 0.429628283, 0)
FileCreateBox.Size = UDim2.new(0, 151, 0, 36)
FileCreateBox.Visible = false
FileCreateBox.Font = Enum.Font.Gotham
FileCreateBox.PlaceholderText = "Type File Name"
FileCreateBox.Text = ""
FileCreateBox.TextColor3 = Color3.fromRGB(255, 255, 255)
FileCreateBox.TextSize = 14.000

FileCreateBoxCorner.CornerRadius = UDim.new(0, 4)
FileCreateBoxCorner.Name = "FileCreateBoxCorner"
FileCreateBoxCorner.Parent = FileCreateBox

Obfuscator.MouseButton1Down:Connect(function()
	TweenService:Create(
		Credits,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	TweenService:Create(
		Executor,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	TweenService:Create(
		Loadstringer,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	TweenService:Create(
		Obfuscator,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(255, 255, 255)}
	):Play()
	ObfuscatorFrame.Visible = true
	LoadstringerFrame.Visible = false
	ExecutorFrame.Visible = false
	CreditsFrame.Visible = false
end)


Loadstringer.MouseButton1Down:Connect(function()
	TweenService:Create(
		Credits,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	TweenService:Create(
		Executor,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	TweenService:Create(
		Loadstringer,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(255, 255, 255)}
	):Play()
	TweenService:Create(
		Obfuscator,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	ObfuscatorFrame.Visible = false
	LoadstringerFrame.Visible = true
	ExecutorFrame.Visible = false
	CreditsFrame.Visible = false
end)

Executor.MouseButton1Down:Connect(function()
	TweenService:Create(
		Credits,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	TweenService:Create(
		Executor,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(255, 255, 255)}
	):Play()
	TweenService:Create(
		Loadstringer,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	TweenService:Create(
		Obfuscator,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	ObfuscatorFrame.Visible = false
	LoadstringerFrame.Visible = false
	ExecutorFrame.Visible = true
	CreditsFrame.Visible = false
end)

Credits.MouseButton1Down:Connect(function()
	TweenService:Create(
		Credits,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(255, 255, 255)}
	):Play()
	TweenService:Create(
		Executor,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	TweenService:Create(
		Loadstringer,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	TweenService:Create(
		Obfuscator,
		TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{TextColor3 = Color3.fromRGB(206, 206, 206)}
	):Play()
	ObfuscatorFrame.Visible = false
	LoadstringerFrame.Visible = false
	ExecutorFrame.Visible = false
	CreditsFrame.Visible = true
end)

function checkifsavefileexists()
	if isfile(SaveProgress) then

	else
		writefile(SaveProgress, "")
	end
end

checkifsavefileexists()

local Players = game:GetService("Players")
Players.PlayerRemoving:Connect(function(player)
	if player.UserId == Players.LocalPlayer.UserId then
		writefile(SaveProgress, Source.Text)
	end
end)

function WhenExecuted()
	if isfile(SaveProgress) then
		Source.Text = readfile(SaveProgress)
	end
end

WhenExecuted()


Execute.MouseButton1Down:Connect(function()
ripple(Execute,Mouse.X,Mouse.Y)
		loadstring(Source.Text)
		loadfile(ExecuteFile)()
end)

spawn(function()
	while task.wait() do
		pcall(function()
			addluaexecutefile()
			writefile(SaveProgress, Source.Text)
		end)
	end
end)

Refresh.MouseButton1Down:Connect(function()
	ripple(Refresh,Mouse.X,Mouse.Y)
	RefreshFilesStorage()
end)

YESButton.MouseButton1Click:Connect(function()
	YESButton.TextSize = 0
	TweenService:Create(YESButton,TweenInfo.new(.3, Enum.EasingStyle.Quad),{TextSize = 14}):Play()
	CreateButton.Visible = true
	FileCreateBox.Visible = true
end)

NOButton.MouseButton1Click:Connect(function()
	NOButton.TextSize = 0
	TweenService:Create(NOButton,TweenInfo.new(.3, Enum.EasingStyle.Quad),{TextSize = 14}):Play()
	CreateButton.Visible = false
	FileCreateBox.Visible = false
	SaveFileCheckFrame.Visible = false
end)

SaveFile.MouseButton1Click:Connect(function()
	ripple(SaveFile,Mouse.X,Mouse.Y)
	SaveFileCheckFrame.Visible = true
end)

CreateButton.MouseButton1Click:Connect(function()
	CreateButton.TextSize = 0
	TweenService:Create(CreateButton,TweenInfo.new(.3, Enum.EasingStyle.Quad),{TextSize = 14}):Play()
	AddFileToStorage(FileCreateBox.Text)
	CreateButton.Visible = false
	FileCreateBox.Visible = false
	SaveFileCheckFrame.Visible = false
	wait(0.5)
	RefreshFilesStorage()
end)

local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while", "is_synapse_function","is_protosmasher_caller", "execute","foreach","foreachi","insert","syn","HttpGet","HttpPost","__index","__namecall","__add","__call","__tostring","__tonumber","__div"}
local global_env = {"getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16","run_secure_function","create_secure_function","hookfunc","hookfunction","newcclosure","replaceclosure","islclosure","getgc","gcinfo","rconsolewarn","rconsoleprint","rconsoleinfo","rconsoleinput","rconsoleinputasync","rconsoleclear","rconsoleerr","identifyexecutor"}

local src = Source
local lin = Lines

local Highlight = function(string, keywords)
	local K = {}
	local S = string
	local Token =
		{
			["="] = true,
			["."] = true,
			[","] = true,
			["("] = true,
			[")"] = true,
			["["] = true,
			["]"] = true,
			["{"] = true,
			["}"] = true,
			[":"] = true,
			["*"] = true,
			["/"] = true,
			["+"] = true,
			["-"] = true,
			["%"] = true,
			[";"] = true,
			["~"] = true
		}
	for i, v in pairs(keywords) do
		K[v] = true
	end
	S = S:gsub(".", function(c)
		if Token[c] ~= nil then
			return "\32"
		else
			return c
		end
	end)
	S = S:gsub("%S+", function(c)
		if K[c] ~= nil then
			return c
		else
			return (" "):rep(#c)
		end
	end)

	return S
end

local hTokens = function(string)
	local Token =
		{
			["="] = true,
			["."] = true,
			[","] = true,
			["("] = true,
			[")"] = true,
			["["] = true,
			["]"] = true,
			["{"] = true,
			["}"] = true,
			[":"] = true,
			["*"] = true,
			["/"] = true,
			["+"] = true,
			["-"] = true,
			["%"] = true,
			[";"] = true,
			["~"] = true
		}
	local A = ""
	local B = [[]]
	string:gsub(".", function(c)
		if Token[c] ~= nil then
			A = A .. c
		elseif c == "\n" then
			A = A .. "\n"
		elseif c == "\t" then
			A = A .. "\t"
		else
			A = A .. "\32"
		end
	end)
	return A
end


local strings = function(string)
	local highlight = ""
	local quote = false
	string:gsub(".", function(c)
		if quote == false and c == "\"" then
			quote = true
		elseif quote == true and c == "\"" then
			quote = false
		end
		if quote == false and c == "\"" then
			highlight = highlight .. "\""
		elseif c == "\n" then
			highlight = highlight .. "\n"
		elseif c == "\t" then
			highlight = highlight .. "\t"
		elseif quote == true then
			highlight = highlight .. c
		elseif quote == false then
			highlight = highlight .. "\32"
		end
	end)

	return highlight
end

local comments = function(string)
	local ret = ""
	string:gsub("[^\r\n]+", function(c)
		local comm = false
		local i = 0
		c:gsub(".", function(n)
			i = i + 1
			if c:sub(i, i + 1) == "--" then
				comm = true
			end
			if comm == true then
				ret = ret .. n
			else
				ret = ret .. "\32"
			end
		end)
		ret = ret
	end)

	return ret
end

local numbers = function(string)
	local A = ""
	string:gsub(".", function(c)
		if tonumber(c) ~= nil then
			A = A .. c
		elseif c == "\n" then
			A = A .. "\n"
		elseif c == "\t" then
			A = A .. "\t"
		else
			A = A .. "\32"
		end
	end)

	return A
end

local highlight_source = function(type)
	if type == "Text" then
		src.Text = Source.Text:gsub("\13", "")
		src.Text = Source.Text:gsub("\t", "      ")
		local s = src.Text
		src.Keywords_.Text = Highlight(s, lua_keywords)
		src.Globals_.Text = Highlight(s, global_env)
		src.RemoteHighlight_.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
		src.Tokens_.Text = hTokens(s)
		src.Numbers_.Text = numbers(s)
		src.Strings_.Text = strings(s)
		local lin = 1
		s:gsub("\n", function()
			lin = lin + 1
		end)
		Lines.Text = ""
		for i = 1, lin do
			Lines.Text = Lines.Text .. i .. "\n"
		end
	end
end

highlight_source("Text")

src.Changed:Connect(highlight_source)



