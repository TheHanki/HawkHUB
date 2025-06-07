local UserInputService = game:GetService("UserInputService")
local OnPc = not UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled
local OnMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled and not UserInputService.MouseEnabled
local OnTabletLaptop = UserInputService.TouchEnabled and UserInputService.KeyboardEnabled and UserInputService.MouseEnabled
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local input = game:GetService("UserInputService")
local corner = Instance.new("UICorner")
local Circle = Instance.new("ImageLabel")
Circle.Name = "Circle"
Circle.BackgroundColor3 = Color3.new(0.533333, 0.533333, 0.533333)
Circle.BackgroundTransparency = 1
Circle.ImageColor3 = Color3.new(0.454902, 0.454902, 0.454902)
Circle.Image = "rbxassetid://266543268"
Circle.ImageTransparency = 0.8
Circle.BorderSizePixel = 0
corner.Parent = Circle

local Hawk = Instance.new("ScreenGui")

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

HawkLib = {
	Elements = {
		WideMenu = {
			MainPosition = UDim2.new(0.517696261, -296, 0.401494592, -164),
			MainSize = UDim2.new(0, 592, 0, 451),
			TitleBarSize = UDim2.new(0, 592, 0, 44),
			SectionSize = UDim2.new(0, 391, 0, 36),
			ClosePosition = UDim2.new(0.944256783, 0, 0.35, 0),
			MinimizePosition = UDim2.new(0.891891897, 0, 0.35, 0),
			TitlePosition = UDim2.new(0.032, 0, 0.10, 0),
			TabPosition = UDim2.new(0.0168918911, 0, 0.140, 0),
			TabsSize = UDim2.new(0, 162, 0, 384),
			PagesPosition = UDim2.new(0.317567557, 0, 0.116407849, 0),
			PagesSize = UDim2.new(0, 404, 0, 398),
			PagePosition = UDim2.new(-0.0148514854, 0, 0.0387326591, 0),
			PageSize = UDim2.new(0, 403, 0, 377),
			PageTitleSize = UDim2.new(0, 391, 0, 36)
		}
	},

	Themes = {
		Dark = {
			Main = Color3.fromRGB(25, 25, 25),
			Shadow = Color3.fromRGB(0, 0, 0),
			TitleBar = Color3.fromRGB(31, 31, 31),
			TabBefore = Color3.fromRGB(33, 33, 33),
			TabAfter = Color3.fromRGB(41, 41, 41),
			TitleTextColor = Color3.fromRGB(255, 255, 255),
			TabTextColor = Color3.fromRGB(255, 255, 255),
			TitleLineColor = Color3.fromRGB(44, 44, 44),
			PageTitleColor = Color3.fromRGB(198, 198, 198),
			Selection = Color3.fromRGB(255, 66, 66),
			CloseMinimize = Color3.fromRGB(74, 74, 74),
			ItemColors = Color3.fromRGB(35, 35, 35),
			ItemTitleColors = Color3.fromRGB(231, 231, 231),
			ItemTextColors = Color3.fromRGB(171, 171, 170),
			ItemTextBoxKeyBindColors = Color3.fromRGB(27, 27, 27),
			ItemTextBoxKeyBindStrokeColors = Color3.fromRGB(60, 60, 60),
			ItemTextBoxTextColor = Color3.fromRGB(132, 132, 132),
			ItemKeyBindTextColor = Color3.fromRGB(199, 199, 199),	
			ToggleTickColor = Color3.fromRGB(255, 255, 255),
			ButtonClickIconColor = Color3.fromRGB(182, 182, 182),
			ButtonHover = Color3.fromRGB(42, 42, 42),		
			SliderButtonFrameColor = Color3.fromRGB(35, 45, 55),
			InSliderFrame = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(44, 107, 162)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 62, 93))},
			NumColor = Color3.fromRGB(124, 155, 182),
			DropdownColorPickerImageArrowColors = Color3.fromRGB(199, 199, 199),
			NotificationNotifyColor = Color3.fromRGB(42, 44, 42),
			NotificationNotifyTitleColor = Color3.fromRGB(231, 231, 231),
			NotificationNotifyTextColor = Color3.fromRGB(171, 171, 170),
			IconColor = Color3.fromRGB(255, 255, 255),
			IconShadow = Color3.fromRGB(0, 0, 0),
			NotifyButtons = Color3.fromRGB(163, 162, 165)
		},
		White = {
			Main = Color3.fromRGB(225, 225, 225),
			Shadow = Color3.fromRGB(255, 255, 255),
			TitleBar = Color3.fromRGB(255, 255, 255),
			TabBefore = Color3.fromRGB(239, 239, 239),
			TabAfter = Color3.fromRGB(255, 255, 255),
			TitleTextColor = Color3.fromRGB(36, 36, 36),
			TabTextColor = Color3.fromRGB(0, 0, 0),
			TitleLineColor = Color3.fromRGB(89, 89, 89),
			PageTitleColor = Color3.fromRGB(12, 12, 12),
			Selection = Color3.fromRGB(170, 0, 255),
			CloseMinimize = Color3.fromRGB(36, 36, 36),
			ItemColors = Color3.fromRGB(200, 200, 200),
			ItemTitleColors = Color3.fromRGB(0, 0, 0),
			ItemTextColors = Color3.fromRGB(53, 53, 53),
			ItemTextBoxKeyBindColors = Color3.fromRGB(234, 234, 234),
			ItemTextBoxKeyBindStrokeColors = Color3.fromRGB(60, 60, 60),
			ItemTextBoxTextColor = Color3.fromRGB(0, 0, 0),
			ItemKeyBindTextColor = Color3.fromRGB(0, 0, 0),
			ToggleTickColor = Color3.fromRGB(11, 11, 11),
			ButtonClickIconColor = Color3.fromRGB(27, 27, 27),
			ButtonHover = Color3.fromRGB(229, 229, 229),		
			SliderButtonFrameColor = Color3.fromRGB(162, 209, 255),
			InSliderFrame = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(69, 171, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(46, 114, 170))},
			NumColor = Color3.fromRGB(25, 31, 36),
			DropdownColorPickerImageArrowColors = Color3.fromRGB(0, 0, 0),
			NotificationNotifyColor = Color3.fromRGB(207, 217, 207),
			NotificationNotifyTitleColor = Color3.fromRGB(22, 22, 22),
			NotificationNotifyTextColor = Color3.fromRGB(56, 56, 56),
			IconColor = Color3.fromRGB(48, 48, 48),
			IconShadow = Color3.fromRGB(255, 255, 255),
			NotifyButtons = Color3.fromRGB(52, 52, 53)
		},
		Pink = {
			Main = Color3.fromRGB(190, 145, 174),
			Shadow = Color3.fromRGB(190, 145, 174),
			TitleBar = Color3.fromRGB(239, 189, 219),
			TabBefore = Color3.fromRGB(237, 175, 203),
			TabAfter = Color3.fromRGB(239, 189, 219),
			TitleTextColor = Color3.fromRGB(80, 70, 75),
			TabTextColor = Color3.fromRGB(0, 0, 0),
			TitleLineColor = Color3.fromRGB(80, 70, 75),
			PageTitleColor = Color3.fromRGB(12, 12, 12),
			Selection = Color3.fromRGB(255, 0, 255),
			CloseMinimize = Color3.fromRGB(80, 70, 75),
			ItemColors = Color3.fromRGB(227, 167, 195),
			ItemTitleColors = Color3.fromRGB(43, 43, 41),
			ItemTextColors = Color3.fromRGB(53, 53, 53),
			ItemTextBoxKeyBindColors = Color3.fromRGB(173, 115, 173),
			ItemTextBoxKeyBindStrokeColors = Color3.fromRGB(173, 115, 173),
			ItemTextBoxTextColor = Color3.fromRGB(0, 0, 0),
			ItemKeyBindTextColor = Color3.fromRGB(0, 0, 0),
			ToggleTickColor = Color3.fromRGB(11, 11, 11),
			ButtonClickIconColor = Color3.fromRGB(27, 27, 27),
			ButtonHover = Color3.fromRGB(255, 188, 219),		
			SliderButtonFrameColor = Color3.fromRGB(162, 209, 255),
			InSliderFrame = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(54, 134, 200)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 62, 93))},
			NumColor = Color3.fromRGB(0, 170, 255),
			DropdownColorPickerImageArrowColors = Color3.fromRGB(199, 199, 199),
			NotificationNotifyColor = Color3.fromRGB(239, 189, 219),
			NotificationNotifyTitleColor = Color3.fromRGB(231, 231, 231),
			NotificationNotifyTextColor = Color3.fromRGB(56, 56, 56),
			IconColor = Color3.fromRGB(48, 48, 48),
			IconShadow = Color3.fromRGB(190, 145, 174),
			NotifyButtons = Color3.fromRGB(52, 52, 53)
		}
	}	
}

local NotificationSettings = {
	notification = {
		[1] = UDim2.new(0, 287,0, 61), --Normal
		[2] = UDim2.new(0, 287,0, 74), --Wide
		[3] = UDim2.new(0, 287,0, 82), --Wider
	},
	icon = {
		[1] = UDim2.new(0.042, 0,0.162, 0), --Normal
		[2] = UDim2.new(0.042, 0,0.229, 0), --Wide
		[3] = UDim2.new(0.042, 0,0.247, 0), --Wider
	},
	listing = {
		Size = {
			[1] = UDim2.new(0, 189,0, 35), --Normal
			[2] = UDim2.new(0, 189,0, 55), --Wide
			[3] = UDim2.new(0, 189,0, 68), --Wider
		},
		Position = {
			[1] = UDim2.new(0.212, 0,0.24, 0), --Normal
			[2] = UDim2.new(0.212, 0,0.174, 0), --Wide
			[3] = UDim2.new(0.212, 0,0.09, 0), --Wider
		}
	},
	description = {
		[1] = UDim2.new(0, 162,0, 20), --Normal
		[2] = UDim2.new(0, 162,0, 33), --Wide
		[3] = UDim2.new(0, 162,0, 46), --Wider
	},
	checkmark = {
		[1] = UDim2.new(0.886, 0,0.174, 0), --Normal
		[2] = UDim2.new(0.886, 0,0.174, 0), --Wide
		[3] = UDim2.new(0.886, 0,0.174, 0), --Wider
	},
	crossmark = {
		[1] = UDim2.new(0.886, 0,0.539, 0), --Normal
		[2] = UDim2.new(0.886, 0,0.58, 0), --Wide
		[3] = UDim2.new(0.886, 0,0.625, 0), --Wider
	},


}

local Strawn = {RainbowColorValue = 0, HueSelectionPosition = 0}
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local input = game:GetService("UserInputService")
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
Strawn.RainbowColorValue = 999999999999999999999999999

coroutine.wrap(
	function()
		while wait() do
			Strawn.RainbowColorValue = Strawn.RainbowColorValue + 1 / 255
			Strawn.HueSelectionPosition = Strawn.HueSelectionPosition + 1

			if Strawn.RainbowColorValue >= 1 then
				Strawn.RainbowColorValue = 0
			end

			if Strawn.HueSelectionPosition == 80 then
				Strawn.HueSelectionPosition = 0
			end
		end
	end
)()

local notiftheme;

function HawkLib:Window(Win)
	if _Hawk == "ohhahtuhthttouttpwuttuaunbotwo" then
		local ScriptName;
		local DestroyIfExists;
		local Theme;

		for i, v in next, Win do
			if string.lower(i) == "scriptname" or string.lower(i) == "name" then
				ScriptName = v
			elseif string.lower(i) == "destroyifexists" or string.lower(i) == "destroy" then
				DestroyIfExists = v
			elseif string.lower(i) == "theme" then
				Theme = v
			end 
		end

		local selectedtheme = Theme
		local Theme;
		local bali = DestroyIfExists

		if bali ~= nil then
			if bali == true then
				for i, v in pairs(game.CoreGui:GetChildren()) do
					if v.Name == "Hawk" then
						v:Destroy()
					end
				end
			end
		end

		if selectedtheme ~= nil then
			if selectedtheme == "White" then
				Theme = "White"
			elseif selectedtheme == "Pink" then
				Theme = "Pink"
			elseif selectedtheme == "Dark" then
				Theme = "Dark"
			else
				Theme = "Dark"
			end
		else
			Theme = "Dark"
		end

		notiftheme = Theme

		local function ripple(button, x, y)
			spawn(
				function()
					button.ClipsDescendants = true
					local circle = Circle:Clone()
					circle.Parent = button
					circle.ZIndex = 1000
					circle.ImageColor3 = HawkLib.Themes[Theme].TitleBar
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

		local FirstTab = false
		local focusing = false
		local Main = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local UIStroke = Instance.new("UIStroke")
		local TitleBar = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local BarFixer = Instance.new("Frame")
		local Line = Instance.new("Frame")
		local Close = Instance.new("TextButton")
		local Minimize = Instance.new("TextButton")
		local Title = Instance.new("TextLabel")
		local Tabs = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local Pages = Instance.new("Frame")
		local Shadow = Instance.new("ImageLabel")

		Hawk.Name = "Hawk"		
		Hawk.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Hawk.ResetOnSpawn = false
		Hawk.Parent = game.CoreGui

		Main.Name = "Main"
		Main.Parent = Hawk
		Main.BackgroundColor3 = HawkLib.Themes[Theme].Main
		Main.BackgroundTransparency = 0.020
		Main.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Main.BorderSizePixel = 0
		Main.Position = UDim2.new(0.5, -296, 0.5, -164)
		Main.Size = UDim2.new(0, 592, 0, 328)

		if OnPc or OnTabletLaptop then
			Main.Position = HawkLib.Elements.WideMenu.MainPosition
			Main.Size = HawkLib.Elements.WideMenu.MainSize
		end

		UICorner.Parent = Main

		UIStroke.Parent = Main
		UIStroke.Color = HawkLib.Themes[Theme].Shadow
		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

		TitleBar.Name = "TitleBar"
		TitleBar.Parent = Main
		TitleBar.BackgroundColor3 = HawkLib.Themes[Theme].TitleBar
		TitleBar.BorderColor3 = HawkLib.Themes[Theme].TitleBar
		TitleBar.BorderSizePixel = 0
		TitleBar.Size = UDim2.new(0, 592, 0, 33)

		if OnPc or OnTabletLaptop then
			TitleBar.Size = HawkLib.Elements.WideMenu.TitleBarSize
		end

		UICorner_2.Parent = TitleBar
		MakeDraggable(TitleBar, Main)
		BarFixer.Name = "BarFixer"
		BarFixer.Parent = TitleBar
		BarFixer.BackgroundColor3 = HawkLib.Themes[Theme].TitleBar
		BarFixer.BorderColor3 = HawkLib.Themes[Theme].TitleBar
		BarFixer.BorderSizePixel = 0
		BarFixer.Position = UDim2.new(0, 0, 0.818181813, 0)
		BarFixer.Size = UDim2.new(0, 592, 0, 15)
		MakeDraggable(BarFixer, Main)
		Line.Name = "Line"
		Line.Parent = BarFixer
		Line.BackgroundColor3 = HawkLib.Themes[Theme].TitleLineColor
		Line.BorderColor3 = HawkLib.Themes[Theme].TitleLineColor
		Line.BorderSizePixel = 0
		Line.Position = UDim2.new(-0.000580968102, 0, 1.0672729, 0)
		Line.Size = UDim2.new(0, 593, 0, -2)
		MakeDraggable(Line, Main)
		Close.Name = "Close"
		Close.Parent = TitleBar
		Close.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Close.BackgroundTransparency = 1.000
		Close.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Close.BorderSizePixel = 0
		Close.Position = UDim2.new(0.944256783, 0, 0.25, 0)
		Close.Size = UDim2.new(0, 20, 0, 19)
		Close.Font = Enum.Font.Gotham
		Close.Text = "X"
		Close.TextColor3 = HawkLib.Themes[Theme].CloseMinimize
		Close.TextSize = 18.000
		Close.Visible = false

		if OnPc or OnTabletLaptop then
			Close.Position = HawkLib.Elements.WideMenu.ClosePosition
		end

		Minimize.Name = "Minimize"
		Minimize.Parent = TitleBar
		Minimize.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Minimize.BackgroundTransparency = 1.000
		Minimize.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Minimize.BorderSizePixel = 0
		Minimize.Position = UDim2.new(0.891891897, 0, 0.25, 0)
		Minimize.Size = UDim2.new(0, 20, 0, 19)
		Minimize.Font = Enum.Font.Merriweather
		Minimize.Text = "-"
		Minimize.TextColor3 = HawkLib.Themes[Theme].CloseMinimize
		Minimize.TextSize = 34.000
		Minimize.Visible = false

		if OnPc or OnTabletLaptop then
			Minimize.Position = HawkLib.Elements.WideMenu.MinimizePosition
		end

		Title.Name = "Title"
		Title.Parent = TitleBar
		Title.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(0.0320945941, 0, 0, 0)
		Title.Size = UDim2.new(0, 112, 0, 42)
		Title.Font = Enum.Font.Gotham
		Title.Text = ScriptName
		Title.TextColor3 = HawkLib.Themes[Theme].TitleTextColor
		Title.TextSize = 16.000
		Title.TextXAlignment = Enum.TextXAlignment.Left

		if OnPc or OnTabletLaptop then
			Title.Position = HawkLib.Elements.WideMenu.TitlePosition
		end

		MakeDraggable(Title, Main)
		Tabs.Name = "Tabs"
		Tabs.Parent = Main
		Tabs.Active = true
		Tabs.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Tabs.BackgroundTransparency = 1.000
		Tabs.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Tabs.BorderSizePixel = 0
		Tabs.Position = UDim2.new(0.0168918911, 0, 0.167682931, 0)
		Tabs.Size = UDim2.new(0, 162, 0, 273)
		Tabs.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
		Tabs.BottomImage = ""
		Tabs.MidImage = ""
		Tabs.ScrollBarThickness = 0

		if OnPc or OnTabletLaptop then
			Tabs.Size = HawkLib.Elements.WideMenu.TabsSize
			Tabs.Position = HawkLib.Elements.WideMenu.TabPosition
		end

		MakeDraggable(Tabs, Main)
		UIListLayout.Parent = Tabs
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 9)

		Pages.Name = "Pages"
		Pages.Parent = Main
		Pages.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
		Pages.BackgroundTransparency = 1.000
		Pages.BorderColor3 = Color3.fromRGB(36, 36, 36)
		Pages.BorderSizePixel = 0
		Pages.Position = UDim2.new(0.317567676, 0, 0.134146243, 0)
		Pages.Size = UDim2.new(0, 405, 0, 284)

		if OnPc or OnTabletLaptop then
			Pages.Position = HawkLib.Elements.WideMenu.PagesPosition
			Pages.Size = HawkLib.Elements.WideMenu.PagesSize
		end

		Shadow.Name = "Shadow"
		Shadow.Parent = Main
		Shadow.Active = true
		Shadow.BackgroundColor3 = HawkLib.Themes[Theme].Shadow
		Shadow.BackgroundTransparency = 1.000
		Shadow.Position = UDim2.new(0, -15, 0, -12)
		Shadow.Size = UDim2.new(1, 30, 0.983647227, 30)
		Shadow.ZIndex = 0
		Shadow.Image = "rbxassetid://5028857084"
		Shadow.ImageColor3 = HawkLib.Themes[Theme].Shadow
		Shadow.ScaleType = Enum.ScaleType.Slice
		Shadow.SliceCenter = Rect.new(24, 24, 276, 276)

		function HawkLib:ToggleUI()	
			for i, v in pairs(game.CoreGui:GetChildren()) do
				if v.Name == "Hawk" then
					if v.Enabled == true then
						v.Enabled = false
					else
						v.Enabled = true	
					end
				end
			end
		end

		function HawkLib:Destroy()		
			for i, v in pairs(game.CoreGui:GetChildren()) do
				if v.Name == "Hawk" then
					v:Destroy()
				end 
			end
		end

		local Sayfalar = {}	

		function Sayfalar:ToggleUI()		
			for i, v in pairs(game.CoreGui:GetChildren()) do
				if v.Name == "Hawk" then
					if v.Enabled == true then
						v.Enabled = false
					else
						v.Enabled = true	
					end
				end 
			end
		end

		function Sayfalar:Destroy()		
			for i, v in pairs(game.CoreGui:GetChildren()) do
				if v.Name == "Hawk" then
					v:Destroy()
				end 
			end
		end

		function Sayfalar:Minimize(tebel)
			local visibility;
			local callback;
			local openbutton;

			for i, v in next, tebel do
				if string.lower(i) == "visibility" then
					visibility = v
				elseif string.lower(i) == "callback" then
					callback = v
				elseif string.lower(i) == "openbutton" then
					openbutton = v
				end 
			end

			if visibility ~= nil then
				if visibility == true then
					Minimize.Visible = true

					if openbutton ~= nil then
						if openbutton == true then
							local OpenFrame = Instance.new("Frame")
							local Open = Instance.new("TextButton")
							local UICorner = Instance.new("UICorner")				
							local UI2Corner = Instance.new("UICorner")

							OpenFrame.Name = "OpenFrame"
							OpenFrame.Parent = Hawk
							OpenFrame.Active = true
							OpenFrame.BackgroundColor3 = HawkLib.Themes[Theme].TitleBar
							OpenFrame.Position = UDim2.new(0, 0, 0, 282)
							OpenFrame.Selectable = true
							OpenFrame.Size = UDim2.new(0, 120, 0, 50)
							OpenFrame.Visible = false
							OpenFrame.ZIndex = 0
							MakeDraggable(OpenFrame, OpenFrame)

							UICorner.CornerRadius = UDim.new(0, 8)
							UICorner.Parent = OpenFrame

							Open.Name = "Open"
							Open.Parent = OpenFrame
							Open.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
							Open.Size = UDim2.new(1.0, 0, 0.92, 0)
							Open.Font = Enum.Font.GothamBold
							Open.Text = "Open"
							Open.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
							Open.TextSize = 22.000
							Open.TextWrapped = true
							Open.AutoButtonColor = false
							MakeDraggable(Open, OpenFrame)

							local oldpos;			

							UI2Corner.CornerRadius = UDim.new(0, 5)
							UI2Corner.Parent = Open

							Minimize.MouseButton1Click:Connect(function()
								OpenFrame.Visible = true
								Main.Visible = false
							end)

							Open.MouseButton1Click:Connect(function()
								OpenFrame.Visible = false
								Main.Visible = true
							end)
						end
					end
				else
					Minimize:Destroy()
				end
			else
				Minimize:Destroy()
			end

			if callback then
				Minimize.MouseButton1Click:Connect(function()
					pcall(callback)
				end)
			end
		end

		function Sayfalar:Close(tebel)
			local visibility;
			local callback;

			for i, v in next, tebel do
				if string.lower(i) == "visibility" then
					visibility = v
				elseif string.lower(i) == "callback" then
					callback = v
				end 
			end

			if visibility ~= nil then
				if visibility == true then
					Close.Visible = true
				else
					Close:Destroy()
				end
			else
				Close:Destroy()
			end

			if callback then
				Close.MouseButton1Click:Connect(function()
					pcall(callback)
				end)
			end
		end

		function Sayfalar:Tab(TabName, PageTitle)
			local xd = PageTitle

			local TabBtnFrame = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local Selected = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")
			local TabText = Instance.new("TextButton")
			local UIListLayout_2 = Instance.new("UIListLayout")
			local Page = Instance.new("ScrollingFrame")
			local Container = Instance.new("Frame")
			local UIListLayout_4 = Instance.new("UIListLayout")
			local PageTitle = Instance.new("TextLabel")

			TabBtnFrame.Name = "TabBtnFrame"
			TabBtnFrame.Parent = Tabs
			TabBtnFrame.BackgroundColor3 = HawkLib.Themes[Theme].TabBefore
			TabBtnFrame.BorderColor3 = HawkLib.Themes[Theme].TabBefore
			TabBtnFrame.BorderSizePixel = 0
			TabBtnFrame.Position = UDim2.new(0.0185185187, 0, 1.11786001e-07, 0)
			TabBtnFrame.Size = UDim2.new(0, 156, 0, 36)

			UICorner_3.Parent = TabBtnFrame

			Selected.Name = "Selected"
			Selected.Parent = TabBtnFrame
			Selected.BackgroundColor3 = HawkLib.Themes[Theme].Selection
			Selected.BackgroundTransparency = 1
			Selected.BorderColor3 = HawkLib.Themes[Theme].Selection
			Selected.BorderSizePixel = 0
			Selected.Position = UDim2.new(0, 0, 0.277777791, 0)
			Selected.Size = UDim2.new(0, 6, 0, 18)

			UICorner_4.Parent = Selected

			TabText.Name = "TabText"
			TabText.Parent = Selected
			TabText.BackgroundColor3 = Color3.fromRGB(47, 46, 45)
			TabText.BackgroundTransparency = 1.000
			TabText.BorderColor3 = Color3.fromRGB(47, 46, 45)
			TabText.BorderSizePixel = 0
			TabText.Position = UDim2.new(2.09615064, 0, -0.5, 0)
			TabText.Size = UDim2.new(0, 130, 0, 36)
			TabText.Font = Enum.Font.Gotham
			TabText.Text = TabName
			TabText.TextColor3 = HawkLib.Themes[Theme].TabTextColor
			TabText.TextSize = 15.000
			TabText.TextXAlignment = Enum.TextXAlignment.Left

			UIListLayout_2.Parent = TabBtnFrame
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

			Page.Name = "Page"
			Page.Parent = Pages
			Page.Active = true
			Page.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Page.BackgroundTransparency = 1.000
			Page.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Page.BorderSizePixel = 0
			Page.Position = UDim2.new(0, 0, 0.0387326106, 0)
			Page.Size = UDim2.new(0, 404, 0, 265)
			Page.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
			Page.BottomImage = ""
			Page.CanvasPosition = Vector2.new(0, 0)
			Page.CanvasSize = UDim2.new(0, 0, 3, 0)
			Page.MidImage = ""
			Page.ScrollBarThickness = 0
			Page.TopImage = ""
			Page.Visible = false

			if OnPc or OnTabletLaptop then
				Page.Size = HawkLib.Elements.WideMenu.PageSize
				Page.Position = HawkLib.Elements.WideMenu.PagePosition
			end

			Container.Name = "Container"
			Container.Parent = Page
			Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Container.BackgroundTransparency = 1.000
			Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Container.BorderSizePixel = 0
			Container.Position = UDim2.new(-0.00742574269, 0, 0, 0)
			Container.Size = UDim2.new(0, 407, 0, 509)

			UIListLayout_4.Parent = Container
			UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_4.Padding = UDim.new(0, 8)

			PageTitle.Name = "PageTitle"
			PageTitle.Parent = Container
			PageTitle.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			PageTitle.BackgroundTransparency = 1.000
			PageTitle.BorderColor3 = Color3.fromRGB(36, 36, 36)
			PageTitle.BorderSizePixel = 0
			PageTitle.Position = UDim2.new(0.0233415235, 0, 0, 0)
			PageTitle.Size = UDim2.new(0, 389, 0, 36)
			PageTitle.Font = Enum.Font.GothamBold
			PageTitle.TextColor3 = HawkLib.Themes[Theme].PageTitleColor
			PageTitle.TextSize = 25.000
			PageTitle.TextXAlignment = Enum.TextXAlignment.Left

			if OnPc or OnTabletLaptop then
				PageTitle.Size = HawkLib.Elements.WideMenu.SectionSize
			end

			local zort;
			if xd ~= nil then
				zort = xd
				PageTitle.Text = zort
			else
				PageTitle:Destroy()
			end		

			if FirstTab == false then
				FirstTab = true
				Selected.BackgroundTransparency = 0.040
				TabBtnFrame.BackgroundColor3 = HawkLib.Themes[Theme].TabAfter
				TabBtnFrame.BorderColor3 = HawkLib.Themes[Theme].TabAfter
				Page.Visible = true
			end

			TabText.MouseButton1Click:Connect(function()
				for i, v in pairs(Pages:GetDescendants()) do
					if v.Name == "Page" then
						v.Visible = false
					end
				end
				for i, v in pairs(Tabs:GetChildren()) do
					if v:IsA("Frame") then
						TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundColor3 = HawkLib.Themes[Theme].TabBefore}):Play()
						TweenService:Create(v.Selected, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
					end
				end
				TweenService:Create(TabBtnFrame, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundColor3 = HawkLib.Themes[Theme].TabAfter}):Play()
				TweenService:Create(Selected, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 0.040}):Play()
				Page.Visible = true			
			end)

			TweenService:Create(
				Tabs,
				TweenInfo.new(.2, Enum.EasingStyle.Quad),
				{CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)}
			):Play()			

			local ContainerItems = {}

			function ContainerItems:Section(Title)
				local x = Title

				if x ~= nil then
					local Section = Instance.new("Frame")
					local Sektion = Instance.new("TextLabel")
					local UIListLayout31 = Instance.new("UIListLayout")

					Section.Name = "Section"
					Section.Parent = Container
					Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Section.BackgroundTransparency = 1.000
					Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Section.BorderSizePixel = 0
					Section.Size = UDim2.new(0, 389, 0, 36)

					if OnPc or OnTabletLaptop then
						Section.Size = HawkLib.Elements.WideMenu.SectionSize
					end

					Sektion.Name = "PageTitle"
					Sektion.Parent = Section
					Sektion.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Sektion.BackgroundTransparency = 1.000
					Sektion.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Sektion.BorderSizePixel = 0
					Sektion.Position = UDim2.new(0.0233415235, 0, 0, 0)
					Sektion.Size = UDim2.new(0, 389, 0, 36)
					Sektion.Text = x
					Sektion.Font = Enum.Font.GothamBold
					Sektion.TextColor3 = HawkLib.Themes[Theme].PageTitleColor
					Sektion.TextSize = 20
					Sektion.TextXAlignment = Enum.TextXAlignment.Left

					UIListLayout31.Parent = Section
					UIListLayout31.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout31.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout31.Padding = UDim.new(0, 8)

					TweenService:Create(
						Page,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
					):Play()

					local SectionItems = {}

					function SectionItems:UpdateSection(set)
						local setter = set
						if setter ~= nil then
							Sektion.Text = setter
							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
						end
					end				

					function SectionItems:Label(title, description)
						local explainin = description

						local Label = Instance.new("Frame")
						local UICorner_7 = Instance.new("UICorner")
						local LabelListing = Instance.new("Frame")
						local UIListLayout_5 = Instance.new("UIListLayout")
						local LabelMainText = Instance.new("TextLabel")
						local LabelText = Instance.new("TextLabel")

						Label.Name = "Label"
						Label.Parent = Container
						Label.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Label.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						Label.BorderSizePixel = 0
						Label.Position = UDim2.new(0, 0, 0.602941155, 0)

						UICorner_7.CornerRadius = UDim.new(0, 6)
						UICorner_7.Parent = Label

						LabelListing.Name = "LabelListing"
						LabelListing.Parent = Label
						LabelListing.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						LabelListing.BackgroundTransparency = 1.000
						LabelListing.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						LabelListing.BorderSizePixel = 0
						LabelListing.Position = UDim2.new(0.0306905378, 0, 0.17634055, 0)
						LabelListing.Size = UDim2.new(0, 372, 0, 32)

						UIListLayout_5.Parent = LabelListing
						UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder

						LabelMainText.Name = "LabelMainText"
						LabelMainText.Parent = LabelListing
						LabelMainText.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						LabelMainText.BackgroundTransparency = 1.000
						LabelMainText.BorderColor3 = Color3.fromRGB(43, 43, 41)
						LabelMainText.BorderSizePixel = 0
						LabelMainText.Font = Enum.Font.GothamBold
						LabelMainText.Text = title
						LabelMainText.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						LabelMainText.TextSize = 15.000
						LabelMainText.TextXAlignment = Enum.TextXAlignment.Left

						LabelText.Name = "LabelText"
						LabelText.Parent = LabelListing
						LabelText.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						LabelText.BackgroundTransparency = 1.000
						LabelText.BorderColor3 = Color3.fromRGB(43, 43, 41)
						LabelText.BorderSizePixel = 0
						LabelText.Position = UDim2.new(0, 0, 0.170000002, 0)
						LabelText.Font = Enum.Font.Gotham
						LabelText.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
						LabelText.TextSize = 15.000
						LabelText.TextXAlignment = Enum.TextXAlignment.Left

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()

						if explainin ~= nil then
							LabelMainText.Size = UDim2.new(0, 379, 0, 17)
							LabelText.Size = UDim2.new(0, 379, 0, 17)
							Label.Size = UDim2.new(0, 391, 0, 55)
							LabelText.Text = description
						elseif explainin == nil then
							LabelText:Destroy()
							LabelMainText.Size = UDim2.new(0, 379, 0, 23)
							Label.Size = UDim2.new(0, 391, 0, 40)
						end

						local apdeyt = {}
						function apdeyt:UpdateLabel(test, descriptio)
							local newdescription = descriptio

							if newdescription ~= nil then
								LabelMainText.Text = test
								LabelText.Text = newdescription
							else
								LabelMainText.Text = test
							end

							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
						end
						return apdeyt
					end

					function SectionItems:Button(yazi, description, callback)
						local check = description
						callback = callback or function()
						end

						local buttoncheck = {

						}


						local Button = Instance.new("Frame")
						local UICorner_8 = Instance.new("UICorner")
						local ButtonListing = Instance.new("Frame")
						local UIListLayout_6 = Instance.new("UIListLayout")
						local ButtonTitle = Instance.new("TextLabel")
						local ButtonText = Instance.new("TextLabel")
						local ButtonClick = Instance.new("TextButton")
						local ClickIcon = Instance.new("ImageLabel")

						Button.Name = "Button"
						Button.Parent = Container
						Button.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Button.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						Button.BorderSizePixel = 0
						Button.Position = UDim2.new(0, 0, 0.602941155, 0)

						UICorner_8.CornerRadius = UDim.new(0, 6)
						UICorner_8.Parent = Button

						ButtonListing.Name = "ButtonListing"
						ButtonListing.Parent = Button
						ButtonListing.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						ButtonListing.BackgroundTransparency = 1.000
						ButtonListing.BorderColor3 = Color3.fromRGB(43, 43, 41)
						ButtonListing.BorderSizePixel = 0
						ButtonListing.Position = UDim2.new(0.0306905378, 0, 0.17634055, 0)
						ButtonListing.Size = UDim2.new(0, 372, 0, 32)

						UIListLayout_6.Parent = ButtonListing
						UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder

						ButtonTitle.Name = "ButtonTitle"
						ButtonTitle.Parent = ButtonListing
						ButtonTitle.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						ButtonTitle.BackgroundTransparency = 1.000
						ButtonTitle.BorderColor3 = Color3.fromRGB(43, 43, 41)
						ButtonTitle.BorderSizePixel = 0
						ButtonTitle.Size = UDim2.new(0, 379, 0, 17)
						ButtonTitle.Font = Enum.Font.GothamBold
						ButtonTitle.Text = yazi
						ButtonTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						ButtonTitle.TextSize = 15.000
						ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left

						ButtonText.Name = "ButtonText"
						ButtonText.Parent = ButtonListing
						ButtonText.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						ButtonText.BackgroundTransparency = 1.000
						ButtonText.BorderColor3 = Color3.fromRGB(43, 43, 41)
						ButtonText.BorderSizePixel = 0
						ButtonText.Position = UDim2.new(0, 0, 0.170000002, 0)
						ButtonText.Size = UDim2.new(0, 379, 0, 17)
						ButtonText.Font = Enum.Font.Gotham
						ButtonText.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
						ButtonText.TextSize = 15.000
						ButtonText.TextXAlignment = Enum.TextXAlignment.Left

						ButtonClick.Name = "ButtonClick"
						ButtonClick.Parent = Button
						ButtonClick.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						ButtonClick.BackgroundTransparency = 1.000
						ButtonClick.BorderColor3 = Color3.fromRGB(35, 35, 35)
						ButtonClick.BorderSizePixel = 0
						ButtonClick.Size = UDim2.new(0, 391, 0, 55)
						ButtonClick.Font = Enum.Font.SourceSans
						ButtonClick.Text = ""
						ButtonClick.TextColor3 = Color3.fromRGB(0, 0, 0)
						ButtonClick.TextSize = 1.000
						ButtonClick.TextTransparency = 1.000
						ButtonClick.AutoButtonColor = false

						ClickIcon.Name = "ClickIcon"
						ClickIcon.Parent = Button
						ClickIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ClickIcon.BackgroundTransparency = 1.000
						ClickIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
						ClickIcon.BorderSizePixel = 0
						ClickIcon.Size = UDim2.new(0, 33, 0, 33)
						ClickIcon.Image = "rbxassetid://13570069771"
						ClickIcon.ImageColor3 = HawkLib.Themes[Theme].ButtonClickIconColor

						Button.MouseEnter:Connect(
							function()
								TweenService:Create(
									Button,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
								):Play()
							end
						)
						Button.MouseLeave:Connect(
							function()
								TweenService:Create(
									Button,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
								):Play()
							end
						)

						local buttonanim;

						if check ~= nil and not tostring(check):match("function") then
							ButtonTitle.Size = UDim2.new(0, 379, 0, 17)
							ButtonText.Size = UDim2.new(0, 379, 0, 17)
							Button.Size = UDim2.new(0, 391, 0, 55)
							ButtonText.Text = tostring(description)
							ClickIcon.Position = UDim2.new(0.898, 0,0.176, 0)
							buttonanim = Button.AbsoluteSize.Y
							table.insert(buttoncheck, callback)
						elseif tostring(check):match("function") then
							table.insert(buttoncheck, description)
							ButtonText:Destroy()
							ButtonTitle.Size = UDim2.new(0, 379, 0, 32)
							Button.Size = UDim2.new(0, 391, 0, 44)
							ClickIcon.Position = UDim2.new(0.89, 0,0.11, 0)
							buttonanim = Button.AbsoluteSize.Y
						end

						ButtonClick.MouseButton1Click:Connect(
							function()
								TweenService:Create(
									Button,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{Size = UDim2.new(0, 375,0, buttonanim)}
								):Play()
								wait()
								TweenService:Create(
									Button,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{Size = UDim2.new(0, 391,0, buttonanim)}
								):Play()
								pcall(buttoncheck[1])
							end
						)
						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()

						local update = {}
						function update:UpdateButton(test, newdesc, kalbak)
							newdescriptwion = newdesc
							zort = kalbak
							kalbak = kalbak or function() end

							if tostring(newdescriptwion):match("function") then
								table.clear(buttoncheck)
								wait()
								table.insert(buttoncheck, newdescriptwion)
								ButtonText.TextTransparency = 1
								ButtonTitle.Size = UDim2.new(0, 379, 0, 32)
								Button.Size = UDim2.new(0, 391, 0, 44)
								ClickIcon.Position = UDim2.new(0.89, 0,0.11, 0)
								buttonanim = Button.AbsoluteSize.Y
							elseif tostring(zort):match("function") then
								table.clear(buttoncheck)
								wait()
								table.insert(buttoncheck, zort)
								ButtonText.TextTransparency = 0
								ButtonTitle.Size = UDim2.new(0, 379, 0, 17)
								ButtonText.Size = UDim2.new(0, 379, 0, 17)
								Button.Size = UDim2.new(0, 391, 0, 55)
								ButtonText.Text = tostring(newdescriptwion)
								ButtonTitle.Text = test
								ClickIcon.Position = UDim2.new(0.898, 0,0.176, 0)
								buttonanim = Button.AbsoluteSize.Y
							end

							ButtonTitle.Text = test
							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
						end
						return update
					end

					function SectionItems:Paragraph(pharagraphtitle, description)
						local desc = description or {}

						local Pharagraph = Instance.new("Frame")
						local UICorner_9 = Instance.new("UICorner")
						local PharagraphListing = Instance.new("Frame")
						local PharagraphTitle = Instance.new("TextLabel")
						local ParagraphLayout = Instance.new("UIListLayout")

						Pharagraph.Name = "Pharagraph"
						Pharagraph.Parent = Container
						Pharagraph.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Pharagraph.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						Pharagraph.BorderSizePixel = 0
						Pharagraph.Position = UDim2.new(0.0196560193, 0, 0.333988219, 0)

						UICorner_9.CornerRadius = UDim.new(0, 6)
						UICorner_9.Parent = Pharagraph

						PharagraphListing.Name = "PharagraphListing"
						PharagraphListing.Parent = Pharagraph
						PharagraphListing.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						PharagraphListing.BackgroundTransparency = 1.000
						PharagraphListing.BorderColor3 = Color3.fromRGB(43, 43, 41)
						PharagraphListing.BorderSizePixel = 0

						PharagraphTitle.Name = "PharagraphTitle"
						PharagraphTitle.Parent = PharagraphListing
						PharagraphTitle.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						PharagraphTitle.BackgroundTransparency = 1.000
						PharagraphTitle.BorderColor3 = Color3.fromRGB(43, 43, 41)
						PharagraphTitle.BorderSizePixel = 0
						PharagraphTitle.Size = UDim2.new(0, 379, 0, 17)
						PharagraphTitle.Font = Enum.Font.GothamBold
						PharagraphTitle.Text = pharagraphtitle
						PharagraphTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						PharagraphTitle.TextSize = 15.000
						PharagraphTitle.TextXAlignment = Enum.TextXAlignment.Left

						ParagraphLayout.Parent = PharagraphListing
						ParagraphLayout.SortOrder = Enum.SortOrder.LayoutOrder
						ParagraphLayout.Padding = UDim.new(0, 2)

						local paragraphtable = {}
						for i, v in pairs(desc) do
							table.insert(paragraphtable, v)

							local PharagraphText = Instance.new("TextLabel")
							PharagraphText.Name = "PharagraphText"
							PharagraphText.Parent = PharagraphListing
							PharagraphText.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
							PharagraphText.BackgroundTransparency = 1.000
							PharagraphText.BorderColor3 = Color3.fromRGB(43, 43, 41)
							PharagraphText.BorderSizePixel = 0
							PharagraphText.ClipsDescendants = true
							PharagraphText.Position = UDim2.new(0, 0, 0.177083328, 0)
							PharagraphText.Size = UDim2.new(0, 372, 0, 15)
							PharagraphText.Font = Enum.Font.Gotham
							PharagraphText.Text = v
							PharagraphText.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
							PharagraphText.TextSize = 15.000
							PharagraphText.TextWrapped = true
							PharagraphText.TextXAlignment = Enum.TextXAlignment.Left
							PharagraphText.TextYAlignment = Enum.TextYAlignment.Top

							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
						end

						local fullparagraph = #paragraphtable
						if fullparagraph == 1 then
							Pharagraph.Size = UDim2.new(0, 391, 0, 50)
							PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.15, 0)
							PharagraphListing.Size = UDim2.new(0, 372, 0, 40)
						elseif fullparagraph == 2 then
							Pharagraph.Size = UDim2.new(0, 391, 0, 70)
							PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.13, 0)
							PharagraphListing.Size = UDim2.new(0, 372, 0, 50)
						elseif fullparagraph == 3 then
							Pharagraph.Size = UDim2.new(0, 391, 0, 85)
							PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.10, 0)
							PharagraphListing.Size = UDim2.new(0, 372, 0, 60)
						elseif fullparagraph == 4 then
							Pharagraph.Size = UDim2.new(0, 391, 0, 100)
							PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.09, 0)
							PharagraphListing.Size = UDim2.new(0, 372, 0, 60)
						elseif fullparagraph == 5 then
							Pharagraph.Size = UDim2.new(0, 391, 0, 120)
							PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.06, 0)
							PharagraphListing.Size = UDim2.new(0, 372, 0, 60)	
						elseif fullparagraph > 5 then
							PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.06, 0)
							Pharagraph.Size = UDim2.new(0, 391, 0, ParagraphLayout.AbsoluteContentSize.Y+20)
						end

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()
					end

					function SectionItems:Slider(Text, minvalue, maxvalue, callback)
						minvalue = tonumber(minvalue)
						maxvalue = tonumber(maxvalue)

						callback = callback or function()
						end

						local mouse = game.Players.LocalPlayer:GetMouse()
						local uis = game:GetService("UserInputService")

						local Slider = Instance.new("Frame")
						local UICorner_10 = Instance.new("UICorner")
						local SliderListing = Instance.new("Frame")
						local SliderTitle = Instance.new("TextLabel")
						local UIListLayout_7 = Instance.new("UIListLayout")
						local SliderButtonFrame = Instance.new("Frame")
						local SliderButton = Instance.new("TextButton")
						local UICorner_11 = Instance.new("UICorner")
						local UICorner_12 = Instance.new("UICorner")
						local UIStroke_2 = Instance.new("UIStroke")
						local InSliderFrame = Instance.new("Frame")
						local UICorner_13 = Instance.new("UICorner")
						local UIGradient = Instance.new("UIGradient")
						local UIStroke_3 = Instance.new("UIStroke")
						local Num = Instance.new("TextLabel")
						local SliderFixer = Instance.new("ScrollingFrame")

						Slider.Name = "Slider"
						Slider.Parent = Container
						Slider.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Slider.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						Slider.BorderSizePixel = 0
						Slider.Position = UDim2.new(0.0196560193, 0, 0.569744587, 0)
						Slider.Size = UDim2.new(0, 391, 0, 83)

						UICorner_10.CornerRadius = UDim.new(0, 6)
						UICorner_10.Parent = Slider

						SliderListing.Name = "SliderListing"
						SliderListing.Parent = Slider
						SliderListing.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						SliderListing.BackgroundTransparency = 1.000
						SliderListing.BorderColor3 = Color3.fromRGB(43, 43, 41)
						SliderListing.BorderSizePixel = 0
						SliderListing.Position = UDim2.new(0.0306905378, 0, 0.17634055, 0)
						SliderListing.Size = UDim2.new(0, 372, 0, 32)

						SliderTitle.Name = "SliderTitle"
						SliderTitle.Parent = SliderListing
						SliderTitle.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						SliderTitle.BackgroundTransparency = 1.000
						SliderTitle.BorderColor3 = Color3.fromRGB(43, 43, 41)
						SliderTitle.BorderSizePixel = 0
						SliderTitle.Size = UDim2.new(0, 379, 0, 17)
						SliderTitle.Font = Enum.Font.GothamBold
						SliderTitle.Text = Text
						SliderTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						SliderTitle.TextSize = 15.000
						SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

						UIListLayout_7.Parent = SliderListing
						UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout_7.Padding = UDim.new(0, 8)

						SliderButtonFrame.Name = "SliderButtonFrame"
						SliderButtonFrame.Parent = SliderListing
						SliderButtonFrame.BackgroundColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
						SliderButtonFrame.BorderColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
						SliderButtonFrame.BorderSizePixel = 0
						SliderButtonFrame.Position = UDim2.new(0.0309999995, 0, 0.486000001, 0)
						SliderButtonFrame.Size = UDim2.new(0.992, 0,1, 0)

						SliderButton.Name = "SliderButton"
						SliderButton.Parent = SliderButtonFrame
						SliderButton.BackgroundColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
						SliderButton.BackgroundTransparency = 1.000
						SliderButton.BorderColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
						SliderButton.BorderSizePixel = 0
						SliderButton.Size = UDim2.new(1, 0,1, 0)
						SliderButton.Font = Enum.Font.SourceSans
						SliderButton.Text = ""
						SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
						SliderButton.TextSize = 14.000
						SliderButton.AutoButtonColor = false

						UICorner_11.CornerRadius = UDim.new(0, 6)
						UICorner_11.Parent = SliderButton

						UICorner_12.CornerRadius = UDim.new(0, 6)
						UICorner_12.Parent = SliderButtonFrame

						UIStroke_2.Parent = SliderButtonFrame
						UIStroke_2.Color = Color3.fromRGB(47, 102, 145)			

						SliderFixer.Name = "SliderFixer"
						SliderFixer.Parent = SliderButtonFrame
						SliderFixer.Active = true
						SliderFixer.BackgroundColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
						SliderFixer.BackgroundTransparency = 1.000
						SliderFixer.BorderColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
						SliderFixer.BorderSizePixel = 0
						SliderFixer.Size = UDim2.new(1, 0, 1, 0)
						SliderFixer.ScrollBarImageColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
						SliderFixer.CanvasSize = UDim2.new(0, 0, 0, 0)
						SliderFixer.ScrollBarThickness = 0

						InSliderFrame.Name = "InSliderFrame"
						InSliderFrame.Parent = SliderFixer
						InSliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						InSliderFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
						InSliderFrame.BorderSizePixel = 0
						InSliderFrame.Position = UDim2.new(-0.00270986161, 0, 0, 0)
						InSliderFrame.Size = UDim2.new(0, 0,0, 32)

						UICorner_13.CornerRadius = UDim.new(0, 6)
						UICorner_13.Parent = InSliderFrame

						UIGradient.Color = HawkLib.Themes[Theme].InSliderFrame
						UIGradient.Rotation = 90
						UIGradient.Parent = InSliderFrame

						UIStroke_3.Parent = InSliderFrame
						UIStroke_3.Color = Color3.fromRGB(47, 102, 145)

						Num.Name = "Num"
						Num.Parent = SliderButtonFrame
						Num.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Num.BackgroundTransparency = 1.000
						Num.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Num.BorderSizePixel = 0
						Num.Position = UDim2.new(0.0322580636, 0, 0, 0)
						Num.Size = UDim2.new(0, 66, 0, 32)
						Num.Font = Enum.Font.Gotham
						Num.TextColor3 = HawkLib.Themes[Theme].NumColor
						Num.TextSize = 14.000
						Num.TextXAlignment = Enum.TextXAlignment.Left
						Num.Text = minvalue
						Num.ZIndex = 3

						Slider.MouseEnter:Connect(
							function()
								TweenService:Create(
									Slider,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
								):Play()
							end
						)
						Slider.MouseLeave:Connect(
							function()
								TweenService:Create(
									Slider,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
								):Play()
							end
						)

						if OnPc then
							local mouse = game.Players.LocalPlayer:GetMouse()
							local uis = game:GetService("UserInputService")
							local Value;

							SliderButton.MouseButton1Down:Connect(function()
								Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 371) * InSliderFrame.AbsoluteSize.X) + tonumber(minvalue)) or 0
								Num.Text = Value
								pcall(function()
									callback(Value)
								end)
								InSliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - InSliderFrame.AbsolutePosition.X, 0, 371), 0, 32), "In", "Quad", 0.09)

								moveconnection = mouse.Move:Connect(function()
									Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 371) * InSliderFrame.AbsoluteSize.X) + tonumber(minvalue))
									Num.Text = Value
									pcall(function()
										callback(Value)
									end)

									InSliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - InSliderFrame.AbsolutePosition.X, 0, 371), 0, 32), "In", "Quad", 0.09)				
								end)
								releaseconnection = uis.InputEnded:Connect(function(Mouse)
									if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
										Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 371) * InSliderFrame.AbsoluteSize.X) + tonumber(minvalue))
										Num.Text = Value
										pcall(function()
											callback(Value)
										end)
										InSliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - InSliderFrame.AbsolutePosition.X, 0, 371), 0, 32), "In", "Quad", 0.09)
										moveconnection:Disconnect()
										releaseconnection:Disconnect()
									end
								end)						
							end)

							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
						elseif OnMobile or OnTabletLaptop then

							local mouse = game.Players.LocalPlayer:GetMouse()
							local uis = game:GetService("UserInputService")
							local Value;

							SliderButton.MouseButton1Down:Connect(function()
								Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 371) * InSliderFrame.AbsoluteSize.X) + tonumber(minvalue)) or 0
								pcall(function()
									callback(Value)
								end)
								Num.Text = Value
								InSliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - InSliderFrame.AbsolutePosition.X, 0, 371), 0, 32), "In", "Quad", 0.05, true)					
							end)

							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
						end
						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()
						local slid = {}
						function slid:SetValue(dodoj)	
							if dodoj == nil then
								local percentage = math.clamp((Mouse.X - InSliderFrame.AbsolutePosition.X) / (InSliderFrame.AbsoluteSize.X), 0, 1)
								local value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 371) * percentage) + tonumber(minvalue))

								Num.Text = tostring(dodoj)
								InSliderFrame.Size = UDim2.fromScale(percentage, 1)
								pcall(function()
									callback(dodoj)
								end)
							else
								Num.Text = tostring(dodoj)
								InSliderFrame.Size = UDim2.fromScale(((dodoj - tonumber(minvalue)) / (tonumber(maxvalue) - tonumber(minvalue))), 1)
								pcall(function()
									callback(dodoj)
								end)
							end
						end		

						function slid:GetValue()
							return tonumber(Num.Text)
						end				
						return slid
					end

					function SectionItems:Line()
						local Line = Instance.new("Frame")
						local LineCorner = Instance.new("UICorner")

						Line.Name = "Line"
						Line.Parent = Container
						Line.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Line.BorderColor3 = Color3.fromRGB(43, 43, 41)
						Line.BorderSizePixel = 0
						Line.Position = UDim2.new(0.377149731, 0, 1.22200394, 0)
						Line.Size = UDim2.new(0, 391, 0, 8)

						LineCorner.Parent = Line

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()
					end

					function SectionItems:ColorPicker(text, preset, callback)
						local ColorPickerToggled = false
						local OldToggleColor = Color3.fromRGB(0, 0, 0)
						local OldColor = Color3.fromRGB(0, 0, 0)
						local OldColorSelectionPosition = nil
						local OldHueSelectionPosition = nil
						local ColorH, ColorS, ColorV = 1, 1, 1
						local RainbowColorPicker = false
						local ColorPickerInput = nil
						local ColorInput = nil
						local HueInput = nil

						local Colorpicker = Instance.new("TextButton")
						local Title = Instance.new("TextLabel")
						local BoxColor = Instance.new("Frame")
						local BoxcolorCorner = Instance.new("UICorner")
						local ColorpickerCorner = Instance.new("UICorner")

						Colorpicker.Name = "Colorpicker"
						Colorpicker.Parent = Container
						Colorpicker.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Colorpicker.Position = UDim2.new(0,0,0,0)
						Colorpicker.Size = UDim2.new(0, 391, 0, 36)
						Colorpicker.AutoButtonColor = false
						Colorpicker.Font = Enum.Font.Gotham
						Colorpicker.Text = ""
						Colorpicker.TextColor3 = Color3.fromRGB(255, 255, 255)
						Colorpicker.TextSize = 14.000

						Title.Name = "Title"
						Title.Parent = Colorpicker
						Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Title.BackgroundTransparency = 1.000
						Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
						Title.Size = UDim2.new(0, 391, 0, 36)
						Title.Text = text
						Title.Font = Enum.Font.GothamBold
						Title.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						Title.TextSize = 15.000
						Title.TextXAlignment = Enum.TextXAlignment.Left

						BoxColor.Name = "Boxcolor"
						BoxColor.Parent = Colorpicker
						BoxColor.BackgroundColor3 = preset
						BoxColor.Position = UDim2.new(0.88, 0, 0.24, 0)
						BoxColor.Size = UDim2.new(0, 36, 0, 19)

						BoxcolorCorner.CornerRadius = UDim.new(0, 6)
						BoxcolorCorner.Name = "BoxcolorCorner"
						BoxcolorCorner.Parent = BoxColor

						ColorpickerCorner.CornerRadius = UDim.new(0, 4)
						ColorpickerCorner.Name = "ColorpickerCorner"
						ColorpickerCorner.Parent = Colorpicker

						local ColorpickerFrame = Instance.new("Frame")
						local DropdownFrameCorner = Instance.new("UICorner")
						local Hue = Instance.new("ImageLabel")
						local HueCorner = Instance.new("UICorner")
						local HueGradient = Instance.new("UIGradient")
						local HueSelection = Instance.new("ImageLabel")
						local Color = Instance.new("ImageLabel")
						local ColorCorner = Instance.new("UICorner")
						local ColorSelection = Instance.new("ImageLabel")
						local Confirm = Instance.new("TextButton")
						local ButtonCorner = Instance.new("UICorner")
						local RainbowToggle = Instance.new("TextButton")
						local RainbowToggleCorner = Instance.new("UICorner")
						local RainbowTitle = Instance.new("TextLabel")
						local RainbowToggleFrame = Instance.new("Frame")
						local RainbowToggleFrameCorner = Instance.new("UICorner")
						local RainbowToggleFrameRainbow = Instance.new("Frame")
						local RainbowToggleFrameRainbowCorner = Instance.new("UICorner")
						local RainbowToggleDot = Instance.new("Frame")
						local RainbowToggleDotCorner = Instance.new("UICorner")

						ColorpickerFrame.Name = "ColorpickerFrame"
						ColorpickerFrame.Parent = Container
						ColorpickerFrame.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						ColorpickerFrame.BackgroundTransparency = 0.2
						ColorpickerFrame.BorderSizePixel = 0
						ColorpickerFrame.Position = UDim2.new(0, 0, 0, 0)
						ColorpickerFrame.Size = UDim2.new(0, 391, 0, 0)
						ColorpickerFrame.Visible = false
						ColorpickerFrame.ClipsDescendants = true

						DropdownFrameCorner.Name = "DropdownFrameCorner"
						DropdownFrameCorner.Parent = ColorpickerFrame

						Hue.Name = "Hue"
						Hue.Parent = ColorpickerFrame
						Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Hue.Position = UDim2.new(0, 209, 0, 9)
						Hue.Size = UDim2.new(0, 25, 0, 80)

						HueCorner.CornerRadius = UDim.new(0, 3)
						HueCorner.Name = "HueCorner"
						HueCorner.Parent = Hue

						HueGradient.Color =
							ColorSequence.new {
								ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
								ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
								ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
								ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
								ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
								ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
								ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
							}
						HueGradient.Rotation = 270
						HueGradient.Name = "HueGradient"
						HueGradient.Parent = Hue

						HueSelection.Name = "HueSelection"
						HueSelection.Parent = Hue
						HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
						HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						HueSelection.BackgroundTransparency = 1.000
						HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
						HueSelection.Size = UDim2.new(0, 18, 0, 18)
						HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"

						Color.Name = "Color"
						Color.Parent = ColorpickerFrame
						Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
						Color.Position = UDim2.new(0, 9, 0, 9)
						Color.Size = UDim2.new(0, 194, 0, 80)
						Color.ZIndex = 10
						Color.Image = "rbxassetid://4155801252"

						ColorCorner.CornerRadius = UDim.new(0, 3)
						ColorCorner.Name = "ColorCorner"
						ColorCorner.Parent = Color

						ColorSelection.Name = "ColorSelection"
						ColorSelection.Parent = Color
						ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
						ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ColorSelection.BackgroundTransparency = 1.000
						ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
						ColorSelection.Size = UDim2.new(0, 18, 0, 18)
						ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
						ColorSelection.ScaleType = Enum.ScaleType.Fit

						Confirm.Name = "Confirm"
						Confirm.Parent = ColorpickerFrame
						Confirm.BackgroundColor3 = HawkLib.Themes[Theme].TitleBar
						Confirm.BackgroundTransparency = 1
						Confirm.Position = UDim2.new(0.62, 0, 0.0900000036, 0)
						Confirm.Size = UDim2.new(0, 145, 0, 27)
						Confirm.AutoButtonColor = false
						Confirm.Font = Enum.Font.Gotham
						Confirm.Text = "Confirm"
						Confirm.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						Confirm.TextSize = 14.000

						ButtonCorner.Name = "ButtonCorner"
						ButtonCorner.Parent = Confirm

						RainbowToggle.Name = "RainbowToggle"
						RainbowToggle.Parent = ColorpickerFrame
						RainbowToggle.BackgroundColor3 = HawkLib.Themes[Theme].TitleBar
						RainbowToggle.Position = UDim2.new(0.62, 0, 0.431324542, 0)
						RainbowToggle.Size = UDim2.new(0, 145, 0, 27)
						RainbowToggle.AutoButtonColor = false	
						RainbowToggle.BackgroundTransparency = 1
						RainbowToggle.Font = Enum.Font.Gotham
						RainbowToggle.Text = ""
						RainbowToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
						RainbowToggle.TextSize = 14.000

						RainbowToggleCorner.Name = "RainbowToggleCorner"
						RainbowToggleCorner.Parent = RainbowToggle

						RainbowTitle.Name = "RainbowTitle"
						RainbowTitle.Parent = RainbowToggle
						RainbowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						RainbowTitle.BackgroundTransparency = 1.000
						RainbowTitle.Position = UDim2.new(0.1, 0, 0, 0)
						RainbowTitle.Size = UDim2.new(0, 29, 0, 27)
						RainbowTitle.Font = Enum.Font.Gotham
						RainbowTitle.Text = "Rainbow"
						RainbowTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						RainbowTitle.TextSize = 14.000
						RainbowTitle.TextXAlignment = Enum.TextXAlignment.Left

						RainbowToggleFrame.Name = "RainbowToggleFrame"
						RainbowToggleFrame.Parent = RainbowToggle
						RainbowToggleFrame.BackgroundColor3 = HawkLib.Themes[Theme].Main
						RainbowToggleFrame.Position = UDim2.new(0.693, 0, 0.142857149, 0)
						RainbowToggleFrame.Size = UDim2.new(0, 36, 0, 19)

						RainbowToggleFrameCorner.CornerRadius = UDim.new(1, 0)
						RainbowToggleFrameCorner.Name = "RainbowToggleFrameCorner"
						RainbowToggleFrameCorner.Parent = RainbowToggleFrame

						RainbowToggleFrameRainbow.Name = "RainbowToggleFrameRainbow"
						RainbowToggleFrameRainbow.Parent = RainbowToggleFrame
						RainbowToggleFrameRainbow.BackgroundColor3 = Color3.fromRGB(67,136,246)
						RainbowToggleFrameRainbow.BackgroundTransparency = 1.000
						RainbowToggleFrameRainbow.Position = UDim2.new(-0.0198377371, 0, 0.00601506233, 0)
						RainbowToggleFrameRainbow.Size = UDim2.new(0, 36, 0, 19)

						RainbowToggleFrameRainbowCorner.CornerRadius = UDim.new(1, 0)
						RainbowToggleFrameRainbowCorner.Name = "RainbowToggleFrameRainbowCorner"
						RainbowToggleFrameRainbowCorner.Parent = RainbowToggleFrameRainbow

						RainbowToggleDot.Name = "RainbowToggleDot"
						RainbowToggleDot.Parent = RainbowToggleFrameRainbow
						RainbowToggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						RainbowToggleDot.Position = UDim2.new(0.104999997, -3, 0.289000005, -4)
						RainbowToggleDot.Size = UDim2.new(0, 16, 0, 16)

						RainbowToggleDotCorner.CornerRadius = UDim.new(1, 0)
						RainbowToggleDotCorner.Name = "RainbowToggleDotCorner"
						RainbowToggleDotCorner.Parent = RainbowToggleDot

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()

						Colorpicker.MouseEnter:Connect(
							function()
								TweenService:Create(
									Colorpicker,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
								):Play()
							end
						)
						Colorpicker.MouseLeave:Connect(
							function()
								TweenService:Create(
									Colorpicker,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
								):Play()
							end
						)

						local function UpdateColorPicker(nope)
							BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
							Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

							pcall(callback, BoxColor.BackgroundColor3)
						end

						ColorH =
							1 -
							(math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
								Hue.AbsoluteSize.Y)
						ColorS =
							(math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
								Color.AbsoluteSize.X)
						ColorV =
							1 -
							(math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
								Color.AbsoluteSize.Y)

						BoxColor.BackgroundColor3 = preset
						Color.BackgroundColor3 = preset
						pcall(callback, BoxColor.BackgroundColor3)

						Color.InputBegan:Connect(
							function(input)
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									if RainbowColorPicker then
										return
									end

									if ColorInput then
										ColorInput:Disconnect()
									end

									ColorInput =
										RunService.RenderStepped:Connect(
											function()
												local ColorX = (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /Color.AbsoluteSize.X)
												local ColorY = (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /Color.AbsoluteSize.Y)

												ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
												ColorS = ColorX
												ColorV = 1 - ColorY

												UpdateColorPicker(true)
											end
										)
								end
							end
						)

						Color.InputEnded:Connect(
							function(input)
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									if ColorInput then
										ColorInput:Disconnect()
									end
								end
							end
						)

						Hue.InputBegan:Connect(
							function(input)
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									if RainbowColorPicker then
										return
									end

									if HueInput then
										HueInput:Disconnect()
									end

									HueInput =
										RunService.RenderStepped:Connect(
											function()
												local HueY = (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /Hue.AbsoluteSize.Y)

												HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
												ColorH = 1 - HueY

												UpdateColorPicker(true)
											end
										)
								end
							end
						)

						Hue.InputEnded:Connect(
							function(input)
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									if HueInput then
										HueInput:Disconnect()
									end
								end
							end
						)

						RainbowToggle.MouseButton1Click:Connect(
							function()
								RainbowColorPicker = not RainbowColorPicker

								if ColorInput then
									ColorInput:Disconnect()
								end

								if HueInput then
									HueInput:Disconnect()
								end

								if RainbowColorPicker then
									TweenService:Create(
										RainbowToggleFrameRainbow,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{BackgroundTransparency = 0}
									):Play()
									TweenService:Create(
										RainbowToggleDot,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{Position = UDim2.new(0.595, -3, 0.289000005, -4)}
									):Play()

									OldToggleColor = BoxColor.BackgroundColor3
									OldColor = Color.BackgroundColor3
									OldColorSelectionPosition = ColorSelection.Position
									OldHueSelectionPosition = HueSelection.Position

									while RainbowColorPicker do
										BoxColor.BackgroundColor3 = Color3.fromHSV(Strawn.RainbowColorValue, 1, 1)
										Color.BackgroundColor3 = Color3.fromHSV(Strawn.RainbowColorValue, 1, 1)

										ColorSelection.Position = UDim2.new(1, 0, 0, 0)
										HueSelection.Position = UDim2.new(0.48, 0, 0, Strawn.HueSelectionPosition)

										pcall(callback, BoxColor.BackgroundColor3)
										wait()
									end
								elseif not RainbowColorPicker then
									TweenService:Create(
										RainbowToggleFrameRainbow,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{BackgroundTransparency = 1}
									):Play()
									TweenService:Create(
										RainbowToggleDot,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{Position = UDim2.new(0.104999997, -3, 0.289000005, -4)}
									):Play()

									BoxColor.BackgroundColor3 = OldToggleColor
									Color.BackgroundColor3 = OldColor

									ColorSelection.Position = OldColorSelectionPosition
									HueSelection.Position = OldHueSelectionPosition

									pcall(callback, BoxColor.BackgroundColor3)
								end
							end
						)

						Colorpicker.MouseButton1Click:Connect(
							function()								
								if ColorPickerToggled == false then
									ColorPickerToggled = not ColorPickerToggled
									ColorpickerFrame.Visible = true
									ColorpickerFrame:TweenSize(
										UDim2.new(0, 391, 0, 100),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)

									repeat
										wait()
									until ColorpickerFrame.Size == UDim2.new(0, 391, 0, 100)
									TweenService:Create(
										Page,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
									):Play()
								else
									ColorPickerToggled = not ColorPickerToggled

									ColorpickerFrame:TweenSize(
										UDim2.new(0, 391, 0, 0),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)
									repeat
										wait()
									until ColorpickerFrame.Size == UDim2.new(0, 391, 0, 0)
									ColorpickerFrame.Visible = false
									TweenService:Create(
										Page,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
									):Play()
								end
							end
						)

						Confirm.MouseButton1Click:Connect(
							function()
								ColorPickerToggled = not ColorPickerToggled

								ColorpickerFrame:TweenSize(
									UDim2.new(0, 391, 0, 0),
									Enum.EasingDirection.Out,
									Enum.EasingStyle.Quart,
									0.1,
									true
								)
								repeat
									wait()
								until ColorpickerFrame.Size == UDim2.new(0, 391, 0, 0)
								ColorpickerFrame.Visible = false
								TweenService:Create(
									Page,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
								):Play()
							end)

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()
					end

					function SectionItems:KeyBind(keytext, first, callback)
						callback = callback or function()
						end
						local oldKey = first
						local KeyBind = Instance.new("Frame")
						local UICorner_22 = Instance.new("UICorner")
						local KeyBindTitle = Instance.new("TextLabel")
						local BindSelection = Instance.new("Frame")
						local UICorner_23 = Instance.new("UICorner")
						local UIStroke_9 = Instance.new("UIStroke")
						local Bind = Instance.new("TextButton")

						KeyBind.Name = "KeyBind"
						KeyBind.Parent = Container
						KeyBind.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						KeyBind.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						KeyBind.BorderSizePixel = 0
						KeyBind.Position = UDim2.new(0.0196560193, 0, 0.748526514, 0)
						KeyBind.Size = UDim2.new(0, 391, 0, 44)

						UICorner_22.CornerRadius = UDim.new(0, 6)
						UICorner_22.Parent = KeyBind

						KeyBindTitle.Name = "KeyBindTitle"
						KeyBindTitle.Parent = KeyBind
						KeyBindTitle.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
						KeyBindTitle.BackgroundTransparency = 1.000
						KeyBindTitle.BorderColor3 = Color3.fromRGB(43, 43, 41)
						KeyBindTitle.BorderSizePixel = 0
						KeyBindTitle.Position = UDim2.new(0.0306905378, 0, 0.275297672, 0)
						KeyBindTitle.Size = UDim2.new(0, 121, 0, 22)
						KeyBindTitle.Font = Enum.Font.GothamBold
						KeyBindTitle.Text = keytext
						KeyBindTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						KeyBindTitle.TextSize = 15.000
						KeyBindTitle.TextXAlignment = Enum.TextXAlignment.Left

						BindSelection.Name = "BindSelection"
						BindSelection.Parent = KeyBind
						BindSelection.BackgroundColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
						BindSelection.BorderColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
						BindSelection.BorderSizePixel = 0
						BindSelection.Position = UDim2.new(0.902813315, 0, 0.181818187, 0)
						BindSelection.Size = UDim2.new(0, 30, 0, 28)

						UICorner_23.CornerRadius = UDim.new(0, 6)
						UICorner_23.Parent = BindSelection

						UIStroke_9.Parent = BindSelection
						UIStroke_9.Color = HawkLib.Themes[Theme].ItemTextBoxKeyBindStrokeColors
						UIStroke_9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

						Bind.Name = "Bind"
						Bind.Parent = BindSelection
						Bind.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
						Bind.BackgroundTransparency = 1.000
						Bind.BorderColor3 = Color3.fromRGB(27, 27, 27)
						Bind.BorderSizePixel = 0
						Bind.Size = UDim2.new(0, 30, 0, 28)
						Bind.Font = Enum.Font.Gotham
						Bind.Text = first
						Bind.TextColor3 = HawkLib.Themes[Theme].ItemKeyBindTextColor
						Bind.TextSize = 16.000			
						Bind.AutoButtonColor = false

						KeyBind.MouseEnter:Connect(
							function()
								TweenService:Create(
									KeyBind,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
								):Play()
							end
						)
						KeyBind.MouseLeave:Connect(
							function()
								TweenService:Create(
									KeyBind,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
								):Play()
							end
						)

						Bind.MouseButton1Click:Connect(
							function()
								ripple(BindSelection, Mouse.X, Mouse.Y)
							end
						)

						Bind.MouseButton1Click:Connect(
							function(e)
								if not focusing then
									Bind.Text = ". . ."
									local a, b = game:GetService("UserInputService").InputBegan:wait()
									if a.KeyCode.Name ~= "Unknown" then
										Bind.Text = a.KeyCode.Name
										oldKey = a.KeyCode.Name
										print(a.KeyCode.Name)
									end
								end
							end
						)

						game:GetService("UserInputService").InputBegan:connect(function(current, ok)
							if not ok then
								if current.KeyCode.Name == oldKey then
									callback()
								end
							end
						end)

						Bind:GetPropertyChangedSignal("Text"):Connect(function()
							if string.len(Bind.Text) == 1 then 
								BindSelection.Position = UDim2.new(0.902813315, 0, 0.181818187, 0)
								Bind.Size = UDim2.new(0, 30, 0, 28)
								BindSelection.Size = UDim2.new(0, 30, 0, 28) 
							elseif string.len(Bind.Text) == 2 then 
								BindSelection.Position = UDim2.new(0.89, 0, 0.181818187, 0)
								Bind.Size = UDim2.new(0, 36, 0, 28)
								BindSelection.Size = UDim2.new(0, 36, 0, 28)	
							elseif string.len(Bind.Text) == 3 then 
								BindSelection.Position = UDim2.new(0.885, 0, 0.181818187, 0)
								Bind.Size = UDim2.new(0, 39, 0, 28)
								BindSelection.Size = UDim2.new(0, 39, 0, 28)
							elseif string.len(Bind.Text) == 4 then 
								BindSelection.Position = UDim2.new(0.85, 0, 0.181818187, 0)
								Bind.Size = UDim2.new(0, 52, 0, 28)
								BindSelection.Size = UDim2.new(0, 52, 0, 28)	
							elseif string.len(Bind.Text) == 5 then 
								BindSelection.Position = UDim2.new(0.84, 0, 0.181818187, 0)
								Bind.Size = UDim2.new(0, 58, 0, 28)
								BindSelection.Size = UDim2.new(0, 58, 0, 28)
							elseif string.len(Bind.Text) == 6 then 
								BindSelection.Position = UDim2.new(0.83, 0, 0.181818187, 0)
								Bind.Size = UDim2.new(0, 60, 0, 28)
								BindSelection.Size = UDim2.new(0, 60, 0, 28)
							elseif string.len(Bind.Text) >= 7 and string.len(Bind.Text) < 9 then 
								BindSelection.Position = UDim2.new(0.76, 0, 0.181818187, 0)
								Bind.Size = UDim2.new(0, 83, 0, 28)
								BindSelection.Size = UDim2.new(0, 83, 0, 28)	
							elseif string.len(Bind.Text) == 9 then 
								BindSelection.Position = UDim2.new(0.74, 0, 0.181818187, 0)
								Bind.Size = UDim2.new(0, 93, 0, 28)
								BindSelection.Size = UDim2.new(0, 93, 0, 28)	
							elseif string.len(Bind.Text) > 9 and string.len(Bind.Text) < 11 then 
								BindSelection.Position = UDim2.new(0.74, 0, 0.181818187, 0)
								Bind.Size = UDim2.new(0, 97, 0, 28)
								BindSelection.Size = UDim2.new(0, 97, 0, 28)
							elseif string.len(Bind.Text) >= 11 and string.len(Bind.Text) < 16 then 
								BindSelection.Position = UDim2.new(0.67, 0, 0.181818187, 0)
								Bind.Size = UDim2.new(0, 123, 0, 28)
								BindSelection.Size = UDim2.new(0, 123, 0, 28)
							end
						end)

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()
					end

					function SectionItems:Toggle(TexT, check, callback)
						check = check or nil
						callback = callback or function()
						end
						local toggled = false
						local ToggleFrame = Instance.new("Frame")
						local Toggle = Instance.new("TextButton")
						local UICorner_25 = Instance.new("UICorner")
						local ToggleText = Instance.new("TextLabel")
						local UICorner_26 = Instance.new("UICorner")
						local ToggleIconer = Instance.new("Frame")
						local UICorner_27 = Instance.new("UICorner")
						local done = Instance.new("ImageLabel")
						local UICorner_28 = Instance.new("UICorner")
						local UICorner_29 = Instance.new("UICorner")
						local UIStroke = Instance.new("UIStroke")

						ToggleFrame.Name = "ToggleFrame"
						ToggleFrame.Parent = Container
						ToggleFrame.Active = true
						ToggleFrame.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						ToggleFrame.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						ToggleFrame.Position = UDim2.new(0.0196850393, 0, 0.637992859, 0)
						ToggleFrame.Size = UDim2.new(0, 391, 0, 44)

						Toggle.Name = "Toggle"
						Toggle.Parent = ToggleFrame
						Toggle.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Toggle.BackgroundTransparency = 1.000
						Toggle.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						Toggle.Size = UDim2.new(0, 391, 0, 44)
						Toggle.Font = Enum.Font.GothamBold
						Toggle.Text = ""
						Toggle.TextColor3 = Color3.fromRGB(154, 154, 154)
						Toggle.TextSize = 14.000
						Toggle.AutoButtonColor = false

						UICorner_25.CornerRadius = UDim.new(0, 5)
						UICorner_25.Parent = Toggle

						ToggleText.Name = "ToggleText"
						ToggleText.Parent = Toggle
						ToggleText.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						ToggleText.BackgroundTransparency = 1.000
						ToggleText.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						ToggleText.Position = UDim2.new(0.031, 0,0.275, 0)
						ToggleText.Size = UDim2.new(0, 121, 0, 22)
						ToggleText.Font = Enum.Font.GothamBold
						ToggleText.Text = TexT
						ToggleText.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						ToggleText.TextSize = 14.000
						ToggleText.TextXAlignment = Enum.TextXAlignment.Left

						UICorner_26.CornerRadius = UDim.new(0, 5)
						UICorner_26.Parent = ToggleText

						ToggleIconer.Name = "ToggleIconer"
						ToggleIconer.Parent = Toggle
						ToggleIconer.BackgroundColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
						ToggleIconer.BorderColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
						ToggleIconer.BorderSizePixel = 0
						ToggleIconer.Position = UDim2.new(0.915300488, 0, 0.275297672, 0)
						ToggleIconer.Size = UDim2.new(0, 22, 0, 22)

						UICorner_27.CornerRadius = UDim.new(0, 4)
						UICorner_27.Parent = ToggleIconer

						UIStroke.Parent = ToggleIconer
						UIStroke.Color = HawkLib.Themes[Theme].ItemTextBoxKeyBindStrokeColors
						UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

						done.Name = "done"
						done.Parent = ToggleIconer
						done.BackgroundColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
						done.BorderColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
						done.BackgroundTransparency = 1
						done.Position = UDim2.new(0.0909090936, 0, 0.0909090936, 0)
						done.Size = UDim2.new(0, 18, 0, 18)
						done.ZIndex = 2
						done.Image = "rbxassetid://3926305904"
						done.ImageRectOffset = Vector2.new(644, 204)
						done.ImageRectSize = Vector2.new(36, 36)
						done.ImageColor3 = HawkLib.Themes[Theme].ToggleTickColor
						done.ImageTransparency = 1

						UICorner_28.CornerRadius = UDim.new(0, 4)
						UICorner_28.Parent = done

						UICorner_29.CornerRadius = UDim.new(0, 5)
						UICorner_29.Parent = ToggleFrame

						ToggleFrame.MouseEnter:Connect(
							function()
								TweenService:Create(
									ToggleFrame,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
								):Play()
							end
						)

						ToggleFrame.MouseLeave:Connect(
							function()
								TweenService:Create(
									ToggleFrame,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
								):Play()
							end
						)

						Toggle.MouseButton1Click:Connect(
							function()
								if not focusing then
									if toggled == false then
										game.TweenService:Create(
											done,
											TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
											{
												ImageTransparency = 0
											}
										):Play()

									else
										game.TweenService:Create(
											done,
											TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
											{
												ImageTransparency = 1
											}
										):Play()

									end
									toggled = not toggled
									wait(0.3)
									pcall(callback, toggled)
								end
							end
						)

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()

						local Toggleee = {}

						function Toggleee:UpdateToggle(boolean)
							local zz = boolean

							if zz ~= nil then
								toggled = zz
								if toggled == false then
									game.TweenService:Create(
										done,
										TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
										{
											ImageTransparency = 1
										}
									):Play()

								else
									game.TweenService:Create(
										done,
										TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
										{
											ImageTransparency = 0
										}
									):Play()

								end
								pcall(callback, zz)	
							end
						end

						if check == true then
							Toggleee:UpdateToggle(true)
						elseif check == false then
							Toggleee:UpdateToggle(false)
						elseif check == nil or tostring(check):match("func") then
							game.TweenService:Create(
								done,
								TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
								{
									ImageTransparency = 1
								}
							):Play()
						end

						return Toggleee
					end

					function SectionItems:TextBox(TexT, Desc, callback)
						callback = callback or function() end

						local TextBox = Instance.new("Frame")
						local UICorner_14 = Instance.new("UICorner")
						local TexttingBox = Instance.new("TextBox")
						local UICorner_15 = Instance.new("UICorner")
						local UIStroke_4 = Instance.new("UIStroke")
						local TextBoxTitle = Instance.new("TextLabel")			

						TextBox.Name = "TextBox"
						TextBox.Parent = Container
						TextBox.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						TextBox.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						TextBox.BorderSizePixel = 0
						TextBox.Position = UDim2.new(0.0196560193, 0, 0.748526514, 0)
						TextBox.Size = UDim2.new(0, 391, 0, 44)

						UICorner_14.CornerRadius = UDim.new(0, 6)
						UICorner_14.Parent = TextBox

						TexttingBox.Name = "TexttingBox"
						TexttingBox.Parent = TextBox
						TexttingBox.BackgroundColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
						TexttingBox.BorderColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
						TexttingBox.BorderSizePixel = 0
						TexttingBox.Position = UDim2.new(0.703489363, 0, 0.181818187, 0)
						TexttingBox.Size = UDim2.new(0, 108, 0, 27)		
						TexttingBox.Font = Enum.Font.Gotham
						TexttingBox.ClearTextOnFocus = false
						TexttingBox.PlaceholderColor3 = HawkLib.Themes[Theme].ItemTextBoxTextColor
						TexttingBox.PlaceholderText = Desc
						TexttingBox.Text = ""
						TexttingBox.TextColor3 = HawkLib.Themes[Theme].ItemTextBoxTextColor
						TexttingBox.TextSize = 14.000

						UICorner_15.CornerRadius = UDim.new(0, 6)
						UICorner_15.Parent = TexttingBox

						UIStroke_4.Parent = TexttingBox
						UIStroke_4.Color = HawkLib.Themes[Theme].ItemTextBoxKeyBindStrokeColors
						UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

						TextBoxTitle.Name = "TextBoxTitle"
						TextBoxTitle.Parent = TextBox
						TextBoxTitle.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						TextBoxTitle.BackgroundTransparency = 1.000
						TextBoxTitle.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						TextBoxTitle.BorderSizePixel = 0
						TextBoxTitle.Position = UDim2.new(0.0306905378, 0, 0.275297672, 0)
						TextBoxTitle.Size = UDim2.new(0, 121, 0, 22)
						TextBoxTitle.Font = Enum.Font.GothamBold
						TextBoxTitle.Text = TexT
						TextBoxTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						TextBoxTitle.TextSize = 15.000
						TextBoxTitle.TextXAlignment = Enum.TextXAlignment.Left

						TextBox.MouseEnter:Connect(
							function()
								TweenService:Create(
									TextBox,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
								):Play()
							end
						)
						TextBox.MouseLeave:Connect(
							function()
								TweenService:Create(
									TextBox,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
								):Play()
							end
						)

						TexttingBox.FocusLost:Connect(
							function(ep)
								if ep then
									if #TexttingBox.Text > 0 then
										pcall(callback, TexttingBox.Text)
										TexttingBox.Text = ""
									end
								end
							end
						)

						local xd = #Desc
						if xd == 0 or xd == 1 or xd == 2 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 40,0, 27)
							TexttingBox.Position = UDim2.new(0.877, 0,0.182, 0)
						elseif xd == 3 or xd == 4 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 40,0, 27)
							TexttingBox.Position = UDim2.new(0.877, 0,0.182, 0)
						elseif xd == 5 or xd == 6 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 56,0, 27)
							TexttingBox.Position = UDim2.new(0.836, 0,0.182, 0)	
						elseif xd == 7 or xd == 8 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 70,0, 27)
							TexttingBox.Position = UDim2.new(0.801, 0,0.182, 0)	
						elseif xd == 9 or xd == 10 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 81,0, 27)
							TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
						elseif xd == 11 or xd == 12 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 92,0, 27)
							TexttingBox.Position = UDim2.new(0.744, 0,0.182, 0)	
						elseif xd == 12 or xd == 13 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 122,0, 27)
							TexttingBox.Position = UDim2.new(0.668, 0,0.182, 0)
						elseif xd == 14 or xd == 15 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 141,0, 27)
							TexttingBox.Position = UDim2.new(0.619, 0,0.182, 0)
						elseif xd == 17 or xd == 18 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 155,0, 27)
							TexttingBox.Position = UDim2.new(0.583, 0,0.182, 0)		
						elseif xd == 19 or xd == 20 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 164,0, 27)
							TexttingBox.Position = UDim2.new(0.558, 0,0.182, 0)	
						elseif xd == 21 or xd == 22 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 180,0, 27)
							TexttingBox.Position = UDim2.new(0.517, 0,0.182, 0)		
						elseif xd == 23 or xd == 24 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 202,0, 27)
							TexttingBox.Position = UDim2.new(0.461, 0,0.182, 0)	
						elseif xd == 25 or xd == 26 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 212,0, 27)
							TexttingBox.Position = UDim2.new(0.432, 0,0.182, 0)	
						elseif xd == 27 or xd == 28 then
							TexttingBox.TextScaled = false
							TexttingBox.Size = UDim2.new(0, 394,0, 27)
							TexttingBox.Position = UDim2.new(0.227, 0,0.182, 0)	
						elseif xd > 28 then
							TexttingBox.TextScaled = true			
						end			

						TexttingBox:GetPropertyChangedSignal("PlaceholderText"):Connect(function()
							if #TexttingBox.PlaceholderText == 0 or #TexttingBox.PlaceholderText == 1 or #TexttingBox.PlaceholderText == 2 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 40,0, 27)
								TexttingBox.Position = UDim2.new(0.877, 0,0.182, 0)
							elseif #TexttingBox.PlaceholderText == 3 or #TexttingBox.PlaceholderText == 4 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 40,0, 27)
								TexttingBox.Position = UDim2.new(0.877, 0,0.182, 0)
							elseif #TexttingBox.PlaceholderText == 5 or #TexttingBox.PlaceholderText == 6 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 56,0, 27)
								TexttingBox.Position = UDim2.new(0.836, 0,0.182, 0)	
							elseif #TexttingBox.PlaceholderText == 7 or #TexttingBox.PlaceholderText == 8 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 70,0, 27)
								TexttingBox.Position = UDim2.new(0.801, 0,0.182, 0)	
							elseif #TexttingBox.PlaceholderText == 9 or #TexttingBox.PlaceholderText == 10 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 81,0, 27)
								TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
							elseif #TexttingBox.PlaceholderText == 11 or #TexttingBox.PlaceholderText == 12 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 92,0, 27)
								TexttingBox.Position = UDim2.new(0.744, 0,0.182, 0)	
							elseif #TexttingBox.PlaceholderText == 12 or #TexttingBox.PlaceholderText == 13 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 122,0, 27)
								TexttingBox.Position = UDim2.new(0.668, 0,0.182, 0)
							elseif #TexttingBox.PlaceholderText == 14 or #TexttingBox.PlaceholderText == 15 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 141,0, 27)
								TexttingBox.Position = UDim2.new(0.619, 0,0.182, 0)
							elseif #TexttingBox.PlaceholderText == 17 or #TexttingBox.PlaceholderText == 18 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 155,0, 27)
								TexttingBox.Position = UDim2.new(0.583, 0,0.182, 0)		
							elseif #TexttingBox.PlaceholderText == 19 or #TexttingBox.PlaceholderText == 20 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 164,0, 27)
								TexttingBox.Position = UDim2.new(0.558, 0,0.182, 0)	
							elseif #TexttingBox.PlaceholderText == 21 or #TexttingBox.PlaceholderText == 22 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 180,0, 27)
								TexttingBox.Position = UDim2.new(0.517, 0,0.182, 0)		
							elseif #TexttingBox.PlaceholderText == 23 or #TexttingBox.PlaceholderText == 24 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 202,0, 27)
								TexttingBox.Position = UDim2.new(0.461, 0,0.182, 0)	
							elseif #TexttingBox.PlaceholderText == 25 or #TexttingBox.PlaceholderText == 26 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 212,0, 27)
								TexttingBox.Position = UDim2.new(0.432, 0,0.182, 0)	
							elseif #TexttingBox.PlaceholderText == 27 or #TexttingBox.PlaceholderText == 28 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 394,0, 27)
								TexttingBox.Position = UDim2.new(0.227, 0,0.182, 0)	
							elseif #TexttingBox.PlaceholderText > 28 then
								TexttingBox.TextScaled = true			
							end			
						end)

						TexttingBox:GetPropertyChangedSignal("Text"):Connect(function()
							if #TexttingBox.Text == 0 or #TexttingBox.Text == 1 or #TexttingBox.Text == 2 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 81,0, 27)
								TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
							elseif #TexttingBox.Text == 3 or #TexttingBox.Text == 4 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 81,0, 27)
								TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
							elseif #TexttingBox.Text == 5 or #TexttingBox.Text == 6 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 81,0, 27)
								TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
							elseif #TexttingBox.Text == 7 or #TexttingBox.Text == 8 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 81,0, 27)
								TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
							elseif #TexttingBox.Text == 9 or #TexttingBox.Text == 10 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 81,0, 27)
								TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
							elseif #TexttingBox.Text == 11 or #TexttingBox.Text == 12 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 92,0, 27)
								TexttingBox.Position = UDim2.new(0.744, 0,0.182, 0)	
							elseif #TexttingBox.Text == 12 or #TexttingBox.Text == 13 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 122,0, 27)
								TexttingBox.Position = UDim2.new(0.668, 0,0.182, 0)
							elseif #TexttingBox.Text == 14 or #TexttingBox.Text == 15 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 141,0, 27)
								TexttingBox.Position = UDim2.new(0.619, 0,0.182, 0)
							elseif #TexttingBox.Text == 17 or #TexttingBox.Text == 18 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 155,0, 27)
								TexttingBox.Position = UDim2.new(0.583, 0,0.182, 0)		
							elseif #TexttingBox.Text == 19 or #TexttingBox.Text == 20 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 164,0, 27)
								TexttingBox.Position = UDim2.new(0.558, 0,0.182, 0)	
							elseif #TexttingBox.Text == 21 or #TexttingBox.Text == 22 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 180,0, 27)
								TexttingBox.Position = UDim2.new(0.517, 0,0.182, 0)		
							elseif #TexttingBox.Text == 23 or #TexttingBox.Text == 24 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 202,0, 27)
								TexttingBox.Position = UDim2.new(0.461, 0,0.182, 0)	
							elseif #TexttingBox.Text == 25 or #TexttingBox.Text == 26 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 212,0, 27)
								TexttingBox.Position = UDim2.new(0.432, 0,0.182, 0)	
							elseif #TexttingBox.Text == 27 or #TexttingBox.Text == 28 then
								TexttingBox.TextScaled = false
								TexttingBox.Size = UDim2.new(0, 218,0, 27)
								TexttingBox.Position = UDim2.new(0.420, 0,0.182, 0)	
							elseif #TexttingBox.Text > 28 then
								TexttingBox.TextScaled = true			
							end			
						end)

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()

					end

					function SectionItems:Dropdown(teks, list, callback)
						local dropfunc = {}
						local DropToggled = false
						local FrameSize = 0
						local ItemCount = 0

						local Dropdown = Instance.new("TextButton")
						local Title = Instance.new("TextLabel")
						local DropdownCorner = Instance.new("UICorner")
						local Arrow = Instance.new("ImageLabel")
						local UIStroke = Instance.new("UIStroke")
						local DropdownFrame = Instance.new("Frame")
						local DropdownFrameCorner = Instance.new("UICorner")
						local DropdownHolder = Instance.new("ScrollingFrame")
						local DropdownItemLayout = Instance.new("UIListLayout")
						local DropdownItemHolder = Instance.new("UIPadding")

						Dropdown.Name = "Dropdown"
						Dropdown.Parent = Container
						Dropdown.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Dropdown.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
						Dropdown.Size = UDim2.new(0, 391, 0, 44)
						Dropdown.AutoButtonColor = false
						Dropdown.Font = Enum.Font.GothamBold
						Dropdown.Text = ""
						Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
						Dropdown.TextSize = 15.000

						Title.Name = "Title"
						Title.Parent = Dropdown
						Title.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Title.BackgroundTransparency = 1.000
						Title.Position = UDim2.new(0.025, 0, 0, 0)
						Title.Size = UDim2.new(0, 192, 0, 44)
						Title.Font = Enum.Font.GothamBold
						Title.Text = teks
						Title.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						Title.TextSize = 15.000
						Title.TextXAlignment = Enum.TextXAlignment.Left

						DropdownCorner.CornerRadius = UDim.new(0, 6)
						DropdownCorner.Name = "DropdownCorner"
						DropdownCorner.Parent = Dropdown

						Arrow.Name = "Arrow"
						Arrow.Parent = Dropdown
						Arrow.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Arrow.BackgroundTransparency = 1.000
						Arrow.Position = UDim2.new(0.913561523, 0, 0.211111104, 0)
						Arrow.Size = UDim2.new(0, 26, 0, 27)
						Arrow.Image = "rbxassetid://6034818372"
						Arrow.ImageColor3 = HawkLib.Themes[Theme].ItemTitleColors

						DropdownFrame.Name = "DropdownFrame"
						DropdownFrame.Parent = Container
						DropdownFrame.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						DropdownFrame.BackgroundTransparency = 0.2
						DropdownFrame.BorderSizePixel = 0
						DropdownFrame.Position = UDim2.new(0.334374994, 0, 0.604166687, 0)
						DropdownFrame.Size = UDim2.new(0, 391, 0, 0)
						DropdownFrame.Visible = false

						DropdownFrameCorner.Name = "DropdownFrameCorner"
						DropdownFrameCorner.Parent = DropdownFrame

						DropdownHolder.Name = "DropdownHolder"
						DropdownHolder.Parent = DropdownFrame
						DropdownHolder.Active = true
						DropdownHolder.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						DropdownHolder.BackgroundTransparency = 1.000
						DropdownHolder.BorderSizePixel = 0
						DropdownHolder.Position = UDim2.new(0.0263156947, 0, 0.00326599111, 0)
						DropdownHolder.Size = UDim2.new(0, 391, 0, 0)
						DropdownHolder.ScrollBarThickness = 3
						DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
						DropdownHolder.ScrollBarImageColor3 = HawkLib.Themes[Theme].TitleBar

						DropdownItemLayout.Name = "DropdownItemLayout"
						DropdownItemLayout.Parent = DropdownHolder
						DropdownItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
						DropdownItemLayout.Padding = UDim.new(0, 5)

						DropdownItemHolder.Name = "DropdownItemHolder"
						DropdownItemHolder.Parent = DropdownHolder
						DropdownItemHolder.PaddingBottom = UDim.new(0, 5)
						DropdownItemHolder.PaddingTop = UDim.new(0, 5)

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()

						Dropdown.MouseEnter:Connect(
							function()
								TweenService:Create(
									Dropdown,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
								):Play()
							end
						)
						Dropdown.MouseLeave:Connect(
							function()
								TweenService:Create(
									Dropdown,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
								):Play()
							end
						)

						Dropdown.MouseButton1Down:Connect(
							function()
								repeat
									wait()
									TweenService:Create(
										Page,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
									):Play()
								until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
							end
						)

						Dropdown.MouseButton1Click:Connect(
							function()
								if DropToggled == false then
									DropdownFrame.Visible = true
									DropdownFrame:TweenSize(
										UDim2.new(0, 391, 0, FrameSize),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)
									DropdownHolder:TweenSize(
										UDim2.new(0, 391, 0, FrameSize),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)
									TweenService:Create(
										Arrow,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{Rotation = 180}
									):Play()
									TweenService:Create(
										Page,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
									):Play()
									repeat
										wait()
										TweenService:Create(
											Page,
											TweenInfo.new(.2, Enum.EasingStyle.Quad),
											{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
										):Play()
									until DropdownFrame.Size == UDim2.new(0, 391, 0, FrameSize)
								else
									DropdownFrame:TweenSize(
										UDim2.new(0, 391, 0, 0),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)
									DropdownHolder:TweenSize(
										UDim2.new(0, 391, 0, 0),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)
									TweenService:Create(
										Arrow,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{Rotation = 0}
									):Play()
									DropdownFrame.Visible = false
									TweenService:Create(
										Page,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
									):Play()
									repeat
										wait()
										TweenService:Create(
											Page,
											TweenInfo.new(.2, Enum.EasingStyle.Quad),
											{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
										):Play()
									until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
								end
								DropToggled = not DropToggled
							end
						)

						for i, v in next, list do
							ItemCount = ItemCount + 1

							if ItemCount == 1 then
								FrameSize = 39
							elseif ItemCount == 2 then
								FrameSize = 69
							elseif ItemCount >= 3 then
								FrameSize = 100
							end

							local Item = Instance.new("TextButton")
							local ItemCorner = Instance.new("UICorner")

							Item.Name = "Item"
							Item.Parent = DropdownHolder
							Item.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
							Item.BackgroundTransparency = 0.2
							Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
							Item.Size = UDim2.new(0, 371, 0, 24)
							Item.AutoButtonColor = false
							Item.Font = Enum.Font.Gotham
							Item.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
							Item.TextSize = 14.000
							Item.Text = v

							ItemCorner.Name = "ItemCorner"
							ItemCorner.Parent = Item

							Item.MouseEnter:Connect(
								function()
									TweenService:Create(
										Item,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
									):Play()
								end
							)
							Item.MouseLeave:Connect(
								function()
									TweenService:Create(
										Item,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
									):Play()
								end
							)

							Item.MouseButton1Click:Connect(
								function()
									Title.Text = teks
									wait()
									Title.Text = teks .. " - " .. v
									pcall(callback, v)
									DropToggled = false
									DropdownFrame:TweenSize(
										UDim2.new(0, 391, 0, 0),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)
									DropdownHolder:TweenSize(
										UDim2.new(0, 391, 0, 0),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)
									TweenService:Create(
										Arrow,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{Rotation = 0}
									):Play()
									DropdownFrame.Visible = false
									TweenService:Create(
										Page,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
									):Play()
									repeat
										wait()
										TweenService:Create(
											Page,
											TweenInfo.new(.2, Enum.EasingStyle.Quad),
											{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
										):Play()
									until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
								end
							)

							DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
						end

						function dropfunc:Refresh(newlist, boolean)
							local bolen = boolean
							--Clearing List
							Title.Text = teks
							FrameSize = 0
							ItemCount = 0

							for i,v in next, DropdownHolder:GetChildren() do
								if v.Name == "Item" then
									v:Destroy()
								end
							end

							DropdownFrame:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							DropdownHolder:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							TweenService:Create(
								Arrow,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Rotation = 0}
							):Play()
							repeat
								wait()
							until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
							DropdownFrame.Visible = false
							--Adding new listo

							for i, v in next, newlist do
								ItemCount = ItemCount + 1

								if ItemCount == 1 then
									FrameSize = 39
								elseif ItemCount == 2 then
									FrameSize = 69
								elseif ItemCount >= 3 then
									FrameSize = 100
								end

								local Item = Instance.new("TextButton")
								local ItemCorner = Instance.new("UICorner")

								Item.Name = "Item"
								Item.Parent = DropdownHolder
								Item.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
								Item.BackgroundTransparency = 0.2
								Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
								Item.Size = UDim2.new(0, 371, 0, 24)
								Item.AutoButtonColor = false
								Item.Font = Enum.Font.Gotham
								Item.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
								Item.TextSize = 14.000
								Item.Text = v

								ItemCorner.Name = "ItemCorner"
								ItemCorner.Parent = Item

								Item.MouseEnter:Connect(
									function()
										TweenService:Create(
											Item,
											TweenInfo.new(.2, Enum.EasingStyle.Quad),
											{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
										):Play()
									end
								)
								Item.MouseLeave:Connect(
									function()
										TweenService:Create(
											Item,
											TweenInfo.new(.2, Enum.EasingStyle.Quad),
											{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
										):Play()
									end
								)

								Item.MouseButton1Click:Connect(
									function()
										Title.Text = teks
										wait()
										Title.Text = teks .. " - " .. v
										pcall(callback, v)
										DropToggled = false
										DropdownFrame:TweenSize(
											UDim2.new(0, 391, 0, 0),
											Enum.EasingDirection.Out,
											Enum.EasingStyle.Quart,
											0.1,
											true
										)
										DropdownHolder:TweenSize(
											UDim2.new(0, 391, 0, 0),
											Enum.EasingDirection.Out,
											Enum.EasingStyle.Quart,
											0.1,
											true
										)
										TweenService:Create(
											Arrow,
											TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
											{Rotation = 0}
										):Play()
										DropdownFrame.Visible = false
										TweenService:Create(
											Page,
											TweenInfo.new(.2, Enum.EasingStyle.Quad),
											{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
										):Play()
										repeat
											wait()
											TweenService:Create(
												Page,
												TweenInfo.new(.2, Enum.EasingStyle.Quad),
												{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
											):Play()
										until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
									end
								)

								DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)

								if bolen ~= nil then
									if boolean == true then
										DropdownFrame.Visible = true
										DropdownFrame:TweenSize(
											UDim2.new(0, 391, 0, FrameSize),
											Enum.EasingDirection.Out,
											Enum.EasingStyle.Quart,
											0.1,
											true
										)
										DropdownHolder:TweenSize(
											UDim2.new(0, 391, 0, FrameSize),
											Enum.EasingDirection.Out,
											Enum.EasingStyle.Quart,
											0.1,
											true
										)
										TweenService:Create(
											Arrow,
											TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
											{Rotation = 180}
										):Play()
										TweenService:Create(
											Page,
											TweenInfo.new(.2, Enum.EasingStyle.Quad),
											{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
										):Play()
										repeat
											wait()
											TweenService:Create(
												Page,
												TweenInfo.new(.2, Enum.EasingStyle.Quad),
												{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
											):Play()
										until DropdownFrame.Size == UDim2.new(0, 391, 0, FrameSize)
									end
								end

								TweenService:Create(
									Page,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
								):Play()
							end
						end

						function dropfunc:Clear()
							Title.Text = teks
							FrameSize = 0
							ItemCount = 0

							for i,v in next, DropdownHolder:GetChildren() do
								if v.Name == "Item" then
									v:Destroy()
								end
							end

							DropdownFrame:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							DropdownHolder:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							TweenService:Create(
								Arrow,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Rotation = 0}
							):Play()
							repeat
								wait()
							until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
							DropdownFrame.Visible = false
						end

						function dropfunc:Add(toadd, callback)
							callback = callback or function() end
							ItemCount = ItemCount + 1

							if ItemCount == 1 then
								FrameSize = 39
							elseif ItemCount == 2 then
								FrameSize = 69
							elseif ItemCount >= 3 then
								FrameSize = 100
							end

							local Item = Instance.new("TextButton")
							local ItemCorner = Instance.new("UICorner")

							Item.Name = "Item"
							Item.Parent = DropdownHolder
							Item.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
							Item.BackgroundTransparency = 0.2
							Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
							Item.Size = UDim2.new(0, 371, 0, 24)
							Item.AutoButtonColor = false
							Item.Font = Enum.Font.Gotham
							Item.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
							Item.TextSize = 14.000
							Item.Text = toadd

							ItemCorner.Name = "ItemCorner"
							ItemCorner.Parent = Item

							Item.MouseEnter:Connect(
								function()
									TweenService:Create(
										Item,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
									):Play()
								end
							)
							Item.MouseLeave:Connect(
								function()
									TweenService:Create(
										Item,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
									):Play()
								end
							)


							Item.MouseButton1Click:Connect(function()
								pcall(callback)
							end)

							Item.MouseButton1Click:Connect(
								function()
									Title.Text = teks .. " - " .. toadd
									pcall(callback, toadd)
									DropToggled = false
									DropdownFrame:TweenSize(
										UDim2.new(0, 391, 0, 0),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)
									DropdownHolder:TweenSize(
										UDim2.new(0, 391, 0, 0),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)
									TweenService:Create(
										Arrow,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{Rotation = 0}
									):Play()
									repeat
										wait()
									until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
									DropdownFrame.Visible = false

								end
							)

							DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
						end

						function dropfunc:Remove(toadd)				
							Title.Text = teks
							FrameSize = FrameSize-1
							ItemCount = ItemCount-1

							if ItemCount == 1 then
								FrameSize = 39
							elseif ItemCount == 2 then
								FrameSize = 69
							elseif ItemCount >= 3 then
								FrameSize = 100
							end

							for i,v in next, DropdownHolder:GetChildren() do
								if v.Name == "Item" and v.Text == tostring(toadd) then
									v:Destroy()
								end
							end

							DropdownFrame:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							DropdownHolder:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							TweenService:Create(
								Arrow,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Rotation = 0}
							):Play()
							repeat
								wait()
							until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)

							DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
						end

						return dropfunc
					end

					function SectionItems:Image(title, writeinto, Expander)
						local name;
						local filename;
						local checkfile;
						local imagelink;
						local imagecolor;
						local description;
						local stroke;
						local volume;

						if not isfolder(writeinto) then
							makefolder(writeinto)
						end	

						local ImageToggled = false
						for i, v in next, Expander do
							if string.lower(i) == "name" then
								name = v
							elseif string.lower(i) == "filename" then
								filename  = v
							elseif string.lower(i) == "checkfile" then
								checkfile  = v
							elseif string.lower(i) == "imagelink" then
								imagelink = v
							elseif string.lower(i) == "volume" then
								volume = v
							elseif string.lower(i) == "imagecolor" then
								imagecolor = v
							elseif string.lower(i) == "description" then
								description = v
							elseif string.lower(i) == "stroke" then
								stroke = v
							end
						end

						local Image = Instance.new("Frame")
						local UICorner = Instance.new("UICorner")
						local ImageTitle = Instance.new("TextLabel")
						local ImageButton = Instance.new("TextButton")
						local Arrow = Instance.new("ImageButton")
						local ImageFrame = Instance.new("Frame")
						local UICorner_2 = Instance.new("UICorner")
						local UICorner_3 = Instance.new("UICorner")
						local UIStroke = Instance.new("UIStroke")
						local UIListLayout = Instance.new("UIListLayout")
						local ImageListing = Instance.new("Frame")
						local UIListLayout_2 = Instance.new("UIListLayout")
						local ButtonTitle = Instance.new("TextLabel")

						Image.Name = "Image"
						Image.Parent = Container
						Image.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Image.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						Image.BorderSizePixel = 0
						Image.Position = UDim2.new(0.0196560193, 0, 0.748526514, 0)
						Image.Size = UDim2.new(0, 391, 0, 44)

						UICorner.CornerRadius = UDim.new(0, 6)
						UICorner.Parent = Image

						ImageTitle.Name = "ImageTitle"
						ImageTitle.Parent = Image
						ImageTitle.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						ImageTitle.BackgroundTransparency = 1.000
						ImageTitle.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						ImageTitle.BorderSizePixel = 0
						ImageTitle.Position = UDim2.new(0.0306905378, 0, 0.275297672, 0)
						ImageTitle.Size = UDim2.new(0, 121, 0, 22)
						ImageTitle.Font = Enum.Font.GothamBold
						ImageTitle.Text = title
						ImageTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						ImageTitle.TextSize = 15.000
						ImageTitle.TextXAlignment = Enum.TextXAlignment.Left

						ImageButton.Name = "ImageButton"
						ImageButton.Parent = Image
						ImageButton.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						ImageButton.BackgroundTransparency = 1.000
						ImageButton.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						ImageButton.BorderSizePixel = 0
						ImageButton.Size = UDim2.new(0, 391, 0, 44)
						ImageButton.Font = Enum.Font.SourceSans
						ImageButton.Text = ""
						ImageButton.TextColor3 = Color3.fromRGB(0, 0, 0)
						ImageButton.TextSize = 14.000
						ImageButton.AutoButtonColor = false

						Arrow.Name = "Arrow"
						Arrow.Parent = Image
						Arrow.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Arrow.BackgroundTransparency = 1.000
						Arrow.Position = UDim2.new(0.913561523, 0, 0.211111104, 0)
						Arrow.Size = UDim2.new(0, 26, 0, 27)
						Arrow.Image = "rbxassetid://6034818372"
						Arrow.ImageColor3 = HawkLib.Themes[Theme].ItemTitleColors

						ImageFrame.Name = "ImageFrame"
						ImageFrame.Parent = Container
						ImageFrame.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						ImageFrame.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						ImageFrame.BackgroundTransparency = 0.2
						ImageFrame.BorderSizePixel = 0
						ImageFrame.Position = UDim2.new(0.00175316073, 0, 1.71075165, 0)
						ImageFrame.Size = UDim2.new(0, 391, 0, 0)
						ImageFrame.Visible = false

						UICorner_2.CornerRadius = UDim.new(0, 6)
						UICorner_2.Parent = ImageFrame

						if string.find(imagelink, "rbxassetid") then
							local ImageLabel = Instance.new("ImageLabel")
							ImageLabel.Parent = ImageFrame
							ImageLabel.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
							ImageLabel.BackgroundTransparency = 1.000
							ImageLabel.BorderColor3 = HawkLib.Themes[Theme].ItemColors
							ImageLabel.BorderSizePixel = 0
							ImageLabel.Position = UDim2.new(0, 0, 0.0250000004, 0)
							ImageLabel.Size = UDim2.new(0, 97, 0, 95)
							ImageLabel.ImageColor3 = imagecolor
							ImageLabel.ImageTransparency = 1
							ImageLabel.Image = imagelink

							UICorner_3.Parent = ImageLabel

							UIStroke.Parent = ImageLabel
							UIStroke.Color = stroke
							UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
							UIStroke.Transparency = 1
						elseif string.find(imagelink, "https") then			
							if checkfile ~= nil then
								if checkfile == false then
									writefile(tostring(writeinto).."\\"..tostring(filename), game:HttpGet(tostring(imagelink),true))	
								else	if checkfile == true then		
										if not isfile(tostring(writeinto).."\\"..tostring(filename)) then
											writefile(tostring(writeinto).."\\"..tostring(filename), game:HttpGet(tostring(imagelink),true))					
										end									
									end			
								end		
							end

							local getasset = getcustomasset or getsynasset
							local VideoLabel = Instance.new("VideoFrame")
							VideoLabel.Parent = ImageFrame
							VideoLabel.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
							VideoLabel.BackgroundTransparency = 1.000
							VideoLabel.BorderColor3 = HawkLib.Themes[Theme].ItemColors
							VideoLabel.BorderSizePixel = 0
							VideoLabel.Position = UDim2.new(0, 0, 0.0250000004, 0)
							VideoLabel.Size = UDim2.new(0, 97, 0, 95)
							VideoLabel.Video = getasset(writeinto.."\\"..filename)
							VideoLabel.Volume = tonumber(volume)
							VideoLabel.Looped = true
							VideoLabel.Playing = false

							UICorner_3.Parent = VideoLabel

							UIStroke.Parent = VideoLabel
							UIStroke.Color = stroke
							UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
							UIStroke.Transparency = 1
						else
							local ImageLabel = Instance.new("ImageLabel")
							ImageLabel.Parent = ImageFrame
							ImageLabel.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
							ImageLabel.BackgroundTransparency = 1.000
							ImageLabel.BorderColor3 = HawkLib.Themes[Theme].ItemColors
							ImageLabel.BorderSizePixel = 0
							ImageLabel.Position = UDim2.new(0, 0, 0.0250000004, 0)
							ImageLabel.Size = UDim2.new(0, 97, 0, 95)
							ImageLabel.ImageColor3 = imagecolor
							ImageLabel.ImageTransparency = 1
							ImageLabel.Image = "rbxassetid://"..imagelink

							UICorner_3.Parent = ImageLabel

							UIStroke.Parent = ImageLabel
							UIStroke.Color = stroke
							UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
							UIStroke.Transparency = 1
						end

						local function activate()
							for i, v in pairs(ImageFrame:GetChildren()) do
								if v:IsA("ImageLabel") then
									TweenService:Create(
										v,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{ImageTransparency = 0}
									):Play()
								elseif v:IsA("VideoFrame") then
									TweenService:Create(
										v,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{BackgroundTransparency = 0}
									):Play()
									v.Playing = true
								end
							end
						end

						local function disable()
							for i, v in pairs(ImageFrame:GetChildren()) do
								if v:IsA("ImageLabel") then
									TweenService:Create(
										v,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{ImageTransparency = 1}
									):Play()
								elseif v:IsA("VideoFrame") then
									TweenService:Create(
										v,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{BackgroundTransparency = 1}
									):Play()
									v.Playing = false
								end
							end
						end

						UIListLayout.Parent = ImageFrame
						UIListLayout.FillDirection = Enum.FillDirection.Horizontal
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
						UIListLayout.Padding = UDim.new(0, 30)

						ImageListing.Name = "ImageListing"
						ImageListing.Parent = ImageFrame
						ImageListing.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						ImageListing.BackgroundTransparency = 1.000
						ImageListing.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						ImageListing.BorderSizePixel = 0
						ImageListing.Position = UDim2.new(0.312020451, 0, 0, 0)
						ImageListing.Size = UDim2.new(0, 104, 0, 100)

						UIListLayout_2.Parent = ImageListing
						UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

						ButtonTitle.Name = "ButtonTitle"
						ButtonTitle.Parent = ImageListing
						ButtonTitle.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						ButtonTitle.BackgroundTransparency = 1.000
						ButtonTitle.BorderColor3 = HawkLib.Themes[Theme].ItemColors
						ButtonTitle.BorderSizePixel = 0
						ButtonTitle.Size = UDim2.new(0, 379, 0, 17)
						ButtonTitle.Font = Enum.Font.GothamBold
						ButtonTitle.Text = name
						ButtonTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
						ButtonTitle.TextSize = 15.000
						ButtonTitle.TextTransparency = 1
						ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()
						for i, v in next, description do
							local ButtonText = Instance.new("TextLabel")
							ButtonText.Name = "ButtonText"
							ButtonText.Parent = ImageListing
							ButtonText.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
							ButtonText.BackgroundTransparency = 1.000
							ButtonText.BorderColor3 = HawkLib.Themes[Theme].ItemColors
							ButtonText.BorderSizePixel = 0
							ButtonText.Position = UDim2.new(0, 0, 0.170000002, 0)
							ButtonText.Size = UDim2.new(0, 379, 0, 17)
							ButtonText.Font = Enum.Font.Gotham
							ButtonText.Text = v
							ButtonText.TextTransparency = 1
							ButtonText.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
							ButtonText.TextSize = 15.000
							ButtonText.TextXAlignment = Enum.TextXAlignment.Left			

							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
						end

						Image.MouseEnter:Connect(
							function()
								TweenService:Create(
									Image,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
								):Play()
							end
						)
						Image.MouseLeave:Connect(
							function()
								TweenService:Create(
									Image,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
								):Play()
							end
						)

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()
						ImageButton.MouseButton1Click:Connect(
							function()
								if ImageToggled == false then
									ImageFrame.Visible = true
									ImageFrame:TweenSize(
										UDim2.new(0, 391, 0, 100),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)
									activate()
									TweenService:Create(
										UIStroke,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{Transparency = 0}
									):Play()
									TweenService:Create(
										ButtonTitle,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{TextTransparency = 0}
									):Play()
									for i, v in pairs(ImageListing:GetChildren()) do
										if v.Name == "ButtonText" then
											TweenService:Create(
												v,
												TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
												{TextTransparency = 0}
											):Play()	
										end
									end
									TweenService:Create(
										Arrow,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{Rotation = 180}
									):Play()
									TweenService:Create(
										Page,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
									):Play()
									repeat
										wait()
										TweenService:Create(
											Page,
											TweenInfo.new(.2, Enum.EasingStyle.Quad),
											{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
										):Play()
									until ImageFrame.Size == UDim2.new(0, 391, 0, 100)
								else							
									disable()
									TweenService:Create(
										UIStroke,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{Transparency = 1}
									):Play()
									TweenService:Create(
										ButtonTitle,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{TextTransparency = 1}
									):Play()
									for i, v in pairs(ImageListing:GetChildren()) do
										if v.Name == "ButtonText" then
											TweenService:Create(
												v,
												TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
												{TextTransparency = 1}
											):Play()	
										end
									end
									ImageFrame:TweenSize(
										UDim2.new(0, 391, 0, 0),
										Enum.EasingDirection.Out,
										Enum.EasingStyle.Quart,
										0.1,
										true
									)
									TweenService:Create(
										Arrow,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{Rotation = 0}
									):Play()
									ImageFrame.Visible = false
									TweenService:Create(
										Page,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
									):Play()
									repeat
										wait()
										TweenService:Create(
											Page,
											TweenInfo.new(.2, Enum.EasingStyle.Quad),
											{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
										):Play()
									until ImageFrame.Size == UDim2.new(0, 391, 0, 0)
								end
								ImageToggled = not ImageToggled
							end
						)		

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()
					end

					return SectionItems

				end
			end	

			function ContainerItems:Label(title, description)
				local explainin = description

				local Label = Instance.new("Frame")
				local UICorner_7 = Instance.new("UICorner")
				local LabelListing = Instance.new("Frame")
				local UIListLayout_5 = Instance.new("UIListLayout")
				local LabelMainText = Instance.new("TextLabel")
				local LabelText = Instance.new("TextLabel")

				Label.Name = "Label"
				Label.Parent = Container
				Label.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Label.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0, 0, 0.602941155, 0)

				UICorner_7.CornerRadius = UDim.new(0, 6)
				UICorner_7.Parent = Label

				LabelListing.Name = "LabelListing"
				LabelListing.Parent = Label
				LabelListing.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				LabelListing.BackgroundTransparency = 1.000
				LabelListing.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				LabelListing.BorderSizePixel = 0
				LabelListing.Position = UDim2.new(0.0306905378, 0, 0.17634055, 0)
				LabelListing.Size = UDim2.new(0, 372, 0, 32)

				UIListLayout_5.Parent = LabelListing
				UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder

				LabelMainText.Name = "LabelMainText"
				LabelMainText.Parent = LabelListing
				LabelMainText.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				LabelMainText.BackgroundTransparency = 1.000
				LabelMainText.BorderColor3 = Color3.fromRGB(43, 43, 41)
				LabelMainText.BorderSizePixel = 0
				LabelMainText.Font = Enum.Font.GothamBold
				LabelMainText.Text = title
				LabelMainText.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				LabelMainText.TextSize = 15.000
				LabelMainText.TextXAlignment = Enum.TextXAlignment.Left

				LabelText.Name = "LabelText"
				LabelText.Parent = LabelListing
				LabelText.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				LabelText.BackgroundTransparency = 1.000
				LabelText.BorderColor3 = Color3.fromRGB(43, 43, 41)
				LabelText.BorderSizePixel = 0
				LabelText.Position = UDim2.new(0, 0, 0.170000002, 0)
				LabelText.Font = Enum.Font.Gotham
				LabelText.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
				LabelText.TextSize = 15.000
				LabelText.TextXAlignment = Enum.TextXAlignment.Left

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()

				if explainin ~= nil then
					LabelMainText.Size = UDim2.new(0, 379, 0, 17)
					LabelText.Size = UDim2.new(0, 379, 0, 17)
					Label.Size = UDim2.new(0, 391, 0, 55)
					LabelText.Text = description
				elseif explainin == nil then
					LabelText:Destroy()
					LabelMainText.Size = UDim2.new(0, 379, 0, 23)
					Label.Size = UDim2.new(0, 391, 0, 40)
				end

				local apdeyt = {}
				function apdeyt:UpdateLabel(test, descriptio)
					local newdescription = descriptio

					if newdescription ~= nil then
						LabelMainText.Text = test
						LabelText.Text = newdescription
					else
						LabelMainText.Text = test
					end

					TweenService:Create(
						Page,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
					):Play()
				end
				return apdeyt
			end

			function ContainerItems:Button(yazi, description, callback)
				local check = description
				callback = callback or function()
				end

				local buttoncheck = {

				}


				local Button = Instance.new("Frame")
				local UICorner_8 = Instance.new("UICorner")
				local ButtonListing = Instance.new("Frame")
				local UIListLayout_6 = Instance.new("UIListLayout")
				local ButtonTitle = Instance.new("TextLabel")
				local ButtonText = Instance.new("TextLabel")
				local ButtonClick = Instance.new("TextButton")
				local ClickIcon = Instance.new("ImageLabel")

				Button.Name = "Button"
				Button.Parent = Container
				Button.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Button.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				Button.BorderSizePixel = 0
				Button.Position = UDim2.new(0, 0, 0.602941155, 0)

				UICorner_8.CornerRadius = UDim.new(0, 6)
				UICorner_8.Parent = Button

				ButtonListing.Name = "ButtonListing"
				ButtonListing.Parent = Button
				ButtonListing.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				ButtonListing.BackgroundTransparency = 1.000
				ButtonListing.BorderColor3 = Color3.fromRGB(43, 43, 41)
				ButtonListing.BorderSizePixel = 0
				ButtonListing.Position = UDim2.new(0.0306905378, 0, 0.17634055, 0)
				ButtonListing.Size = UDim2.new(0, 372, 0, 32)

				UIListLayout_6.Parent = ButtonListing
				UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder

				ButtonTitle.Name = "ButtonTitle"
				ButtonTitle.Parent = ButtonListing
				ButtonTitle.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				ButtonTitle.BackgroundTransparency = 1.000
				ButtonTitle.BorderColor3 = Color3.fromRGB(43, 43, 41)
				ButtonTitle.BorderSizePixel = 0
				ButtonTitle.Size = UDim2.new(0, 379, 0, 17)
				ButtonTitle.Font = Enum.Font.GothamBold
				ButtonTitle.Text = yazi
				ButtonTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				ButtonTitle.TextSize = 15.000
				ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left

				ButtonText.Name = "ButtonText"
				ButtonText.Parent = ButtonListing
				ButtonText.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				ButtonText.BackgroundTransparency = 1.000
				ButtonText.BorderColor3 = Color3.fromRGB(43, 43, 41)
				ButtonText.BorderSizePixel = 0
				ButtonText.Position = UDim2.new(0, 0, 0.170000002, 0)
				ButtonText.Size = UDim2.new(0, 379, 0, 17)
				ButtonText.Font = Enum.Font.Gotham
				ButtonText.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
				ButtonText.TextSize = 15.000
				ButtonText.TextXAlignment = Enum.TextXAlignment.Left

				ButtonClick.Name = "ButtonClick"
				ButtonClick.Parent = Button
				ButtonClick.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				ButtonClick.BackgroundTransparency = 1.000
				ButtonClick.BorderColor3 = Color3.fromRGB(35, 35, 35)
				ButtonClick.BorderSizePixel = 0
				ButtonClick.Size = UDim2.new(0, 391, 0, 55)
				ButtonClick.Font = Enum.Font.SourceSans
				ButtonClick.Text = ""
				ButtonClick.TextColor3 = Color3.fromRGB(0, 0, 0)
				ButtonClick.TextSize = 1.000
				ButtonClick.TextTransparency = 1.000
				ButtonClick.AutoButtonColor = false

				ClickIcon.Name = "ClickIcon"
				ClickIcon.Parent = Button
				ClickIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ClickIcon.BackgroundTransparency = 1.000
				ClickIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ClickIcon.BorderSizePixel = 0
				ClickIcon.Size = UDim2.new(0, 33, 0, 33)
				ClickIcon.Image = "rbxassetid://13570069771"
				ClickIcon.ImageColor3 = HawkLib.Themes[Theme].ButtonClickIconColor

				Button.MouseEnter:Connect(
					function()
						TweenService:Create(
							Button,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
						):Play()
					end
				)
				Button.MouseLeave:Connect(
					function()
						TweenService:Create(
							Button,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
						):Play()
					end
				)

				local buttonanim;

				if check ~= nil and not tostring(check):match("function") then
					ButtonTitle.Size = UDim2.new(0, 379, 0, 17)
					ButtonText.Size = UDim2.new(0, 379, 0, 17)
					Button.Size = UDim2.new(0, 391, 0, 55)
					ButtonText.Text = tostring(description)
					ClickIcon.Position = UDim2.new(0.898, 0,0.176, 0)
					buttonanim = Button.AbsoluteSize.Y
					table.insert(buttoncheck, callback)
				elseif tostring(check):match("function") then
					table.insert(buttoncheck, description)
					ButtonText:Destroy()
					ButtonTitle.Size = UDim2.new(0, 379, 0, 32)
					Button.Size = UDim2.new(0, 391, 0, 44)
					ClickIcon.Position = UDim2.new(0.89, 0,0.11, 0)
					buttonanim = Button.AbsoluteSize.Y
				end

				ButtonClick.MouseButton1Click:Connect(
					function()
						TweenService:Create(
							Button,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{Size = UDim2.new(0, 375,0, buttonanim)}
						):Play()
						wait()
						TweenService:Create(
							Button,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{Size = UDim2.new(0, 391,0, buttonanim)}
						):Play()
						pcall(buttoncheck[1])
					end
				)
				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()

				local update = {}
				function update:UpdateButton(test, newdesc, kalbak)
					newdescriptwion = newdesc
					zort = kalbak
					kalbak = kalbak or function() end

					if tostring(newdescriptwion):match("function") then
						table.clear(buttoncheck)
						wait()
						table.insert(buttoncheck, newdescriptwion)
						ButtonText.TextTransparency = 1
						ButtonTitle.Size = UDim2.new(0, 379, 0, 32)
						Button.Size = UDim2.new(0, 391, 0, 44)
						ClickIcon.Position = UDim2.new(0.89, 0,0.11, 0)
						buttonanim = Button.AbsoluteSize.Y
					elseif tostring(zort):match("function") then
						table.clear(buttoncheck)
						wait()
						table.insert(buttoncheck, zort)
						ButtonText.TextTransparency = 0
						ButtonTitle.Size = UDim2.new(0, 379, 0, 17)
						ButtonText.Size = UDim2.new(0, 379, 0, 17)
						Button.Size = UDim2.new(0, 391, 0, 55)
						ButtonText.Text = tostring(newdescriptwion)
						ButtonTitle.Text = test
						ClickIcon.Position = UDim2.new(0.898, 0,0.176, 0)
						buttonanim = Button.AbsoluteSize.Y
					end

					ButtonTitle.Text = test
					TweenService:Create(
						Page,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
					):Play()
				end
				return update
			end

			function ContainerItems:Paragraph(pharagraphtitle, description)
				local desc = description or {}

				local Pharagraph = Instance.new("Frame")
				local UICorner_9 = Instance.new("UICorner")
				local PharagraphListing = Instance.new("Frame")
				local PharagraphTitle = Instance.new("TextLabel")
				local ParagraphLayout = Instance.new("UIListLayout")

				Pharagraph.Name = "Pharagraph"
				Pharagraph.Parent = Container
				Pharagraph.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Pharagraph.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				Pharagraph.BorderSizePixel = 0
				Pharagraph.Position = UDim2.new(0.0196560193, 0, 0.333988219, 0)

				UICorner_9.CornerRadius = UDim.new(0, 6)
				UICorner_9.Parent = Pharagraph

				PharagraphListing.Name = "PharagraphListing"
				PharagraphListing.Parent = Pharagraph
				PharagraphListing.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				PharagraphListing.BackgroundTransparency = 1.000
				PharagraphListing.BorderColor3 = Color3.fromRGB(43, 43, 41)
				PharagraphListing.BorderSizePixel = 0

				PharagraphTitle.Name = "PharagraphTitle"
				PharagraphTitle.Parent = PharagraphListing
				PharagraphTitle.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				PharagraphTitle.BackgroundTransparency = 1.000
				PharagraphTitle.BorderColor3 = Color3.fromRGB(43, 43, 41)
				PharagraphTitle.BorderSizePixel = 0
				PharagraphTitle.Size = UDim2.new(0, 379, 0, 17)
				PharagraphTitle.Font = Enum.Font.GothamBold
				PharagraphTitle.Text = pharagraphtitle
				PharagraphTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				PharagraphTitle.TextSize = 15.000
				PharagraphTitle.TextXAlignment = Enum.TextXAlignment.Left

				ParagraphLayout.Parent = PharagraphListing
				ParagraphLayout.SortOrder = Enum.SortOrder.LayoutOrder
				ParagraphLayout.Padding = UDim.new(0, 2)

				local paragraphtable = {}
				for i, v in pairs(desc) do
					table.insert(paragraphtable, v)

					local PharagraphText = Instance.new("TextLabel")
					PharagraphText.Name = "PharagraphText"
					PharagraphText.Parent = PharagraphListing
					PharagraphText.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
					PharagraphText.BackgroundTransparency = 1.000
					PharagraphText.BorderColor3 = Color3.fromRGB(43, 43, 41)
					PharagraphText.BorderSizePixel = 0
					PharagraphText.ClipsDescendants = true
					PharagraphText.Position = UDim2.new(0, 0, 0.177083328, 0)
					PharagraphText.Size = UDim2.new(0, 372, 0, 15)
					PharagraphText.Font = Enum.Font.Gotham
					PharagraphText.Text = v
					PharagraphText.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
					PharagraphText.TextSize = 15.000
					PharagraphText.TextWrapped = true
					PharagraphText.TextXAlignment = Enum.TextXAlignment.Left
					PharagraphText.TextYAlignment = Enum.TextYAlignment.Top

					TweenService:Create(
						Page,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
					):Play()
				end

				local fullparagraph = #paragraphtable
				if fullparagraph == 1 then
					Pharagraph.Size = UDim2.new(0, 391, 0, 50)
					PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.15, 0)
					PharagraphListing.Size = UDim2.new(0, 372, 0, 40)
				elseif fullparagraph == 2 then
					Pharagraph.Size = UDim2.new(0, 391, 0, 70)
					PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.13, 0)
					PharagraphListing.Size = UDim2.new(0, 372, 0, 50)
				elseif fullparagraph == 3 then
					Pharagraph.Size = UDim2.new(0, 391, 0, 85)
					PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.10, 0)
					PharagraphListing.Size = UDim2.new(0, 372, 0, 60)
				elseif fullparagraph == 4 then
					Pharagraph.Size = UDim2.new(0, 391, 0, 100)
					PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.09, 0)
					PharagraphListing.Size = UDim2.new(0, 372, 0, 60)
				elseif fullparagraph == 5 then
					Pharagraph.Size = UDim2.new(0, 391, 0, 120)
					PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.06, 0)
					PharagraphListing.Size = UDim2.new(0, 372, 0, 60)	
				elseif fullparagraph > 5 then
					PharagraphListing.Position = UDim2.new(0.0306905378, 0, 0.06, 0)
					Pharagraph.Size = UDim2.new(0, 391, 0, ParagraphLayout.AbsoluteContentSize.Y+20)
				end

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()
			end

			function ContainerItems:Slider(Text, minvalue, maxvalue, callback)
				minvalue = tonumber(minvalue)
				maxvalue = tonumber(maxvalue)

				callback = callback or function()
				end

				local mouse = game.Players.LocalPlayer:GetMouse()
				local uis = game:GetService("UserInputService")

				local Slider = Instance.new("Frame")
				local UICorner_10 = Instance.new("UICorner")
				local SliderListing = Instance.new("Frame")
				local SliderTitle = Instance.new("TextLabel")
				local UIListLayout_7 = Instance.new("UIListLayout")
				local SliderButtonFrame = Instance.new("Frame")
				local SliderButton = Instance.new("TextButton")
				local UICorner_11 = Instance.new("UICorner")
				local UICorner_12 = Instance.new("UICorner")
				local UIStroke_2 = Instance.new("UIStroke")
				local InSliderFrame = Instance.new("Frame")
				local UICorner_13 = Instance.new("UICorner")
				local UIGradient = Instance.new("UIGradient")
				local UIStroke_3 = Instance.new("UIStroke")
				local Num = Instance.new("TextLabel")
				local SliderFixer = Instance.new("ScrollingFrame")

				Slider.Name = "Slider"
				Slider.Parent = Container
				Slider.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Slider.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				Slider.BorderSizePixel = 0
				Slider.Position = UDim2.new(0.0196560193, 0, 0.569744587, 0)
				Slider.Size = UDim2.new(0, 391, 0, 83)

				UICorner_10.CornerRadius = UDim.new(0, 6)
				UICorner_10.Parent = Slider

				SliderListing.Name = "SliderListing"
				SliderListing.Parent = Slider
				SliderListing.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				SliderListing.BackgroundTransparency = 1.000
				SliderListing.BorderColor3 = Color3.fromRGB(43, 43, 41)
				SliderListing.BorderSizePixel = 0
				SliderListing.Position = UDim2.new(0.0306905378, 0, 0.17634055, 0)
				SliderListing.Size = UDim2.new(0, 372, 0, 32)

				SliderTitle.Name = "SliderTitle"
				SliderTitle.Parent = SliderListing
				SliderTitle.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				SliderTitle.BackgroundTransparency = 1.000
				SliderTitle.BorderColor3 = Color3.fromRGB(43, 43, 41)
				SliderTitle.BorderSizePixel = 0
				SliderTitle.Size = UDim2.new(0, 379, 0, 17)
				SliderTitle.Font = Enum.Font.GothamBold
				SliderTitle.Text = Text
				SliderTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				SliderTitle.TextSize = 15.000
				SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

				UIListLayout_7.Parent = SliderListing
				UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_7.Padding = UDim.new(0, 8)

				SliderButtonFrame.Name = "SliderButtonFrame"
				SliderButtonFrame.Parent = SliderListing
				SliderButtonFrame.BackgroundColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
				SliderButtonFrame.BorderColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
				SliderButtonFrame.BorderSizePixel = 0
				SliderButtonFrame.Position = UDim2.new(0.0309999995, 0, 0.486000001, 0)
				SliderButtonFrame.Size = UDim2.new(0.992, 0,1, 0)

				SliderButton.Name = "SliderButton"
				SliderButton.Parent = SliderButtonFrame
				SliderButton.BackgroundColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
				SliderButton.BackgroundTransparency = 1.000
				SliderButton.BorderColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
				SliderButton.BorderSizePixel = 0
				SliderButton.Size = UDim2.new(1, 0,1, 0)
				SliderButton.Font = Enum.Font.SourceSans
				SliderButton.Text = ""
				SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				SliderButton.TextSize = 14.000
				SliderButton.AutoButtonColor = false

				UICorner_11.CornerRadius = UDim.new(0, 6)
				UICorner_11.Parent = SliderButton

				UICorner_12.CornerRadius = UDim.new(0, 6)
				UICorner_12.Parent = SliderButtonFrame

				UIStroke_2.Parent = SliderButtonFrame
				UIStroke_2.Color = Color3.fromRGB(47, 102, 145)			

				SliderFixer.Name = "SliderFixer"
				SliderFixer.Parent = SliderButtonFrame
				SliderFixer.Active = true
				SliderFixer.BackgroundColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
				SliderFixer.BackgroundTransparency = 1.000
				SliderFixer.BorderColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
				SliderFixer.BorderSizePixel = 0
				SliderFixer.Size = UDim2.new(1, 0, 1, 0)
				SliderFixer.ScrollBarImageColor3 = HawkLib.Themes[Theme].SliderButtonFrameColor
				SliderFixer.CanvasSize = UDim2.new(0, 0, 0, 0)
				SliderFixer.ScrollBarThickness = 0

				InSliderFrame.Name = "InSliderFrame"
				InSliderFrame.Parent = SliderFixer
				InSliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				InSliderFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
				InSliderFrame.BorderSizePixel = 0
				InSliderFrame.Position = UDim2.new(-0.00270986161, 0, 0, 0)
				InSliderFrame.Size = UDim2.new(0, 0,0, 32)

				UICorner_13.CornerRadius = UDim.new(0, 6)
				UICorner_13.Parent = InSliderFrame

				UIGradient.Color = HawkLib.Themes[Theme].InSliderFrame
				UIGradient.Rotation = 90
				UIGradient.Parent = InSliderFrame

				UIStroke_3.Parent = InSliderFrame
				UIStroke_3.Color = Color3.fromRGB(47, 102, 145)

				Num.Name = "Num"
				Num.Parent = SliderButtonFrame
				Num.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Num.BackgroundTransparency = 1.000
				Num.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Num.BorderSizePixel = 0
				Num.Position = UDim2.new(0.0322580636, 0, 0, 0)
				Num.Size = UDim2.new(0, 66, 0, 32)
				Num.Font = Enum.Font.Gotham
				Num.TextColor3 = HawkLib.Themes[Theme].NumColor
				Num.TextSize = 14.000
				Num.TextXAlignment = Enum.TextXAlignment.Left
				Num.Text = minvalue
				Num.ZIndex = 3

				Slider.MouseEnter:Connect(
					function()
						TweenService:Create(
							Slider,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
						):Play()
					end
				)
				Slider.MouseLeave:Connect(
					function()
						TweenService:Create(
							Slider,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
						):Play()
					end
				)

				if OnPc then
					local mouse = game.Players.LocalPlayer:GetMouse()
					local uis = game:GetService("UserInputService")
					local Value;

					SliderButton.MouseButton1Down:Connect(function()
						Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 371) * InSliderFrame.AbsoluteSize.X) + tonumber(minvalue)) or 0
						Num.Text = Value
						pcall(function()
							callback(Value)
						end)
						InSliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - InSliderFrame.AbsolutePosition.X, 0, 371), 0, 32), "In", "Quad", 0.09)

						moveconnection = mouse.Move:Connect(function()
							Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 371) * InSliderFrame.AbsoluteSize.X) + tonumber(minvalue))
							Num.Text = Value
							pcall(function()
								callback(Value)
							end)

							InSliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - InSliderFrame.AbsolutePosition.X, 0, 371), 0, 32), "In", "Quad", 0.09)				
						end)
						releaseconnection = uis.InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 371) * InSliderFrame.AbsoluteSize.X) + tonumber(minvalue))
								Num.Text = Value
								pcall(function()
									callback(Value)
								end)
								InSliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - InSliderFrame.AbsolutePosition.X, 0, 371), 0, 32), "In", "Quad", 0.09)
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)						
					end)

					TweenService:Create(
						Page,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
					):Play()
				elseif OnMobile or OnTabletLaptop then

					local mouse = game.Players.LocalPlayer:GetMouse()
					local uis = game:GetService("UserInputService")
					local Value;

					SliderButton.MouseButton1Down:Connect(function()
						Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 371) * InSliderFrame.AbsoluteSize.X) + tonumber(minvalue)) or 0
						pcall(function()
							callback(Value)
						end)
						Num.Text = Value
						InSliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - InSliderFrame.AbsolutePosition.X, 0, 371), 0, 32), "In", "Quad", 0.05, true)					
					end)

					TweenService:Create(
						Page,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
					):Play()
				end
				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()
				local slid = {}
				function slid:SetValue(dodoj)	
					if dodoj == nil then
						local percentage = math.clamp((Mouse.X - InSliderFrame.AbsolutePosition.X) / (InSliderFrame.AbsoluteSize.X), 0, 1)
						local value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 371) * percentage) + tonumber(minvalue))

						Num.Text = tostring(dodoj)
						InSliderFrame.Size = UDim2.fromScale(percentage, 1)
						pcall(function()
							callback(dodoj)
						end)
					else
						Num.Text = tostring(dodoj)
						InSliderFrame.Size = UDim2.fromScale(((dodoj - tonumber(minvalue)) / (tonumber(maxvalue) - tonumber(minvalue))), 1)
						pcall(function()
							callback(dodoj)
						end)
					end
				end		

				function slid:GetValue()
					return tonumber(Num.Text)
				end				
				return slid
			end

			function ContainerItems:Line()
				local Line = Instance.new("Frame")
				local LineCorner = Instance.new("UICorner")

				Line.Name = "Line"
				Line.Parent = Container
				Line.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Line.BorderColor3 = Color3.fromRGB(43, 43, 41)
				Line.BorderSizePixel = 0
				Line.Position = UDim2.new(0.377149731, 0, 1.22200394, 0)
				Line.Size = UDim2.new(0, 391, 0, 8)

				LineCorner.Parent = Line

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()
			end

			function ContainerItems:ColorPicker(text, preset, callback)
				local ColorPickerToggled = false
				local OldToggleColor = Color3.fromRGB(0, 0, 0)
				local OldColor = Color3.fromRGB(0, 0, 0)
				local OldColorSelectionPosition = nil
				local OldHueSelectionPosition = nil
				local ColorH, ColorS, ColorV = 1, 1, 1
				local RainbowColorPicker = false
				local ColorPickerInput = nil
				local ColorInput = nil
				local HueInput = nil

				local Colorpicker = Instance.new("TextButton")
				local Title = Instance.new("TextLabel")
				local BoxColor = Instance.new("Frame")
				local BoxcolorCorner = Instance.new("UICorner")
				local ColorpickerCorner = Instance.new("UICorner")

				Colorpicker.Name = "Colorpicker"
				Colorpicker.Parent = Container
				Colorpicker.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Colorpicker.Position = UDim2.new(0,0,0,0)
				Colorpicker.Size = UDim2.new(0, 391, 0, 36)
				Colorpicker.AutoButtonColor = false
				Colorpicker.Font = Enum.Font.Gotham
				Colorpicker.Text = ""
				Colorpicker.TextColor3 = Color3.fromRGB(255, 255, 255)
				Colorpicker.TextSize = 14.000

				Title.Name = "Title"
				Title.Parent = Colorpicker
				Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
				Title.Size = UDim2.new(0, 391, 0, 36)
				Title.Text = text
				Title.Font = Enum.Font.GothamBold
				Title.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				Title.TextSize = 15.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				BoxColor.Name = "Boxcolor"
				BoxColor.Parent = Colorpicker
				BoxColor.BackgroundColor3 = preset
				BoxColor.Position = UDim2.new(0.88, 0, 0.24, 0)
				BoxColor.Size = UDim2.new(0, 36, 0, 19)

				BoxcolorCorner.CornerRadius = UDim.new(0, 6)
				BoxcolorCorner.Name = "BoxcolorCorner"
				BoxcolorCorner.Parent = BoxColor

				ColorpickerCorner.CornerRadius = UDim.new(0, 4)
				ColorpickerCorner.Name = "ColorpickerCorner"
				ColorpickerCorner.Parent = Colorpicker

				local ColorpickerFrame = Instance.new("Frame")
				local DropdownFrameCorner = Instance.new("UICorner")
				local Hue = Instance.new("ImageLabel")
				local HueCorner = Instance.new("UICorner")
				local HueGradient = Instance.new("UIGradient")
				local HueSelection = Instance.new("ImageLabel")
				local Color = Instance.new("ImageLabel")
				local ColorCorner = Instance.new("UICorner")
				local ColorSelection = Instance.new("ImageLabel")
				local Confirm = Instance.new("TextButton")
				local ButtonCorner = Instance.new("UICorner")
				local RainbowToggle = Instance.new("TextButton")
				local RainbowToggleCorner = Instance.new("UICorner")
				local RainbowTitle = Instance.new("TextLabel")
				local RainbowToggleFrame = Instance.new("Frame")
				local RainbowToggleFrameCorner = Instance.new("UICorner")
				local RainbowToggleFrameRainbow = Instance.new("Frame")
				local RainbowToggleFrameRainbowCorner = Instance.new("UICorner")
				local RainbowToggleDot = Instance.new("Frame")
				local RainbowToggleDotCorner = Instance.new("UICorner")

				ColorpickerFrame.Name = "ColorpickerFrame"
				ColorpickerFrame.Parent = Container
				ColorpickerFrame.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				ColorpickerFrame.BackgroundTransparency = 0.2
				ColorpickerFrame.BorderSizePixel = 0
				ColorpickerFrame.Position = UDim2.new(0, 0, 0, 0)
				ColorpickerFrame.Size = UDim2.new(0, 391, 0, 0)
				ColorpickerFrame.Visible = false
				ColorpickerFrame.ClipsDescendants = true

				DropdownFrameCorner.Name = "DropdownFrameCorner"
				DropdownFrameCorner.Parent = ColorpickerFrame

				Hue.Name = "Hue"
				Hue.Parent = ColorpickerFrame
				Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Hue.Position = UDim2.new(0, 209, 0, 9)
				Hue.Size = UDim2.new(0, 25, 0, 80)

				HueCorner.CornerRadius = UDim.new(0, 3)
				HueCorner.Name = "HueCorner"
				HueCorner.Parent = Hue

				HueGradient.Color =
					ColorSequence.new {
						ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)),
						ColorSequenceKeypoint.new(0.20, Color3.fromRGB(234, 255, 0)),
						ColorSequenceKeypoint.new(0.40, Color3.fromRGB(21, 255, 0)),
						ColorSequenceKeypoint.new(0.60, Color3.fromRGB(0, 255, 255)),
						ColorSequenceKeypoint.new(0.80, Color3.fromRGB(0, 17, 255)),
						ColorSequenceKeypoint.new(0.90, Color3.fromRGB(255, 0, 251)),
						ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))
					}
				HueGradient.Rotation = 270
				HueGradient.Name = "HueGradient"
				HueGradient.Parent = Hue

				HueSelection.Name = "HueSelection"
				HueSelection.Parent = Hue
				HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
				HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				HueSelection.BackgroundTransparency = 1.000
				HueSelection.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(preset)))
				HueSelection.Size = UDim2.new(0, 18, 0, 18)
				HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"

				Color.Name = "Color"
				Color.Parent = ColorpickerFrame
				Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
				Color.Position = UDim2.new(0, 9, 0, 9)
				Color.Size = UDim2.new(0, 194, 0, 80)
				Color.ZIndex = 10
				Color.Image = "rbxassetid://4155801252"

				ColorCorner.CornerRadius = UDim.new(0, 3)
				ColorCorner.Name = "ColorCorner"
				ColorCorner.Parent = Color

				ColorSelection.Name = "ColorSelection"
				ColorSelection.Parent = Color
				ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
				ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ColorSelection.BackgroundTransparency = 1.000
				ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
				ColorSelection.Size = UDim2.new(0, 18, 0, 18)
				ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
				ColorSelection.ScaleType = Enum.ScaleType.Fit

				Confirm.Name = "Confirm"
				Confirm.Parent = ColorpickerFrame
				Confirm.BackgroundColor3 = HawkLib.Themes[Theme].TitleBar
				Confirm.BackgroundTransparency = 1
				Confirm.Position = UDim2.new(0.62, 0, 0.0900000036, 0)
				Confirm.Size = UDim2.new(0, 145, 0, 27)
				Confirm.AutoButtonColor = false
				Confirm.Font = Enum.Font.Gotham
				Confirm.Text = "Confirm"
				Confirm.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				Confirm.TextSize = 14.000

				ButtonCorner.Name = "ButtonCorner"
				ButtonCorner.Parent = Confirm

				RainbowToggle.Name = "RainbowToggle"
				RainbowToggle.Parent = ColorpickerFrame
				RainbowToggle.BackgroundColor3 = HawkLib.Themes[Theme].TitleBar
				RainbowToggle.Position = UDim2.new(0.62, 0, 0.431324542, 0)
				RainbowToggle.Size = UDim2.new(0, 145, 0, 27)
				RainbowToggle.AutoButtonColor = false	
				RainbowToggle.BackgroundTransparency = 1
				RainbowToggle.Font = Enum.Font.Gotham
				RainbowToggle.Text = ""
				RainbowToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
				RainbowToggle.TextSize = 14.000

				RainbowToggleCorner.Name = "RainbowToggleCorner"
				RainbowToggleCorner.Parent = RainbowToggle

				RainbowTitle.Name = "RainbowTitle"
				RainbowTitle.Parent = RainbowToggle
				RainbowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				RainbowTitle.BackgroundTransparency = 1.000
				RainbowTitle.Position = UDim2.new(0.1, 0, 0, 0)
				RainbowTitle.Size = UDim2.new(0, 29, 0, 27)
				RainbowTitle.Font = Enum.Font.Gotham
				RainbowTitle.Text = "Rainbow"
				RainbowTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				RainbowTitle.TextSize = 14.000
				RainbowTitle.TextXAlignment = Enum.TextXAlignment.Left

				RainbowToggleFrame.Name = "RainbowToggleFrame"
				RainbowToggleFrame.Parent = RainbowToggle
				RainbowToggleFrame.BackgroundColor3 = HawkLib.Themes[Theme].Main
				RainbowToggleFrame.Position = UDim2.new(0.693, 0, 0.142857149, 0)
				RainbowToggleFrame.Size = UDim2.new(0, 36, 0, 19)

				RainbowToggleFrameCorner.CornerRadius = UDim.new(1, 0)
				RainbowToggleFrameCorner.Name = "RainbowToggleFrameCorner"
				RainbowToggleFrameCorner.Parent = RainbowToggleFrame

				RainbowToggleFrameRainbow.Name = "RainbowToggleFrameRainbow"
				RainbowToggleFrameRainbow.Parent = RainbowToggleFrame
				RainbowToggleFrameRainbow.BackgroundColor3 = Color3.fromRGB(67,136,246)
				RainbowToggleFrameRainbow.BackgroundTransparency = 1.000
				RainbowToggleFrameRainbow.Position = UDim2.new(-0.0198377371, 0, 0.00601506233, 0)
				RainbowToggleFrameRainbow.Size = UDim2.new(0, 36, 0, 19)

				RainbowToggleFrameRainbowCorner.CornerRadius = UDim.new(1, 0)
				RainbowToggleFrameRainbowCorner.Name = "RainbowToggleFrameRainbowCorner"
				RainbowToggleFrameRainbowCorner.Parent = RainbowToggleFrameRainbow

				RainbowToggleDot.Name = "RainbowToggleDot"
				RainbowToggleDot.Parent = RainbowToggleFrameRainbow
				RainbowToggleDot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				RainbowToggleDot.Position = UDim2.new(0.104999997, -3, 0.289000005, -4)
				RainbowToggleDot.Size = UDim2.new(0, 16, 0, 16)

				RainbowToggleDotCorner.CornerRadius = UDim.new(1, 0)
				RainbowToggleDotCorner.Name = "RainbowToggleDotCorner"
				RainbowToggleDotCorner.Parent = RainbowToggleDot

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()

				Colorpicker.MouseEnter:Connect(
					function()
						TweenService:Create(
							Colorpicker,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
						):Play()
					end
				)
				Colorpicker.MouseLeave:Connect(
					function()
						TweenService:Create(
							Colorpicker,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
						):Play()
					end
				)

				local function UpdateColorPicker(nope)
					BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
					Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

					pcall(callback, BoxColor.BackgroundColor3)
				end

				ColorH =
					1 -
					(math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
						Hue.AbsoluteSize.Y)
				ColorS =
					(math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
						Color.AbsoluteSize.X)
				ColorV =
					1 -
					(math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
						Color.AbsoluteSize.Y)

				BoxColor.BackgroundColor3 = preset
				Color.BackgroundColor3 = preset
				pcall(callback, BoxColor.BackgroundColor3)

				Color.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if RainbowColorPicker then
								return
							end

							if ColorInput then
								ColorInput:Disconnect()
							end

							ColorInput =
								RunService.RenderStepped:Connect(
									function()
										local ColorX = (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /Color.AbsoluteSize.X)
										local ColorY = (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /Color.AbsoluteSize.Y)

										ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
										ColorS = ColorX
										ColorV = 1 - ColorY

										UpdateColorPicker(true)
									end
								)
						end
					end
				)

				Color.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if ColorInput then
								ColorInput:Disconnect()
							end
						end
					end
				)

				Hue.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if RainbowColorPicker then
								return
							end

							if HueInput then
								HueInput:Disconnect()
							end

							HueInput =
								RunService.RenderStepped:Connect(
									function()
										local HueY = (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /Hue.AbsoluteSize.Y)

										HueSelection.Position = UDim2.new(0.48, 0, HueY, 0)
										ColorH = 1 - HueY

										UpdateColorPicker(true)
									end
								)
						end
					end
				)

				Hue.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							if HueInput then
								HueInput:Disconnect()
							end
						end
					end
				)

				RainbowToggle.MouseButton1Click:Connect(
					function()
						RainbowColorPicker = not RainbowColorPicker

						if ColorInput then
							ColorInput:Disconnect()
						end

						if HueInput then
							HueInput:Disconnect()
						end

						if RainbowColorPicker then
							TweenService:Create(
								RainbowToggleFrameRainbow,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundTransparency = 0}
							):Play()
							TweenService:Create(
								RainbowToggleDot,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{Position = UDim2.new(0.595, -3, 0.289000005, -4)}
							):Play()

							OldToggleColor = BoxColor.BackgroundColor3
							OldColor = Color.BackgroundColor3
							OldColorSelectionPosition = ColorSelection.Position
							OldHueSelectionPosition = HueSelection.Position

							while RainbowColorPicker do
								BoxColor.BackgroundColor3 = Color3.fromHSV(Strawn.RainbowColorValue, 1, 1)
								Color.BackgroundColor3 = Color3.fromHSV(Strawn.RainbowColorValue, 1, 1)

								ColorSelection.Position = UDim2.new(1, 0, 0, 0)
								HueSelection.Position = UDim2.new(0.48, 0, 0, Strawn.HueSelectionPosition)

								pcall(callback, BoxColor.BackgroundColor3)
								wait()
							end
						elseif not RainbowColorPicker then
							TweenService:Create(
								RainbowToggleFrameRainbow,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundTransparency = 1}
							):Play()
							TweenService:Create(
								RainbowToggleDot,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{Position = UDim2.new(0.104999997, -3, 0.289000005, -4)}
							):Play()

							BoxColor.BackgroundColor3 = OldToggleColor
							Color.BackgroundColor3 = OldColor

							ColorSelection.Position = OldColorSelectionPosition
							HueSelection.Position = OldHueSelectionPosition

							pcall(callback, BoxColor.BackgroundColor3)
						end
					end
				)

				Colorpicker.MouseButton1Click:Connect(
					function()								
						if ColorPickerToggled == false then
							ColorPickerToggled = not ColorPickerToggled
							ColorpickerFrame.Visible = true
							ColorpickerFrame:TweenSize(
								UDim2.new(0, 391, 0, 100),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)

							repeat
								wait()
							until ColorpickerFrame.Size == UDim2.new(0, 391, 0, 100)
							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
						else
							ColorPickerToggled = not ColorPickerToggled

							ColorpickerFrame:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							repeat
								wait()
							until ColorpickerFrame.Size == UDim2.new(0, 391, 0, 0)
							ColorpickerFrame.Visible = false
							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
						end
					end
				)

				Confirm.MouseButton1Click:Connect(
					function()
						ColorPickerToggled = not ColorPickerToggled

						ColorpickerFrame:TweenSize(
							UDim2.new(0, 391, 0, 0),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quart,
							0.1,
							true
						)
						repeat
							wait()
						until ColorpickerFrame.Size == UDim2.new(0, 391, 0, 0)
						ColorpickerFrame.Visible = false
						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()
					end)

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()
			end

			function ContainerItems:KeyBind(keytext, first, callback)
				callback = callback or function()
				end
				local oldKey = first
				local KeyBind = Instance.new("Frame")
				local UICorner_22 = Instance.new("UICorner")
				local KeyBindTitle = Instance.new("TextLabel")
				local BindSelection = Instance.new("Frame")
				local UICorner_23 = Instance.new("UICorner")
				local UIStroke_9 = Instance.new("UIStroke")
				local Bind = Instance.new("TextButton")

				KeyBind.Name = "KeyBind"
				KeyBind.Parent = Container
				KeyBind.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				KeyBind.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				KeyBind.BorderSizePixel = 0
				KeyBind.Position = UDim2.new(0.0196560193, 0, 0.748526514, 0)
				KeyBind.Size = UDim2.new(0, 391, 0, 44)

				UICorner_22.CornerRadius = UDim.new(0, 6)
				UICorner_22.Parent = KeyBind

				KeyBindTitle.Name = "KeyBindTitle"
				KeyBindTitle.Parent = KeyBind
				KeyBindTitle.BackgroundColor3 = Color3.fromRGB(43, 43, 41)
				KeyBindTitle.BackgroundTransparency = 1.000
				KeyBindTitle.BorderColor3 = Color3.fromRGB(43, 43, 41)
				KeyBindTitle.BorderSizePixel = 0
				KeyBindTitle.Position = UDim2.new(0.0306905378, 0, 0.275297672, 0)
				KeyBindTitle.Size = UDim2.new(0, 121, 0, 22)
				KeyBindTitle.Font = Enum.Font.GothamBold
				KeyBindTitle.Text = keytext
				KeyBindTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				KeyBindTitle.TextSize = 15.000
				KeyBindTitle.TextXAlignment = Enum.TextXAlignment.Left

				BindSelection.Name = "BindSelection"
				BindSelection.Parent = KeyBind
				BindSelection.BackgroundColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
				BindSelection.BorderColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
				BindSelection.BorderSizePixel = 0
				BindSelection.Position = UDim2.new(0.902813315, 0, 0.181818187, 0)
				BindSelection.Size = UDim2.new(0, 30, 0, 28)

				UICorner_23.CornerRadius = UDim.new(0, 6)
				UICorner_23.Parent = BindSelection

				UIStroke_9.Parent = BindSelection
				UIStroke_9.Color = HawkLib.Themes[Theme].ItemTextBoxKeyBindStrokeColors
				UIStroke_9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				Bind.Name = "Bind"
				Bind.Parent = BindSelection
				Bind.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
				Bind.BackgroundTransparency = 1.000
				Bind.BorderColor3 = Color3.fromRGB(27, 27, 27)
				Bind.BorderSizePixel = 0
				Bind.Size = UDim2.new(0, 30, 0, 28)
				Bind.Font = Enum.Font.Gotham
				Bind.Text = first
				Bind.TextColor3 = HawkLib.Themes[Theme].ItemKeyBindTextColor
				Bind.TextSize = 16.000			
				Bind.AutoButtonColor = false

				KeyBind.MouseEnter:Connect(
					function()
						TweenService:Create(
							KeyBind,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
						):Play()
					end
				)
				KeyBind.MouseLeave:Connect(
					function()
						TweenService:Create(
							KeyBind,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
						):Play()
					end
				)

				Bind.MouseButton1Click:Connect(
					function()
						ripple(BindSelection, Mouse.X, Mouse.Y)
					end
				)

				Bind.MouseButton1Click:Connect(
					function(e)
						if not focusing then
							Bind.Text = ". . ."
							local a, b = game:GetService("UserInputService").InputBegan:wait()
							if a.KeyCode.Name ~= "Unknown" then
								Bind.Text = a.KeyCode.Name
								oldKey = a.KeyCode.Name
								print(a.KeyCode.Name)
							end
						end
					end
				)

				game:GetService("UserInputService").InputBegan:connect(function(current, ok)
					if not ok then
						if current.KeyCode.Name == oldKey then
							callback()
						end
					end
				end)

				Bind:GetPropertyChangedSignal("Text"):Connect(function()
					if string.len(Bind.Text) == 1 then 
						BindSelection.Position = UDim2.new(0.902813315, 0, 0.181818187, 0)
						Bind.Size = UDim2.new(0, 30, 0, 28)
						BindSelection.Size = UDim2.new(0, 30, 0, 28) 
					elseif string.len(Bind.Text) == 2 then 
						BindSelection.Position = UDim2.new(0.89, 0, 0.181818187, 0)
						Bind.Size = UDim2.new(0, 36, 0, 28)
						BindSelection.Size = UDim2.new(0, 36, 0, 28)	
					elseif string.len(Bind.Text) == 3 then 
						BindSelection.Position = UDim2.new(0.885, 0, 0.181818187, 0)
						Bind.Size = UDim2.new(0, 39, 0, 28)
						BindSelection.Size = UDim2.new(0, 39, 0, 28)
					elseif string.len(Bind.Text) == 4 then 
						BindSelection.Position = UDim2.new(0.85, 0, 0.181818187, 0)
						Bind.Size = UDim2.new(0, 52, 0, 28)
						BindSelection.Size = UDim2.new(0, 52, 0, 28)	
					elseif string.len(Bind.Text) == 5 then 
						BindSelection.Position = UDim2.new(0.84, 0, 0.181818187, 0)
						Bind.Size = UDim2.new(0, 58, 0, 28)
						BindSelection.Size = UDim2.new(0, 58, 0, 28)
					elseif string.len(Bind.Text) == 6 then 
						BindSelection.Position = UDim2.new(0.83, 0, 0.181818187, 0)
						Bind.Size = UDim2.new(0, 60, 0, 28)
						BindSelection.Size = UDim2.new(0, 60, 0, 28)
					elseif string.len(Bind.Text) >= 7 and string.len(Bind.Text) < 9 then 
						BindSelection.Position = UDim2.new(0.76, 0, 0.181818187, 0)
						Bind.Size = UDim2.new(0, 83, 0, 28)
						BindSelection.Size = UDim2.new(0, 83, 0, 28)	
					elseif string.len(Bind.Text) == 9 then 
						BindSelection.Position = UDim2.new(0.74, 0, 0.181818187, 0)
						Bind.Size = UDim2.new(0, 93, 0, 28)
						BindSelection.Size = UDim2.new(0, 93, 0, 28)	
					elseif string.len(Bind.Text) > 9 and string.len(Bind.Text) < 11 then 
						BindSelection.Position = UDim2.new(0.74, 0, 0.181818187, 0)
						Bind.Size = UDim2.new(0, 97, 0, 28)
						BindSelection.Size = UDim2.new(0, 97, 0, 28)
					elseif string.len(Bind.Text) >= 11 and string.len(Bind.Text) < 16 then 
						BindSelection.Position = UDim2.new(0.67, 0, 0.181818187, 0)
						Bind.Size = UDim2.new(0, 123, 0, 28)
						BindSelection.Size = UDim2.new(0, 123, 0, 28)
					end
				end)

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()
			end

			function ContainerItems:Toggle(TexT, check, callback)
				check = check or nil
				callback = callback or function()
				end
				local toggled = false
				local ToggleFrame = Instance.new("Frame")
				local Toggle = Instance.new("TextButton")
				local UICorner_25 = Instance.new("UICorner")
				local ToggleText = Instance.new("TextLabel")
				local UICorner_26 = Instance.new("UICorner")
				local ToggleIconer = Instance.new("Frame")
				local UICorner_27 = Instance.new("UICorner")
				local done = Instance.new("ImageLabel")
				local UICorner_28 = Instance.new("UICorner")
				local UICorner_29 = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")

				ToggleFrame.Name = "ToggleFrame"
				ToggleFrame.Parent = Container
				ToggleFrame.Active = true
				ToggleFrame.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				ToggleFrame.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				ToggleFrame.Position = UDim2.new(0.0196850393, 0, 0.637992859, 0)
				ToggleFrame.Size = UDim2.new(0, 391, 0, 44)

				Toggle.Name = "Toggle"
				Toggle.Parent = ToggleFrame
				Toggle.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Toggle.BackgroundTransparency = 1.000
				Toggle.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				Toggle.Size = UDim2.new(0, 391, 0, 44)
				Toggle.Font = Enum.Font.GothamBold
				Toggle.Text = ""
				Toggle.TextColor3 = Color3.fromRGB(154, 154, 154)
				Toggle.TextSize = 14.000
				Toggle.AutoButtonColor = false

				UICorner_25.CornerRadius = UDim.new(0, 5)
				UICorner_25.Parent = Toggle

				ToggleText.Name = "ToggleText"
				ToggleText.Parent = Toggle
				ToggleText.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				ToggleText.BackgroundTransparency = 1.000
				ToggleText.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				ToggleText.Position = UDim2.new(0.031, 0,0.275, 0)
				ToggleText.Size = UDim2.new(0, 121, 0, 22)
				ToggleText.Font = Enum.Font.GothamBold
				ToggleText.Text = TexT
				ToggleText.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				ToggleText.TextSize = 14.000
				ToggleText.TextXAlignment = Enum.TextXAlignment.Left

				UICorner_26.CornerRadius = UDim.new(0, 5)
				UICorner_26.Parent = ToggleText

				ToggleIconer.Name = "ToggleIconer"
				ToggleIconer.Parent = Toggle
				ToggleIconer.BackgroundColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
				ToggleIconer.BorderColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
				ToggleIconer.BorderSizePixel = 0
				ToggleIconer.Position = UDim2.new(0.915300488, 0, 0.275297672, 0)
				ToggleIconer.Size = UDim2.new(0, 22, 0, 22)

				UICorner_27.CornerRadius = UDim.new(0, 4)
				UICorner_27.Parent = ToggleIconer

				UIStroke.Parent = ToggleIconer
				UIStroke.Color = HawkLib.Themes[Theme].ItemTextBoxKeyBindStrokeColors
				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				done.Name = "done"
				done.Parent = ToggleIconer
				done.BackgroundColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
				done.BorderColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
				done.BackgroundTransparency = 1
				done.Position = UDim2.new(0.0909090936, 0, 0.0909090936, 0)
				done.Size = UDim2.new(0, 18, 0, 18)
				done.ZIndex = 2
				done.Image = "rbxassetid://3926305904"
				done.ImageRectOffset = Vector2.new(644, 204)
				done.ImageRectSize = Vector2.new(36, 36)
				done.ImageColor3 = HawkLib.Themes[Theme].ToggleTickColor
				done.ImageTransparency = 1

				UICorner_28.CornerRadius = UDim.new(0, 4)
				UICorner_28.Parent = done

				UICorner_29.CornerRadius = UDim.new(0, 5)
				UICorner_29.Parent = ToggleFrame

				ToggleFrame.MouseEnter:Connect(
					function()
						TweenService:Create(
							ToggleFrame,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
						):Play()
					end
				)

				ToggleFrame.MouseLeave:Connect(
					function()
						TweenService:Create(
							ToggleFrame,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
						):Play()
					end
				)

				Toggle.MouseButton1Click:Connect(
					function()
						if not focusing then
							if toggled == false then
								game.TweenService:Create(
									done,
									TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
									{
										ImageTransparency = 0
									}
								):Play()

							else
								game.TweenService:Create(
									done,
									TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
									{
										ImageTransparency = 1
									}
								):Play()

							end
							toggled = not toggled
							wait(0.3)
							pcall(callback, toggled)
						end
					end
				)

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()

				local Toggleee = {}

				function Toggleee:UpdateToggle(boolean)
					local zz = boolean

					if zz ~= nil then
						toggled = zz
						if toggled == false then
							game.TweenService:Create(
								done,
								TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
								{
									ImageTransparency = 1
								}
							):Play()

						else
							game.TweenService:Create(
								done,
								TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
								{
									ImageTransparency = 0
								}
							):Play()

						end
						pcall(callback, zz)	
					end
				end

				if check == true then
					Toggleee:UpdateToggle(true)
				elseif check == false then
					Toggleee:UpdateToggle(false)
				elseif check == nil or tostring(check):match("func") then
					game.TweenService:Create(
						done,
						TweenInfo.new(0.11, Enum.EasingStyle.Linear, Enum.EasingDirection.In),
						{
							ImageTransparency = 1
						}
					):Play()
				end

				return Toggleee
			end

			function ContainerItems:TextBox(TexT, Desc, callback)
				callback = callback or function() end

				local TextBox = Instance.new("Frame")
				local UICorner_14 = Instance.new("UICorner")
				local TexttingBox = Instance.new("TextBox")
				local UICorner_15 = Instance.new("UICorner")
				local UIStroke_4 = Instance.new("UIStroke")
				local TextBoxTitle = Instance.new("TextLabel")			

				TextBox.Name = "TextBox"
				TextBox.Parent = Container
				TextBox.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				TextBox.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				TextBox.BorderSizePixel = 0
				TextBox.Position = UDim2.new(0.0196560193, 0, 0.748526514, 0)
				TextBox.Size = UDim2.new(0, 391, 0, 44)

				UICorner_14.CornerRadius = UDim.new(0, 6)
				UICorner_14.Parent = TextBox

				TexttingBox.Name = "TexttingBox"
				TexttingBox.Parent = TextBox
				TexttingBox.BackgroundColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
				TexttingBox.BorderColor3 = HawkLib.Themes[Theme].ItemTextBoxKeyBindColors
				TexttingBox.BorderSizePixel = 0
				TexttingBox.Position = UDim2.new(0.703489363, 0, 0.181818187, 0)
				TexttingBox.Size = UDim2.new(0, 108, 0, 27)		
				TexttingBox.Font = Enum.Font.Gotham
				TexttingBox.ClearTextOnFocus = false
				TexttingBox.PlaceholderColor3 = HawkLib.Themes[Theme].ItemTextBoxTextColor
				TexttingBox.PlaceholderText = Desc
				TexttingBox.Text = ""
				TexttingBox.TextColor3 = HawkLib.Themes[Theme].ItemTextBoxTextColor
				TexttingBox.TextSize = 14.000

				UICorner_15.CornerRadius = UDim.new(0, 6)
				UICorner_15.Parent = TexttingBox

				UIStroke_4.Parent = TexttingBox
				UIStroke_4.Color = HawkLib.Themes[Theme].ItemTextBoxKeyBindStrokeColors
				UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				TextBoxTitle.Name = "TextBoxTitle"
				TextBoxTitle.Parent = TextBox
				TextBoxTitle.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				TextBoxTitle.BackgroundTransparency = 1.000
				TextBoxTitle.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				TextBoxTitle.BorderSizePixel = 0
				TextBoxTitle.Position = UDim2.new(0.0306905378, 0, 0.275297672, 0)
				TextBoxTitle.Size = UDim2.new(0, 121, 0, 22)
				TextBoxTitle.Font = Enum.Font.GothamBold
				TextBoxTitle.Text = TexT
				TextBoxTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				TextBoxTitle.TextSize = 15.000
				TextBoxTitle.TextXAlignment = Enum.TextXAlignment.Left

				TextBox.MouseEnter:Connect(
					function()
						TweenService:Create(
							TextBox,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
						):Play()
					end
				)
				TextBox.MouseLeave:Connect(
					function()
						TweenService:Create(
							TextBox,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
						):Play()
					end
				)

				TexttingBox.FocusLost:Connect(
					function(ep)
						if ep then
							if #TexttingBox.Text > 0 then
								pcall(callback, TexttingBox.Text)
								TexttingBox.Text = ""
							end
						end
					end
				)

				local xd = #Desc
				if xd == 0 or xd == 1 or xd == 2 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 40,0, 27)
					TexttingBox.Position = UDim2.new(0.877, 0,0.182, 0)
				elseif xd == 3 or xd == 4 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 40,0, 27)
					TexttingBox.Position = UDim2.new(0.877, 0,0.182, 0)
				elseif xd == 5 or xd == 6 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 56,0, 27)
					TexttingBox.Position = UDim2.new(0.836, 0,0.182, 0)	
				elseif xd == 7 or xd == 8 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 70,0, 27)
					TexttingBox.Position = UDim2.new(0.801, 0,0.182, 0)	
				elseif xd == 9 or xd == 10 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 81,0, 27)
					TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
				elseif xd == 11 or xd == 12 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 92,0, 27)
					TexttingBox.Position = UDim2.new(0.744, 0,0.182, 0)	
				elseif xd == 12 or xd == 13 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 122,0, 27)
					TexttingBox.Position = UDim2.new(0.668, 0,0.182, 0)
				elseif xd == 14 or xd == 15 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 141,0, 27)
					TexttingBox.Position = UDim2.new(0.619, 0,0.182, 0)
				elseif xd == 17 or xd == 18 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 155,0, 27)
					TexttingBox.Position = UDim2.new(0.583, 0,0.182, 0)		
				elseif xd == 19 or xd == 20 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 164,0, 27)
					TexttingBox.Position = UDim2.new(0.558, 0,0.182, 0)	
				elseif xd == 21 or xd == 22 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 180,0, 27)
					TexttingBox.Position = UDim2.new(0.517, 0,0.182, 0)		
				elseif xd == 23 or xd == 24 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 202,0, 27)
					TexttingBox.Position = UDim2.new(0.461, 0,0.182, 0)	
				elseif xd == 25 or xd == 26 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 212,0, 27)
					TexttingBox.Position = UDim2.new(0.432, 0,0.182, 0)	
				elseif xd == 27 or xd == 28 then
					TexttingBox.TextScaled = false
					TexttingBox.Size = UDim2.new(0, 394,0, 27)
					TexttingBox.Position = UDim2.new(0.227, 0,0.182, 0)	
				elseif xd > 28 then
					TexttingBox.TextScaled = true			
				end			

				TexttingBox:GetPropertyChangedSignal("PlaceholderText"):Connect(function()
					if #TexttingBox.PlaceholderText == 0 or #TexttingBox.PlaceholderText == 1 or #TexttingBox.PlaceholderText == 2 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 40,0, 27)
						TexttingBox.Position = UDim2.new(0.877, 0,0.182, 0)
					elseif #TexttingBox.PlaceholderText == 3 or #TexttingBox.PlaceholderText == 4 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 40,0, 27)
						TexttingBox.Position = UDim2.new(0.877, 0,0.182, 0)
					elseif #TexttingBox.PlaceholderText == 5 or #TexttingBox.PlaceholderText == 6 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 56,0, 27)
						TexttingBox.Position = UDim2.new(0.836, 0,0.182, 0)	
					elseif #TexttingBox.PlaceholderText == 7 or #TexttingBox.PlaceholderText == 8 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 70,0, 27)
						TexttingBox.Position = UDim2.new(0.801, 0,0.182, 0)	
					elseif #TexttingBox.PlaceholderText == 9 or #TexttingBox.PlaceholderText == 10 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 81,0, 27)
						TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
					elseif #TexttingBox.PlaceholderText == 11 or #TexttingBox.PlaceholderText == 12 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 92,0, 27)
						TexttingBox.Position = UDim2.new(0.744, 0,0.182, 0)	
					elseif #TexttingBox.PlaceholderText == 12 or #TexttingBox.PlaceholderText == 13 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 122,0, 27)
						TexttingBox.Position = UDim2.new(0.668, 0,0.182, 0)
					elseif #TexttingBox.PlaceholderText == 14 or #TexttingBox.PlaceholderText == 15 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 141,0, 27)
						TexttingBox.Position = UDim2.new(0.619, 0,0.182, 0)
					elseif #TexttingBox.PlaceholderText == 17 or #TexttingBox.PlaceholderText == 18 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 155,0, 27)
						TexttingBox.Position = UDim2.new(0.583, 0,0.182, 0)		
					elseif #TexttingBox.PlaceholderText == 19 or #TexttingBox.PlaceholderText == 20 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 164,0, 27)
						TexttingBox.Position = UDim2.new(0.558, 0,0.182, 0)	
					elseif #TexttingBox.PlaceholderText == 21 or #TexttingBox.PlaceholderText == 22 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 180,0, 27)
						TexttingBox.Position = UDim2.new(0.517, 0,0.182, 0)		
					elseif #TexttingBox.PlaceholderText == 23 or #TexttingBox.PlaceholderText == 24 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 202,0, 27)
						TexttingBox.Position = UDim2.new(0.461, 0,0.182, 0)	
					elseif #TexttingBox.PlaceholderText == 25 or #TexttingBox.PlaceholderText == 26 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 212,0, 27)
						TexttingBox.Position = UDim2.new(0.432, 0,0.182, 0)	
					elseif #TexttingBox.PlaceholderText == 27 or #TexttingBox.PlaceholderText == 28 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 394,0, 27)
						TexttingBox.Position = UDim2.new(0.227, 0,0.182, 0)	
					elseif #TexttingBox.PlaceholderText > 28 then
						TexttingBox.TextScaled = true			
					end			
				end)

				TexttingBox:GetPropertyChangedSignal("Text"):Connect(function()
					if #TexttingBox.Text == 0 or #TexttingBox.Text == 1 or #TexttingBox.Text == 2 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 81,0, 27)
						TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
					elseif #TexttingBox.Text == 3 or #TexttingBox.Text == 4 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 81,0, 27)
						TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
					elseif #TexttingBox.Text == 5 or #TexttingBox.Text == 6 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 81,0, 27)
						TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
					elseif #TexttingBox.Text == 7 or #TexttingBox.Text == 8 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 81,0, 27)
						TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
					elseif #TexttingBox.Text == 9 or #TexttingBox.Text == 10 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 81,0, 27)
						TexttingBox.Position = UDim2.new(0.772, 0,0.182, 0)	
					elseif #TexttingBox.Text == 11 or #TexttingBox.Text == 12 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 92,0, 27)
						TexttingBox.Position = UDim2.new(0.744, 0,0.182, 0)	
					elseif #TexttingBox.Text == 12 or #TexttingBox.Text == 13 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 122,0, 27)
						TexttingBox.Position = UDim2.new(0.668, 0,0.182, 0)
					elseif #TexttingBox.Text == 14 or #TexttingBox.Text == 15 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 141,0, 27)
						TexttingBox.Position = UDim2.new(0.619, 0,0.182, 0)
					elseif #TexttingBox.Text == 17 or #TexttingBox.Text == 18 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 155,0, 27)
						TexttingBox.Position = UDim2.new(0.583, 0,0.182, 0)		
					elseif #TexttingBox.Text == 19 or #TexttingBox.Text == 20 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 164,0, 27)
						TexttingBox.Position = UDim2.new(0.558, 0,0.182, 0)	
					elseif #TexttingBox.Text == 21 or #TexttingBox.Text == 22 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 180,0, 27)
						TexttingBox.Position = UDim2.new(0.517, 0,0.182, 0)		
					elseif #TexttingBox.Text == 23 or #TexttingBox.Text == 24 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 202,0, 27)
						TexttingBox.Position = UDim2.new(0.461, 0,0.182, 0)	
					elseif #TexttingBox.Text == 25 or #TexttingBox.Text == 26 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 212,0, 27)
						TexttingBox.Position = UDim2.new(0.432, 0,0.182, 0)	
					elseif #TexttingBox.Text == 27 or #TexttingBox.Text == 28 then
						TexttingBox.TextScaled = false
						TexttingBox.Size = UDim2.new(0, 218,0, 27)
						TexttingBox.Position = UDim2.new(0.420, 0,0.182, 0)	
					elseif #TexttingBox.Text > 28 then
						TexttingBox.TextScaled = true			
					end			
				end)

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()

			end

			function ContainerItems:Dropdown(teks, list, callback)
				local dropfunc = {}
				local DropToggled = false
				local FrameSize = 0
				local ItemCount = 0

				local Dropdown = Instance.new("TextButton")
				local Title = Instance.new("TextLabel")
				local DropdownCorner = Instance.new("UICorner")
				local Arrow = Instance.new("ImageLabel")
				local UIStroke = Instance.new("UIStroke")
				local DropdownFrame = Instance.new("Frame")
				local DropdownFrameCorner = Instance.new("UICorner")
				local DropdownHolder = Instance.new("ScrollingFrame")
				local DropdownItemLayout = Instance.new("UIListLayout")
				local DropdownItemHolder = Instance.new("UIPadding")

				Dropdown.Name = "Dropdown"
				Dropdown.Parent = Container
				Dropdown.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Dropdown.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
				Dropdown.Size = UDim2.new(0, 391, 0, 44)
				Dropdown.AutoButtonColor = false
				Dropdown.Font = Enum.Font.GothamBold
				Dropdown.Text = ""
				Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.TextSize = 15.000

				Title.Name = "Title"
				Title.Parent = Dropdown
				Title.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0.025, 0, 0, 0)
				Title.Size = UDim2.new(0, 192, 0, 44)
				Title.Font = Enum.Font.GothamBold
				Title.Text = teks
				Title.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				Title.TextSize = 15.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				DropdownCorner.CornerRadius = UDim.new(0, 6)
				DropdownCorner.Name = "DropdownCorner"
				DropdownCorner.Parent = Dropdown

				Arrow.Name = "Arrow"
				Arrow.Parent = Dropdown
				Arrow.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Arrow.BackgroundTransparency = 1.000
				Arrow.Position = UDim2.new(0.913561523, 0, 0.211111104, 0)
				Arrow.Size = UDim2.new(0, 26, 0, 27)
				Arrow.Image = "rbxassetid://6034818372"
				Arrow.ImageColor3 = HawkLib.Themes[Theme].ItemTitleColors

				DropdownFrame.Name = "DropdownFrame"
				DropdownFrame.Parent = Container
				DropdownFrame.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				DropdownFrame.BackgroundTransparency = 0.2
				DropdownFrame.BorderSizePixel = 0
				DropdownFrame.Position = UDim2.new(0.334374994, 0, 0.604166687, 0)
				DropdownFrame.Size = UDim2.new(0, 391, 0, 0)
				DropdownFrame.Visible = false

				DropdownFrameCorner.Name = "DropdownFrameCorner"
				DropdownFrameCorner.Parent = DropdownFrame

				DropdownHolder.Name = "DropdownHolder"
				DropdownHolder.Parent = DropdownFrame
				DropdownHolder.Active = true
				DropdownHolder.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				DropdownHolder.BackgroundTransparency = 1.000
				DropdownHolder.BorderSizePixel = 0
				DropdownHolder.Position = UDim2.new(0.0263156947, 0, 0.00326599111, 0)
				DropdownHolder.Size = UDim2.new(0, 391, 0, 0)
				DropdownHolder.ScrollBarThickness = 3
				DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
				DropdownHolder.ScrollBarImageColor3 = HawkLib.Themes[Theme].TitleBar

				DropdownItemLayout.Name = "DropdownItemLayout"
				DropdownItemLayout.Parent = DropdownHolder
				DropdownItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
				DropdownItemLayout.Padding = UDim.new(0, 5)

				DropdownItemHolder.Name = "DropdownItemHolder"
				DropdownItemHolder.Parent = DropdownHolder
				DropdownItemHolder.PaddingBottom = UDim.new(0, 5)
				DropdownItemHolder.PaddingTop = UDim.new(0, 5)

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()

				Dropdown.MouseEnter:Connect(
					function()
						TweenService:Create(
							Dropdown,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
						):Play()
					end
				)
				Dropdown.MouseLeave:Connect(
					function()
						TweenService:Create(
							Dropdown,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
						):Play()
					end
				)

				Dropdown.MouseButton1Down:Connect(
					function()
						repeat
							wait()
							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
						until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
					end
				)

				Dropdown.MouseButton1Click:Connect(
					function()
						if DropToggled == false then
							DropdownFrame.Visible = true
							DropdownFrame:TweenSize(
								UDim2.new(0, 391, 0, FrameSize),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							DropdownHolder:TweenSize(
								UDim2.new(0, 391, 0, FrameSize),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							TweenService:Create(
								Arrow,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Rotation = 180}
							):Play()
							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
							repeat
								wait()
								TweenService:Create(
									Page,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
								):Play()
							until DropdownFrame.Size == UDim2.new(0, 391, 0, FrameSize)
						else
							DropdownFrame:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							DropdownHolder:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							TweenService:Create(
								Arrow,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Rotation = 0}
							):Play()
							DropdownFrame.Visible = false
							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
							repeat
								wait()
								TweenService:Create(
									Page,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
								):Play()
							until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
						end
						DropToggled = not DropToggled
					end
				)

				for i, v in next, list do
					ItemCount = ItemCount + 1

					if ItemCount == 1 then
						FrameSize = 39
					elseif ItemCount == 2 then
						FrameSize = 69
					elseif ItemCount >= 3 then
						FrameSize = 100
					end

					local Item = Instance.new("TextButton")
					local ItemCorner = Instance.new("UICorner")

					Item.Name = "Item"
					Item.Parent = DropdownHolder
					Item.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
					Item.BackgroundTransparency = 0.2
					Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
					Item.Size = UDim2.new(0, 371, 0, 24)
					Item.AutoButtonColor = false
					Item.Font = Enum.Font.Gotham
					Item.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
					Item.TextSize = 14.000
					Item.Text = v

					ItemCorner.Name = "ItemCorner"
					ItemCorner.Parent = Item

					Item.MouseEnter:Connect(
						function()
							TweenService:Create(
								Item,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
							):Play()
						end
					)
					Item.MouseLeave:Connect(
						function()
							TweenService:Create(
								Item,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
							):Play()
						end
					)

					Item.MouseButton1Click:Connect(
						function()
							Title.Text = teks
							wait()
							Title.Text = teks .. " - " .. v
							pcall(callback, v)
							DropToggled = false
							DropdownFrame:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							DropdownHolder:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							TweenService:Create(
								Arrow,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Rotation = 0}
							):Play()
							DropdownFrame.Visible = false
							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
							repeat
								wait()
								TweenService:Create(
									Page,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
								):Play()
							until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
						end
					)

					DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
				end

				function dropfunc:Refresh(newlist, boolean)
					local bolen = boolean
					--Clearing List
					Title.Text = teks
					FrameSize = 0
					ItemCount = 0

					for i,v in next, DropdownHolder:GetChildren() do
						if v.Name == "Item" then
							v:Destroy()
						end
					end

					DropdownFrame:TweenSize(
						UDim2.new(0, 391, 0, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quart,
						0.1,
						true
					)
					DropdownHolder:TweenSize(
						UDim2.new(0, 391, 0, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quart,
						0.1,
						true
					)
					TweenService:Create(
						Arrow,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
					repeat
						wait()
					until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
					DropdownFrame.Visible = false
					--Adding new listo

					for i, v in next, newlist do
						ItemCount = ItemCount + 1

						if ItemCount == 1 then
							FrameSize = 39
						elseif ItemCount == 2 then
							FrameSize = 69
						elseif ItemCount >= 3 then
							FrameSize = 100
						end

						local Item = Instance.new("TextButton")
						local ItemCorner = Instance.new("UICorner")

						Item.Name = "Item"
						Item.Parent = DropdownHolder
						Item.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
						Item.BackgroundTransparency = 0.2
						Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
						Item.Size = UDim2.new(0, 371, 0, 24)
						Item.AutoButtonColor = false
						Item.Font = Enum.Font.Gotham
						Item.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
						Item.TextSize = 14.000
						Item.Text = v

						ItemCorner.Name = "ItemCorner"
						ItemCorner.Parent = Item

						Item.MouseEnter:Connect(
							function()
								TweenService:Create(
									Item,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
								):Play()
							end
						)
						Item.MouseLeave:Connect(
							function()
								TweenService:Create(
									Item,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
								):Play()
							end
						)

						Item.MouseButton1Click:Connect(
							function()
								Title.Text = teks
								wait()
								Title.Text = teks .. " - " .. v
								pcall(callback, v)
								DropToggled = false
								DropdownFrame:TweenSize(
									UDim2.new(0, 391, 0, 0),
									Enum.EasingDirection.Out,
									Enum.EasingStyle.Quart,
									0.1,
									true
								)
								DropdownHolder:TweenSize(
									UDim2.new(0, 391, 0, 0),
									Enum.EasingDirection.Out,
									Enum.EasingStyle.Quart,
									0.1,
									true
								)
								TweenService:Create(
									Arrow,
									TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
									{Rotation = 0}
								):Play()
								DropdownFrame.Visible = false
								TweenService:Create(
									Page,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
								):Play()
								repeat
									wait()
									TweenService:Create(
										Page,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
									):Play()
								until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
							end
						)

						DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)

						if bolen ~= nil then
							if boolean == true then
								DropdownFrame.Visible = true
								DropdownFrame:TweenSize(
									UDim2.new(0, 391, 0, FrameSize),
									Enum.EasingDirection.Out,
									Enum.EasingStyle.Quart,
									0.1,
									true
								)
								DropdownHolder:TweenSize(
									UDim2.new(0, 391, 0, FrameSize),
									Enum.EasingDirection.Out,
									Enum.EasingStyle.Quart,
									0.1,
									true
								)
								TweenService:Create(
									Arrow,
									TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
									{Rotation = 180}
								):Play()
								TweenService:Create(
									Page,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
								):Play()
								repeat
									wait()
									TweenService:Create(
										Page,
										TweenInfo.new(.2, Enum.EasingStyle.Quad),
										{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
									):Play()
								until DropdownFrame.Size == UDim2.new(0, 391, 0, FrameSize)
							end
						end

						TweenService:Create(
							Page,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
						):Play()
					end
				end

				function dropfunc:Clear()
					Title.Text = teks
					FrameSize = 0
					ItemCount = 0

					for i,v in next, DropdownHolder:GetChildren() do
						if v.Name == "Item" then
							v:Destroy()
						end
					end

					DropdownFrame:TweenSize(
						UDim2.new(0, 391, 0, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quart,
						0.1,
						true
					)
					DropdownHolder:TweenSize(
						UDim2.new(0, 391, 0, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quart,
						0.1,
						true
					)
					TweenService:Create(
						Arrow,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
					repeat
						wait()
					until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
					DropdownFrame.Visible = false
				end

				function dropfunc:Add(toadd, callback)
					callback = callback or function() end
					ItemCount = ItemCount + 1

					if ItemCount == 1 then
						FrameSize = 39
					elseif ItemCount == 2 then
						FrameSize = 69
					elseif ItemCount >= 3 then
						FrameSize = 100
					end

					local Item = Instance.new("TextButton")
					local ItemCorner = Instance.new("UICorner")

					Item.Name = "Item"
					Item.Parent = DropdownHolder
					Item.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
					Item.BackgroundTransparency = 0.2
					Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
					Item.Size = UDim2.new(0, 371, 0, 24)
					Item.AutoButtonColor = false
					Item.Font = Enum.Font.Gotham
					Item.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
					Item.TextSize = 14.000
					Item.Text = toadd

					ItemCorner.Name = "ItemCorner"
					ItemCorner.Parent = Item

					Item.MouseEnter:Connect(
						function()
							TweenService:Create(
								Item,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
							):Play()
						end
					)
					Item.MouseLeave:Connect(
						function()
							TweenService:Create(
								Item,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
							):Play()
						end
					)


					Item.MouseButton1Click:Connect(function()
						pcall(callback)
					end)

					Item.MouseButton1Click:Connect(
						function()
							Title.Text = teks .. " - " .. toadd
							pcall(callback, toadd)
							DropToggled = false
							DropdownFrame:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							DropdownHolder:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							TweenService:Create(
								Arrow,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Rotation = 0}
							):Play()
							repeat
								wait()
							until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)
							DropdownFrame.Visible = false

						end
					)

					DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
				end

				function dropfunc:Remove(toadd)				
					Title.Text = teks
					FrameSize = FrameSize-1
					ItemCount = ItemCount-1

					if ItemCount == 1 then
						FrameSize = 39
					elseif ItemCount == 2 then
						FrameSize = 69
					elseif ItemCount >= 3 then
						FrameSize = 100
					end

					for i,v in next, DropdownHolder:GetChildren() do
						if v.Name == "Item" and v.Text == tostring(toadd) then
							v:Destroy()
						end
					end

					DropdownFrame:TweenSize(
						UDim2.new(0, 391, 0, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quart,
						0.1,
						true
					)
					DropdownHolder:TweenSize(
						UDim2.new(0, 391, 0, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quart,
						0.1,
						true
					)
					TweenService:Create(
						Arrow,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
					repeat
						wait()
					until DropdownFrame.Size == UDim2.new(0, 391, 0, 0)

					DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
				end

				return dropfunc
			end

			function ContainerItems:Image(title, writeinto, Expander)
				local name;
				local filename;
				local checkfile;
				local imagelink;
				local imagecolor;
				local description;
				local stroke;
				local volume;

				if not isfolder(writeinto) then
					makefolder(writeinto)
				end	

				local ImageToggled = false
				for i, v in next, Expander do
					if string.lower(i) == "name" then
						name = v
					elseif string.lower(i) == "filename" then
						filename  = v
					elseif string.lower(i) == "checkfile" then
						checkfile  = v
					elseif string.lower(i) == "imagelink" then
						imagelink = v
					elseif string.lower(i) == "volume" then
						volume = v
					elseif string.lower(i) == "imagecolor" then
						imagecolor = v
					elseif string.lower(i) == "description" then
						description = v
					elseif string.lower(i) == "stroke" then
						stroke = v
					end
				end

				local Image = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local ImageTitle = Instance.new("TextLabel")
				local ImageButton = Instance.new("TextButton")
				local Arrow = Instance.new("ImageButton")
				local ImageFrame = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local UICorner_3 = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local UIListLayout = Instance.new("UIListLayout")
				local ImageListing = Instance.new("Frame")
				local UIListLayout_2 = Instance.new("UIListLayout")
				local ButtonTitle = Instance.new("TextLabel")

				Image.Name = "Image"
				Image.Parent = Container
				Image.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Image.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				Image.BorderSizePixel = 0
				Image.Position = UDim2.new(0.0196560193, 0, 0.748526514, 0)
				Image.Size = UDim2.new(0, 391, 0, 44)

				UICorner.CornerRadius = UDim.new(0, 6)
				UICorner.Parent = Image

				ImageTitle.Name = "ImageTitle"
				ImageTitle.Parent = Image
				ImageTitle.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				ImageTitle.BackgroundTransparency = 1.000
				ImageTitle.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				ImageTitle.BorderSizePixel = 0
				ImageTitle.Position = UDim2.new(0.0306905378, 0, 0.275297672, 0)
				ImageTitle.Size = UDim2.new(0, 121, 0, 22)
				ImageTitle.Font = Enum.Font.GothamBold
				ImageTitle.Text = title
				ImageTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				ImageTitle.TextSize = 15.000
				ImageTitle.TextXAlignment = Enum.TextXAlignment.Left

				ImageButton.Name = "ImageButton"
				ImageButton.Parent = Image
				ImageButton.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				ImageButton.BackgroundTransparency = 1.000
				ImageButton.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				ImageButton.BorderSizePixel = 0
				ImageButton.Size = UDim2.new(0, 391, 0, 44)
				ImageButton.Font = Enum.Font.SourceSans
				ImageButton.Text = ""
				ImageButton.TextColor3 = Color3.fromRGB(0, 0, 0)
				ImageButton.TextSize = 14.000
				ImageButton.AutoButtonColor = false

				Arrow.Name = "Arrow"
				Arrow.Parent = Image
				Arrow.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				Arrow.BackgroundTransparency = 1.000
				Arrow.Position = UDim2.new(0.913561523, 0, 0.211111104, 0)
				Arrow.Size = UDim2.new(0, 26, 0, 27)
				Arrow.Image = "rbxassetid://6034818372"
				Arrow.ImageColor3 = HawkLib.Themes[Theme].ItemTitleColors

				ImageFrame.Name = "ImageFrame"
				ImageFrame.Parent = Container
				ImageFrame.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				ImageFrame.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				ImageFrame.BackgroundTransparency = 0.2
				ImageFrame.BorderSizePixel = 0
				ImageFrame.Position = UDim2.new(0.00175316073, 0, 1.71075165, 0)
				ImageFrame.Size = UDim2.new(0, 391, 0, 0)
				ImageFrame.Visible = false

				UICorner_2.CornerRadius = UDim.new(0, 6)
				UICorner_2.Parent = ImageFrame

				if string.find(imagelink, "rbxassetid") then
					local ImageLabel = Instance.new("ImageLabel")
					ImageLabel.Parent = ImageFrame
					ImageLabel.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
					ImageLabel.BackgroundTransparency = 1.000
					ImageLabel.BorderColor3 = HawkLib.Themes[Theme].ItemColors
					ImageLabel.BorderSizePixel = 0
					ImageLabel.Position = UDim2.new(0, 0, 0.0250000004, 0)
					ImageLabel.Size = UDim2.new(0, 97, 0, 95)
					ImageLabel.ImageColor3 = imagecolor
					ImageLabel.ImageTransparency = 1
					ImageLabel.Image = imagelink

					UICorner_3.Parent = ImageLabel

					UIStroke.Parent = ImageLabel
					UIStroke.Color = stroke
					UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					UIStroke.Transparency = 1
				elseif string.find(imagelink, "https") then			
					if checkfile ~= nil then
						if checkfile == false then
							writefile(tostring(writeinto).."\\"..tostring(filename), game:HttpGet(tostring(imagelink),true))	
						else	if checkfile == true then		
								if not isfile(tostring(writeinto).."\\"..tostring(filename)) then
									writefile(tostring(writeinto).."\\"..tostring(filename), game:HttpGet(tostring(imagelink),true))					
								end									
							end			
						end		
					end

					local getasset = getcustomasset or getsynasset
					local VideoLabel = Instance.new("VideoFrame")
					VideoLabel.Parent = ImageFrame
					VideoLabel.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
					VideoLabel.BackgroundTransparency = 1.000
					VideoLabel.BorderColor3 = HawkLib.Themes[Theme].ItemColors
					VideoLabel.BorderSizePixel = 0
					VideoLabel.Position = UDim2.new(0, 0, 0.0250000004, 0)
					VideoLabel.Size = UDim2.new(0, 97, 0, 95)
					VideoLabel.Video = getasset(writeinto.."\\"..filename)
					VideoLabel.Volume = tonumber(volume)
					VideoLabel.Looped = true
					VideoLabel.Playing = false

					UICorner_3.Parent = VideoLabel

					UIStroke.Parent = VideoLabel
					UIStroke.Color = stroke
					UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					UIStroke.Transparency = 1
				else
					local ImageLabel = Instance.new("ImageLabel")
					ImageLabel.Parent = ImageFrame
					ImageLabel.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
					ImageLabel.BackgroundTransparency = 1.000
					ImageLabel.BorderColor3 = HawkLib.Themes[Theme].ItemColors
					ImageLabel.BorderSizePixel = 0
					ImageLabel.Position = UDim2.new(0, 0, 0.0250000004, 0)
					ImageLabel.Size = UDim2.new(0, 97, 0, 95)
					ImageLabel.ImageColor3 = imagecolor
					ImageLabel.ImageTransparency = 1
					ImageLabel.Image = "rbxassetid://"..imagelink

					UICorner_3.Parent = ImageLabel

					UIStroke.Parent = ImageLabel
					UIStroke.Color = stroke
					UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					UIStroke.Transparency = 1
				end

				local function activate()
					for i, v in pairs(ImageFrame:GetChildren()) do
						if v:IsA("ImageLabel") then
							TweenService:Create(
								v,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{ImageTransparency = 0}
							):Play()
						elseif v:IsA("VideoFrame") then
							TweenService:Create(
								v,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{BackgroundTransparency = 0}
							):Play()
							v.Playing = true
						end
					end
				end

				local function disable()
					for i, v in pairs(ImageFrame:GetChildren()) do
						if v:IsA("ImageLabel") then
							TweenService:Create(
								v,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{ImageTransparency = 1}
							):Play()
						elseif v:IsA("VideoFrame") then
							TweenService:Create(
								v,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{BackgroundTransparency = 1}
							):Play()
							v.Playing = false
						end
					end
				end

				UIListLayout.Parent = ImageFrame
				UIListLayout.FillDirection = Enum.FillDirection.Horizontal
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
				UIListLayout.Padding = UDim.new(0, 30)

				ImageListing.Name = "ImageListing"
				ImageListing.Parent = ImageFrame
				ImageListing.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				ImageListing.BackgroundTransparency = 1.000
				ImageListing.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				ImageListing.BorderSizePixel = 0
				ImageListing.Position = UDim2.new(0.312020451, 0, 0, 0)
				ImageListing.Size = UDim2.new(0, 104, 0, 100)

				UIListLayout_2.Parent = ImageListing
				UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Center

				ButtonTitle.Name = "ButtonTitle"
				ButtonTitle.Parent = ImageListing
				ButtonTitle.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
				ButtonTitle.BackgroundTransparency = 1.000
				ButtonTitle.BorderColor3 = HawkLib.Themes[Theme].ItemColors
				ButtonTitle.BorderSizePixel = 0
				ButtonTitle.Size = UDim2.new(0, 379, 0, 17)
				ButtonTitle.Font = Enum.Font.GothamBold
				ButtonTitle.Text = name
				ButtonTitle.TextColor3 = HawkLib.Themes[Theme].ItemTitleColors
				ButtonTitle.TextSize = 15.000
				ButtonTitle.TextTransparency = 1
				ButtonTitle.TextXAlignment = Enum.TextXAlignment.Left

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()
				for i, v in next, description do
					local ButtonText = Instance.new("TextLabel")
					ButtonText.Name = "ButtonText"
					ButtonText.Parent = ImageListing
					ButtonText.BackgroundColor3 = HawkLib.Themes[Theme].ItemColors
					ButtonText.BackgroundTransparency = 1.000
					ButtonText.BorderColor3 = HawkLib.Themes[Theme].ItemColors
					ButtonText.BorderSizePixel = 0
					ButtonText.Position = UDim2.new(0, 0, 0.170000002, 0)
					ButtonText.Size = UDim2.new(0, 379, 0, 17)
					ButtonText.Font = Enum.Font.Gotham
					ButtonText.Text = v
					ButtonText.TextTransparency = 1
					ButtonText.TextColor3 = HawkLib.Themes[Theme].ItemTextColors
					ButtonText.TextSize = 15.000
					ButtonText.TextXAlignment = Enum.TextXAlignment.Left			

					TweenService:Create(
						Page,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
					):Play()
				end

				Image.MouseEnter:Connect(
					function()
						TweenService:Create(
							Image,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ButtonHover}
						):Play()
					end
				)
				Image.MouseLeave:Connect(
					function()
						TweenService:Create(
							Image,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundColor3 = HawkLib.Themes[Theme].ItemColors}
						):Play()
					end
				)

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()
				ImageButton.MouseButton1Click:Connect(
					function()
						if ImageToggled == false then
							ImageFrame.Visible = true
							ImageFrame:TweenSize(
								UDim2.new(0, 391, 0, 100),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							activate()
							TweenService:Create(
								UIStroke,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Transparency = 0}
							):Play()
							TweenService:Create(
								ButtonTitle,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextTransparency = 0}
							):Play()
							for i, v in pairs(ImageListing:GetChildren()) do
								if v.Name == "ButtonText" then
									TweenService:Create(
										v,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{TextTransparency = 0}
									):Play()	
								end
							end
							TweenService:Create(
								Arrow,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Rotation = 180}
							):Play()
							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
							repeat
								wait()
								TweenService:Create(
									Page,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
								):Play()
							until ImageFrame.Size == UDim2.new(0, 391, 0, 100)
						else							
							disable()
							TweenService:Create(
								UIStroke,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Transparency = 1}
							):Play()
							TweenService:Create(
								ButtonTitle,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextTransparency = 1}
							):Play()
							for i, v in pairs(ImageListing:GetChildren()) do
								if v.Name == "ButtonText" then
									TweenService:Create(
										v,
										TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
										{TextTransparency = 1}
									):Play()	
								end
							end
							ImageFrame:TweenSize(
								UDim2.new(0, 391, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							TweenService:Create(
								Arrow,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Rotation = 0}
							):Play()
							ImageFrame.Visible = false
							TweenService:Create(
								Page,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
							):Play()
							repeat
								wait()
								TweenService:Create(
									Page,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
								):Play()
							until ImageFrame.Size == UDim2.new(0, 391, 0, 0)
						end
						ImageToggled = not ImageToggled
					end
				)		

				TweenService:Create(
					Page,
					TweenInfo.new(.2, Enum.EasingStyle.Quad),
					{CanvasSize = UDim2.new(0, 0, 0, UIListLayout_4.AbsoluteContentSize.Y)}
				):Play()
			end

			return ContainerItems
		end

		return Sayfalar
	end
end

function HawkLib:AddNotifications()
	if _Hawk == "ohhahtuhthttouttpwuttuaunbotwo" then
		local NotifyListing = Instance.new("Frame")
		local NotifyLayout = Instance.new("UIListLayout")
		local NotifyCorner = Instance.new("UICorner")
		local NotificationListing = Instance.new("Frame")
		local NotificationLayout = Instance.new("UIListLayout")
		local NotificationCorner = Instance.new("UICorner")
		local HawkNotifications = Hawk

		NotifyListing.Name = "NotifyListing"
		NotifyListing.Parent = HawkNotifications
		NotifyListing.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		NotifyListing.BackgroundTransparency = 1.000
		NotifyListing.BorderColor3 = Color3.fromRGB(42, 44, 42)
		NotifyListing.BorderSizePixel = 0
		NotifyListing.Position = UDim2.new(0.0177570097, 0, -0.0441767052, 0)
		NotifyListing.Size = UDim2.new(1, 0, 1, 0)

		NotifyLayout.Parent = NotifyListing
		NotifyLayout.SortOrder = Enum.SortOrder.LayoutOrder
		NotifyLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
		NotifyLayout.Padding = UDim.new(0, 13)

		NotifyCorner.Parent = NotifyListing

		NotificationListing.Name = "NotificationListing"
		NotificationListing.Parent = HawkNotifications
		NotificationListing.AnchorPoint = Vector2.new(1, 0)
		NotificationListing.BackgroundColor3 = Color3.fromRGB(42, 44, 42)
		NotificationListing.BackgroundTransparency = 1.000
		NotificationListing.BorderColor3 = Color3.fromRGB(42, 44, 42)
		NotificationListing.BorderSizePixel = 0
		NotificationListing.Position = UDim2.new(0.986912012, 0, -0.0441767052, 0)
		NotificationListing.Size = UDim2.new(1, 0, 1, 0)

		NotificationLayout.Parent = NotificationListing
		NotificationLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
		NotificationLayout.SortOrder = Enum.SortOrder.LayoutOrder
		NotificationLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
		NotificationLayout.Padding = UDim.new(0, 13)

		NotificationCorner.Parent = NotificationListing	

		local theme;
		local NotificationItems = {}

		function NotificationItems:Notification(Title, Text, Selector, Cooldowm)
			local Description = #Text

			if notiftheme == nil then
				theme = "Dark"
			else
				theme = tostring(notiftheme)
			end

			local notification = Instance.new("Frame")
			local UICorner_5 = Instance.new("UICorner")
			local notificationcontainer = Instance.new("Frame")
			local UICorner_6 = Instance.new("UICorner")
			local Listing_2 = Instance.new("Frame")
			local UIListLayout_3 = Instance.new("UIListLayout")
			local LabelMainText_2 = Instance.new("TextLabel")
			local LabelText_2 = Instance.new("TextLabel")
			local IconFrame_2 = Instance.new("Frame")
			local UICorner_7 = Instance.new("UICorner")
			local Shadow_2 = Instance.new("ImageLabel")
			local Icon_2 = Instance.new("ImageLabel")
			local UIStroke_2 = Instance.new("UIStroke")
			local full = #tostring(Title) + #tostring(Text)
			local notificationUIListLayout = Instance.new("UIListLayout")

			notification.Name = "notification"
			notification.Parent = NotificationListing
			notification.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			notification.BackgroundTransparency = 1.000
			notification.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			notification.BorderSizePixel = 0
			notification.Position = UDim2.new(0.121568628, 0, -0.0700000003, 0)

			UICorner_5.Parent = notification

			notificationcontainer.Name = "notificationcontainer"
			notificationcontainer.Parent = notification
			notificationcontainer.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			notificationcontainer.BackgroundTransparency = 0.200
			notificationcontainer.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			notificationcontainer.BorderSizePixel = 0
			notificationcontainer.Position = UDim2.new(22, 0, 0, 0)

			UICorner_6.Parent = notificationcontainer

			Listing_2.Name = "Listing"
			Listing_2.Parent = notificationcontainer
			Listing_2.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			Listing_2.BackgroundTransparency = 1.000
			Listing_2.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			Listing_2.BorderSizePixel = 0
			Listing_2.Position = UDim2.new(0.239999995, 0, 0.239999995, 0)
			Listing_2.Size = UDim2.new(0, 181, 0, 35)

			UIListLayout_3.Parent = Listing_2
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

			LabelMainText_2.Name = "LabelMainText"
			LabelMainText_2.Parent = Listing_2
			LabelMainText_2.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			LabelMainText_2.BackgroundTransparency = 1.000
			LabelMainText_2.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			LabelMainText_2.BorderSizePixel = 0
			LabelMainText_2.Position = UDim2.new(0.0331491716, 0, -3.97142863, 0)
			LabelMainText_2.Size = UDim2.new(0, 232, 0, 17)
			LabelMainText_2.Font = Enum.Font.GothamBold
			LabelMainText_2.Text = tostring(Title)
			LabelMainText_2.TextColor3 = HawkLib.Themes[theme].NotificationNotifyTitleColor
			LabelMainText_2.TextSize = 15.000
			LabelMainText_2.TextStrokeColor3 = Color3.fromRGB(231, 231, 231)
			LabelMainText_2.TextXAlignment = Enum.TextXAlignment.Left
			LabelMainText_2.TextWrapped = true

			LabelText_2.Name = "LabelText"
			LabelText_2.Parent = Listing_2
			LabelText_2.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			LabelText_2.BackgroundTransparency = 1.000
			LabelText_2.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			LabelText_2.BorderSizePixel = 0
			LabelText_2.Position = UDim2.new(0.104972377, 0, -2.28571439, 0)
			LabelText_2.Size = UDim2.new(0, 232, 0, 17)
			LabelText_2.Font = Enum.Font.Gotham
			LabelText_2.Text = tostring(Text)
			LabelText_2.TextColor3 = HawkLib.Themes[theme].NotificationNotifyTextColor
			LabelText_2.TextSize = 15.000
			LabelText_2.TextStrokeColor3 = HawkLib.Themes[theme].NotificationNotifyTextColor
			LabelText_2.TextXAlignment = Enum.TextXAlignment.Left
			LabelText_2.TextWrapped = true

			IconFrame_2.Name = "IconFrame"
			IconFrame_2.Parent = notificationcontainer
			IconFrame_2.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
			IconFrame_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
			IconFrame_2.Position = UDim2.new(0.0421351716, 0, 0.161546558, 0)
			IconFrame_2.Size = UDim2.new(0, 41, 0, 41)

			UICorner_7.Parent = IconFrame_2

			Shadow_2.Name = "Shadow"
			Shadow_2.Parent = IconFrame_2
			Shadow_2.Active = true
			Shadow_2.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			Shadow_2.BackgroundTransparency = 1.000
			Shadow_2.Position = UDim2.new(0, -15, 0, -15)
			Shadow_2.Size = UDim2.new(1, 30, 1, 30)
			Shadow_2.ZIndex = 0
			Shadow_2.Image = "rbxassetid://5028857084"
			Shadow_2.ImageColor3 = HawkLib.Themes[theme].IconShadow
			Shadow_2.ScaleType = Enum.ScaleType.Slice
			Shadow_2.SliceCenter = Rect.new(24, 24, 276, 276)

			Icon_2.Name = "Icon"
			Icon_2.Parent = IconFrame_2
			Icon_2.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			Icon_2.BackgroundTransparency = 1.000
			Icon_2.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			Icon_2.Position = UDim2.new(0.159283891, 0, 0.179691225, 0)
			Icon_2.Size = UDim2.new(0, 26, 0, 26)
			Icon_2.Image = "http://www.roblox.com/asset/?id=7021995683"
			Icon_2.ImageColor3 = HawkLib.Themes[theme].IconColor			

			UIStroke_2.Parent = notificationcontainer
			UIStroke_2.Color = HawkLib.Themes[theme].NotifyButtons
			UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			if Selector == "Done" then
				Icon_2.Image = "rbxassetid://3926305904"
				Icon_2.ImageRectOffset = Vector2.new(644, 204)
				Icon_2.ImageRectSize = Vector2.new(36, 36)
				IconFrame_2.BackgroundColor3 = Color3.fromRGB(7, 197, 90)
			elseif Selector == "Error" then
				Icon_2.Image = "rbxassetid://3926305904"
				Icon_2.ImageRectOffset = Vector2.new(924, 724)
				Icon_2.ImageRectSize = Vector2.new(34, 36)
				IconFrame_2.BackgroundColor3 = Color3.fromRGB(255, 96, 96)
			elseif Selector == "Warning" or Selector == "Warn" then
				Icon_2.Image = "rbxassetid://163905183"
				Icon_2.ImageRectOffset = Vector2.new(0, 0)
				Icon_2.ImageRectSize = Vector2.new(0, 0)
				IconFrame_2.BackgroundColor3 = Color3.fromRGB(255, 140, 24)
			elseif Selector == "Notification" or Selector == "Notify" then
				Icon_2.Image = "rbxassetid://7021995683"
				Icon_2.ImageRectOffset = Vector2.new(0, 0)
				Icon_2.ImageRectSize = Vector2.new(0, 0)
				IconFrame_2.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
			end

			if Description <= 29 then
				notification.Size = NotificationSettings.notification[1]
				notificationcontainer.Size = NotificationSettings.notification[1]

				Listing_2.Size = NotificationSettings.listing.Size[1]
				Listing_2.Position = NotificationSettings.listing.Position[1]

				IconFrame_2.Position = NotificationSettings.icon[1]

				LabelText_2.Size = NotificationSettings.description[1]
			elseif Description > 29 and Description <= 37 then
				notification.Size = NotificationSettings.notification[2]
				notificationcontainer.Size = NotificationSettings.notification[2]

				Listing_2.Size = NotificationSettings.listing.Size[2]
				Listing_2.Position = NotificationSettings.listing.Position[2]

				IconFrame_2.Position = NotificationSettings.icon[2]

				LabelText_2.Size = NotificationSettings.description[2]
			elseif Description > 37 and Description <= 66 then
				notification.Size = NotificationSettings.notification[3]
				notificationcontainer.Size = NotificationSettings.notification[3]

				Listing_2.Size = NotificationSettings.listing.Size[3]
				Listing_2.Position = NotificationSettings.listing.Position[3]

				IconFrame_2.Position = NotificationSettings.icon[3]

				LabelText_2.Size = NotificationSettings.description[3]
			end

			task.spawn(function()
				TweenService:Create(
					notificationcontainer,
					TweenInfo.new(1.5, Enum.EasingStyle.Quad),
					{Position = UDim2.new(0, 0, 0, 0)}
				):Play()
				wait(tonumber(Cooldowm))
				TweenService:Create(
					notificationcontainer,
					TweenInfo.new(1.8, Enum.EasingStyle.Linear),
					{Position = UDim2.new(15, 0, 0, 0)}
				):Play()
				wait(3)
				notification:Destroy()			
			end)

		end


		function NotificationItems:Notify(title, text, Selector, callback)			
			local Description = #text

			if notiftheme == nil then
				theme = "Dark"
			else
				theme = tostring(notiftheme)
			end

			callback = callback or function()
			end

			local notify = Instance.new("Frame")
			local notifycontainer = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Listing = Instance.new("Frame")
			local UIListLayout_2 = Instance.new("UIListLayout")
			local LabelMainText = Instance.new("TextLabel")
			local LabelText = Instance.new("TextLabel")
			local IconFrame = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local Shadow = Instance.new("ImageLabel")
			local Icon = Instance.new("ImageLabel")
			local UIStroke = Instance.new("UIStroke")
			local clear = Instance.new("ImageButton")
			local done = Instance.new("ImageButton")
			local UICorner_3 = Instance.new("UICorner")
			local full = #tostring(title) + #tostring(text)

			notify.Name = "notify"
			notify.Parent = NotifyListing
			notify.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			notify.BackgroundTransparency = 1.000
			notify.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			notify.BorderSizePixel = 0
			notify.Size = UDim2.new(0, 251, 0, 61)
			notify.Size = UDim2.new(0, full+200, 0, 61)

			notifycontainer.Name = "notifycontainer"
			notifycontainer.Parent = notify
			notifycontainer.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			notifycontainer.BackgroundTransparency = 0.200
			notifycontainer.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			notifycontainer.BorderSizePixel = 0
			notifycontainer.Position = UDim2.new(-22, 0, 0, 0)
			notifycontainer.Size = UDim2.new(0, 251, 0, 61)
			notifycontainer.Size = UDim2.new(0, full+200, 0, 61)

			UICorner.Parent = notifycontainer

			Listing.Name = "Listing"
			Listing.Parent = notifycontainer
			Listing.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			Listing.BackgroundTransparency = 1.000
			Listing.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			Listing.BorderSizePixel = 0
			Listing.Position = UDim2.new(0.239999995, 0, 0.239999995, 0)
			Listing.Size = UDim2.new(0, 181, 0, 35)

			UIListLayout_2.Parent = Listing
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

			LabelMainText.Name = "LabelMainText"
			LabelMainText.Parent = Listing
			LabelMainText.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			LabelMainText.BackgroundTransparency = 1.000
			LabelMainText.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			LabelMainText.BorderSizePixel = 0
			LabelMainText.Position = UDim2.new(-0.161290318, 0, 0.4375, 0)
			LabelMainText.Size = UDim2.new(0, 232, 0, 17)
			LabelMainText.Font = Enum.Font.GothamBold
			LabelMainText.Text = title
			LabelMainText.TextColor3 = HawkLib.Themes[theme].NotificationNotifyTitleColor
			LabelMainText.TextSize = 15.000
			LabelMainText.TextXAlignment = Enum.TextXAlignment.Left

			LabelText.Name = "LabelText"
			LabelText.Parent = Listing
			LabelText.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			LabelText.BackgroundTransparency = 1.000
			LabelText.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			LabelText.BorderSizePixel = 0
			LabelText.Position = UDim2.new(-0.0497237556, 0, -1.7428571, 0)
			LabelText.Size = UDim2.new(0, 162, 0, 17)
			LabelText.Font = Enum.Font.Gotham
			LabelText.Text = text
			LabelText.TextColor3 = HawkLib.Themes[theme].NotificationNotifyTextColor
			LabelText.TextSize = 15.000
			LabelText.TextXAlignment = Enum.TextXAlignment.Left

			IconFrame.Name = "IconFrame"
			IconFrame.Parent = notifycontainer
			IconFrame.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
			IconFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
			IconFrame.Position = UDim2.new(0.0421351716, 0, 0.161546558, 0)
			IconFrame.Size = UDim2.new(0, 41, 0, 41)

			UICorner_2.Parent = IconFrame

			Shadow.Name = "Shadow"
			Shadow.Parent = IconFrame
			Shadow.Active = true
			Shadow.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			Shadow.BackgroundTransparency = 1.000
			Shadow.Position = UDim2.new(0, -15, 0, -15)
			Shadow.Size = UDim2.new(1, 30, 1, 30)
			Shadow.ZIndex = 0
			Shadow.Image = "rbxassetid://5028857084"
			Shadow.ImageColor3 = HawkLib.Themes[theme].IconShadow
			Shadow.ScaleType = Enum.ScaleType.Slice
			Shadow.SliceCenter = Rect.new(24, 24, 276, 276)

			Icon.Name = "Icon"
			Icon.Parent = IconFrame
			Icon.BackgroundColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			Icon.BackgroundTransparency = 1.000
			Icon.BorderColor3 = HawkLib.Themes[theme].NotificationNotifyColor
			Icon.Position = UDim2.new(0.159283891, 0, 0.179691225, 0)
			Icon.Size = UDim2.new(0, 26, 0, 26)
			Icon.Image = "http://www.roblox.com/asset/?id=7021995683"
			Icon.ImageColor3 = HawkLib.Themes[theme].IconColor

			UIStroke.Parent = notifycontainer
			UIStroke.Color = HawkLib.Themes[theme].NotifyButtons
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			clear.Name = "clear"
			clear.Parent = notifycontainer
			clear.BackgroundTransparency = 1.000
			clear.LayoutOrder = 5
			clear.Position = UDim2.new(0.886262715, 0, 0.539350688, 0)
			clear.Size = UDim2.new(0, 19, 0, 19)
			clear.ZIndex = 2
			clear.Image = "rbxassetid://3926305904"
			clear.ImageColor3 = HawkLib.Themes[theme].NotifyButtons
			clear.ImageRectOffset = Vector2.new(924, 724)
			clear.ImageRectSize = Vector2.new(36, 36)
			clear.MouseButton1Down:Connect(
				function()
					TweenService:Create(
						notifycontainer,
						TweenInfo.new(8, Enum.EasingStyle.Quad),
						{Position = UDim2.new(-22, 0, 0, 0)}
					):Play()	
					wait(0.2)
					notify:Destroy()
				end
			)


			done.Name = "done"
			done.Parent = notifycontainer
			done.BackgroundTransparency = 1.000
			done.LayoutOrder = 1
			done.Position = UDim2.new(0.886262596, 0, 0.174426973, 0)
			done.Size = UDim2.new(0, 19, 0, 19)
			done.ZIndex = 2
			done.Image = "rbxassetid://3926305904"
			done.ImageColor3 = HawkLib.Themes[theme].NotifyButtons
			done.ImageRectOffset = Vector2.new(644, 204)
			done.ImageRectSize = Vector2.new(36, 36)
			done.MouseButton1Down:Connect(
				function()
					for i, v in pairs(notify:GetDescendants()) do
						if v:IsA("Frame") then
							TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
						elseif v:IsA("UIStroke") then
							TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {Transparency = 1}):Play()
						elseif v:IsA("TextLabel") then
							TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
						elseif v:IsA("ImageButton") then
							TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
						elseif v:IsA("ImageLabel") then
							TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
						end
					end
					TweenService:Create(
						notify,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundTransparency = 1}
					):Play()
					wait(0.2)
					notify:Destroy()
					pcall(callback)
				end
			)


			UICorner_3.Parent = notify

			if Selector == "Done" then
				Icon.Image = "rbxassetid://3926305904"
				Icon.ImageRectOffset = Vector2.new(644, 204)
				Icon.ImageRectSize = Vector2.new(36, 36)
				IconFrame.BackgroundColor3 = Color3.fromRGB(7, 197, 90)
			elseif Selector == "Error" then
				Icon.Image = "rbxassetid://3926305904"
				Icon.ImageRectOffset = Vector2.new(924, 724)
				Icon.ImageRectSize = Vector2.new(34, 36)
				IconFrame.BackgroundColor3 = Color3.fromRGB(255, 96, 96)
			elseif Selector == "Warning" or Selector == "Warn" then
				Icon.Image = "rbxassetid://163905183"
				Icon.ImageRectOffset = Vector2.new(0, 0)
				Icon.ImageRectSize = Vector2.new(0, 0)
				IconFrame.BackgroundColor3 = Color3.fromRGB(255, 140, 24)
			elseif Selector == "Notification" or Selector == "Notify" then
				Icon.Image = "rbxassetid://7021995683"
				Icon.ImageRectOffset = Vector2.new(0, 0)
				Icon.ImageRectSize = Vector2.new(0, 0)
				IconFrame.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
			end


			if Description <= 29 then
				notify.Size = NotificationSettings.notification[1]
				notifycontainer.Size = NotificationSettings.notification[1]

				Listing.Size = NotificationSettings.listing.Size[1]
				Listing.Position = NotificationSettings.listing.Position[1]

				IconFrame.Position = NotificationSettings.icon[1]

				LabelText.Size = NotificationSettings.description[1]

				done.Position = NotificationSettings.checkmark[1]
				clear.Position = NotificationSettings.crossmark[1]
			elseif Description > 29 and Description <= 37 then
				notify.Size = NotificationSettings.notification[2]
				notifycontainer.Size = NotificationSettings.notification[2]

				Listing.Size = NotificationSettings.listing.Size[2]
				Listing.Position = NotificationSettings.listing.Position[2]

				IconFrame.Position = NotificationSettings.icon[2]

				LabelText.Size = NotificationSettings.description[2]

				done.Position = NotificationSettings.checkmark[2]
				clear.Position = NotificationSettings.crossmark[2]
			elseif Description > 37 and Description <= 66 then
				notify.Size = NotificationSettings.notification[3]
				notifycontainer.Size = NotificationSettings.notification[3]

				Listing.Size = NotificationSettings.listing.Size[3]
				Listing.Position = NotificationSettings.listing.Position[3]

				IconFrame.Position = NotificationSettings.icon[3]

				LabelText.Size = NotificationSettings.description[3]

				done.Position = NotificationSettings.checkmark[3]
				clear.Position = NotificationSettings.crossmark[3]
			end

			TweenService:Create(
				notifycontainer,
				TweenInfo.new(1.5, Enum.EasingStyle.Quad),
				{Position = UDim2.new(0, 0, 0, 0)}
			):Play()	
		end

		return NotificationItems
	end
end
return HawkLib
