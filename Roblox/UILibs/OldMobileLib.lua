local Hanki = {}
for i, v in pairs(game.CoreGui:GetDescendants()) do
	if v.Name == "Hawk" then
		v:Destroy()
	end
end
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

function Hanki:DraggingEnabled(frame, parent)

	parent = parent or frame

	-- stolen from wally or kiriot, kek
	local dragging = false
	local dragInput, mousePos, framePos

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			mousePos = input.Position
			framePos = parent.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	input.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - mousePos
			parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
		end
	end)
end


function Hanki:Window(ScrName)
	local taklakinq = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/TaklaKing.lua", true))()

	if taklakinq == "TaklaKing" then
		if _Hawk == "ohhahtuhthttouttpwuttuaunbotwo" then

			for i, v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "Hawk" then
					v:Destroy()
				end
			end


			local Players = game:GetService('Players')
			local UIS = game:GetService("UserInputService")
			local FirstTab = false
			local focusing = false
			local Hawk = Instance.new("ScreenGui")
			local Main = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Glow = Instance.new("ImageLabel")
			local TitleBar = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local ScriptName = Instance.new("TextLabel")
			local UICorner_3 = Instance.new("UICorner")
			local Close = Instance.new("TextButton")
			local UICorner_4 = Instance.new("UICorner")
			local Minify = Instance.new("TextButton")
			local UICorner_5 = Instance.new("UICorner")
			local Tabs = Instance.new("Frame")
			local UICorner_6 = Instance.new("UICorner")
			local TabContainer = Instance.new("ScrollingFrame")
			local UICorner_7 = Instance.new("UICorner")
			local UIListLayout = Instance.new("UIListLayout")
			local Opin = Instance.new("Frame")
			local Open = Instance.new("TextButton")
			local uicrn = Instance.new("UICorner")
			local uicrn2 = Instance.new("UICorner")
			local glow = Instance.new("ImageLabel")
			local Hawk_2 = Instance.new("ImageLabel")
			local CloseIcon = Instance.new("ImageButton")
			local Pages = Instance.new("Frame")
			local UICorner_10 = Instance.new("UICorner")

			Hawk.Name = "Hawk"
			Hawk.Parent = game:GetService("CoreGui")
			Hawk.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			Hawk.ResetOnSpawn = false

			Main.Name = "Main"
			Main.Parent = Hawk
			Main.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
			Main.BorderColor3 = Color3.fromRGB(26, 26, 26)
			Main.Position = UDim2.new(0.5, -241, 0.5, -145)
			Main.Size = UDim2.new(0, 482, 0, 290)
			Main.Draggable = true

			Hanki:DraggingEnabled(TitleBar, Main)
			Hanki:DraggingEnabled(Tabs, Main)

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
			TitleBar.Active = true
			TitleBar.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			TitleBar.BorderColor3 = Color3.fromRGB(34, 34, 34)
			TitleBar.Size = UDim2.new(1, 0, -0.0310344826, 38)

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TitleBar

			ScriptName.Name = "ScriptName"
			ScriptName.Parent = TitleBar
			ScriptName.Active = true
			ScriptName.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
			ScriptName.BackgroundTransparency = 1.000
			ScriptName.BorderColor3 = Color3.fromRGB(33, 33, 33)
			ScriptName.Position = UDim2.new(0.0195694715, 0, 0.1875, 0)
			ScriptName.Size = UDim2.new(0, 123, 0, 19)
			ScriptName.Font = Enum.Font.GothamBlack
			ScriptName.Text = ScrName
			ScriptName.TextColor3 = Color3.fromRGB(154, 154, 154)
			ScriptName.TextSize = 14.000
			ScriptName.TextXAlignment = Enum.TextXAlignment.Left

			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = ScriptName

			Close.Name = "Close"
			Close.Parent = TitleBar
			Close.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			Close.BackgroundTransparency = 1.000
			Close.BorderColor3 = Color3.fromRGB(39, 39, 39)
			Close.Position = UDim2.new(0.943983376, 0, 0, 0)
			Close.Size = UDim2.new(0, 26, 0, 29)
			Close.Font = Enum.Font.GothamBold
			Close.Text = "X"
			Close.TextColor3 = Color3.fromRGB(154, 154, 154)
			Close.TextSize = 18.000
			Close.MouseButton1Down:Connect(function()
				for i, v in pairs(game.CoreGui:GetDescendants()) do
					if v.Name == "Hawk" then
						v:Destroy()
					end
				end
			end)

			UICorner_4.CornerRadius = UDim.new(0, 5)
			UICorner_4.Parent = Close

			Minify.Name = "Minify"
			Minify.Parent = TitleBar
			Minify.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			Minify.BackgroundTransparency = 1.000
			Minify.BorderColor3 = Color3.fromRGB(39, 39, 39)
			Minify.Position = UDim2.new(0.902076066, 0, 0, 0)
			Minify.Size = UDim2.new(0, 20, 0, 29)
			Minify.Font = Enum.Font.GothamBold
			Minify.Text = "-"
			Minify.TextColor3 = Color3.fromRGB(154, 154, 154)
			Minify.TextSize = 18.000
			Minify.MouseButton1Down:Connect(
				function()
					Opin.Visible = true
					Main.Visible = false
				end
			)

			UICorner_5.CornerRadius = UDim.new(0, 5)
			UICorner_5.Parent = Minify

			Tabs.Name = "Tabs"
			Tabs.Parent = Main
			Tabs.Active = true
			Tabs.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			Tabs.BorderColor3 = Color3.fromRGB(34, 34, 34)
			Tabs.Position = UDim2.new(0, 0, 0.0816878751, 0)
			Tabs.Size = UDim2.new(0, 111, 0, 266)

			UICorner_6.CornerRadius = UDim.new(0, 4)
			UICorner_6.Parent = Tabs

			TabContainer.Name = "TabContainer"
			TabContainer.Parent = Tabs
			TabContainer.Active = true
			TabContainer.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			TabContainer.BackgroundTransparency = 1.000
			TabContainer.BorderColor3 = Color3.fromRGB(39, 39, 39)
			TabContainer.ClipsDescendants = true
			TabContainer.Position = UDim2.new(0, 0, 0.267, 0)
			TabContainer.Size = UDim2.new(0, 111, 0, 184)
			TabContainer.ScrollBarImageTransparency = 1
			TabContainer.ScrollBarThickness = 0
			TabContainer.ScrollBarImageColor3 = Color3.fromRGB(39, 39, 39)

			UICorner_7.CornerRadius = UDim.new(0, 5)
			UICorner_7.Parent = TabContainer

			UIListLayout.Parent = TabContainer
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 7)

			Opin.Name = "Opin"
			Opin.Parent = Hawk
			Opin.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			Opin.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Opin.Position = UDim2.new(-0.00600000005, 0, 0.5, -17)
			Opin.Size = UDim2.new(0, 110, 0, 34)
			Opin.Visible = false

			Open.Name = "Open"
			Open.Parent = Opin
			Open.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
			Open.BackgroundTransparency = 1.000
			Open.BorderColor3 = Color3.fromRGB(31, 31, 31)
			Open.Position = UDim2.new(-0.00638686121, 0, 0.5, -17)
			Open.Size = UDim2.new(0, 110, 0, 34)
			Open.Font = Enum.Font.GothamBold
			Open.Text = "Open"
			Open.TextColor3 = Color3.fromRGB(255, 255, 255)
			Open.TextSize = 14.000
			Open.MouseButton1Down:Connect(
				function()
					Opin.Visible = false
					Main.Visible = true
				end
			)

			uicrn.CornerRadius = UDim.new(0, 5)
			uicrn.Parent = Open

			uicrn2.CornerRadius = UDim.new(0, 5)
			uicrn2.Parent = Opin

			glow.Name = "Glow"
			glow.Parent = Opin
			glow.Active = true
			glow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			glow.BackgroundTransparency = 1.000
			glow.Position = UDim2.new(0, -15, 0, -15)
			glow.Size = UDim2.new(1, 30, 1, 30)
			glow.ZIndex = 0
			glow.Image = "rbxassetid://5028857084"
			glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			glow.ScaleType = Enum.ScaleType.Slice
			glow.SliceCenter = Rect.new(24, 24, 276, 276)

			Hawk_2.Name = "Hawk"
			Hawk_2.Parent = Tabs
			Hawk_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			Hawk_2.BackgroundTransparency = 1.000
			Hawk_2.BorderColor3 = Color3.fromRGB(39, 39, 39)
			Hawk_2.Position = UDim2.new(0.198198199, 0, -0.00375939906, 0)
			Hawk_2.Size = UDim2.new(0, 66, 0, 66)
			Hawk_2.Image = "rbxassetid://10179402650"
			Hawk_2.ImageColor3 = Color3.fromRGB(225, 225, 225)

			CloseIcon.Name = "CloseIcon"
			CloseIcon.Parent = TitleBar
			CloseIcon.Active = true
			CloseIcon.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
			CloseIcon.BackgroundTransparency = 1.000
			CloseIcon.BorderColor3 = Color3.fromRGB(51, 51, 51)
			CloseIcon.Position = UDim2.new(0.85, 0, 0, 0)
			CloseIcon.Size = UDim2.new(0, 27, 0, 26)
			CloseIcon.Image = "rbxassetid://6034818372"
			CloseIcon.ImageColor3 = Color3.fromRGB(189, 189, 189)

			Pages.Name = "Pages"
			Pages.Parent = Main
			Pages.Active = true
			Pages.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
			Pages.BorderColor3 = Color3.fromRGB(26, 26, 26)
			Pages.Position = UDim2.new(0.230290458, 0, 0.115757912, 0)
			Pages.Size = UDim2.new(0, 363, 0, 255)

			UICorner_10.CornerRadius = UDim.new(0, 5)
			UICorner_10.Parent = Pages

			local klozet31 = false
			CloseIcon.MouseButton1Down:Connect(
				function()
					if klozet31 == false then
						Tabs:TweenSize(UDim2.new(0, 1,0, 266))
						TabContainer.Visible = false
						Pages.Visible = false
						Hawk_2.Visible = false
						wait(1)
						Main:TweenSize(UDim2.new(0, 482, 0, 26),"Out")
						TitleBar:TweenSize(UDim2.new(1, 0, -0.03, 38),"Out")
						Tabs.Visible = false
						TweenService:Create(
							CloseIcon,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Rotation = 180}
						):Play()
						Pages.Visible = false
						wait(1)
						klozet31 = true
					elseif klozet31 == true then
						Main:TweenSize(UDim2.new(0, 482, 0, 290),"Out")
						TitleBar:TweenSize(UDim2.new(1, 0, -0.03, 38),"Out")
						TweenService:Create(
							CloseIcon,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{Rotation = 0}
						):Play()
						wait(1)
						Tabs.Visible = true
						Tabs:TweenSize(UDim2.new(0, 111,0, 266))
						wait(1)
						Pages.Visible = true
						TabContainer.Visible = true
						Pages.Visible = true
						Hawk_2.Visible = true
						wait(1)
						klozet31 = false
					end
				end)

			local function TaklayaGeldin()
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
						if (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1) and UIS:GetFocusedTextBox() == nil then
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
			coroutine.wrap(TaklayaGeldin)()

			function Hanki:Bildirim(noftext, desctext, Time)
				for i, v in pairs(Main:GetDescendants()) do
					if v.Name == "NotificationHold" then
						v:Destroy()
					end
				end
				Time = string.sub(Time, 0)

				local NotificationHold = Instance.new("TextButton")
				local NotificationFrame = Instance.new("Frame")
				local NotificationTitle = Instance.new("TextLabel")
				local NotificationDesc = Instance.new("TextLabel")
				local uu = Instance.new("UICorner")

				NotificationHold.Name = "NotificationHold"
				NotificationHold.Parent = Main
				NotificationHold.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
				NotificationHold.BackgroundTransparency = 0.700
				NotificationHold.BorderSizePixel = 0
				NotificationHold.Size = UDim2.new(0, 482, 0, 290)
				NotificationHold.AutoButtonColor = false
				NotificationHold.Font = Enum.Font.SourceSans
				NotificationHold.Text = ""
				NotificationHold.TextColor3 = Color3.fromRGB(0, 0, 0)
				NotificationHold.TextSize = 14.000

				uu.CornerRadius = UDim.new(0, 5)
				uu.Parent = NotificationHold

				TweenService:Create(
					NotificationHold,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.7}
				):Play()
				wait(0.4)

				NotificationFrame.Name = "NotificationFrame"
				NotificationFrame.Parent = NotificationHold
				NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				NotificationFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				NotificationFrame.BorderSizePixel = 0
				NotificationFrame.ClipsDescendants = true
				NotificationFrame.Position = UDim2.new(0.5, 0, 0.498432577, 0)
				NotificationFrame.Size = UDim2.new(0, 0, 0, 0)		

				NotificationFrame:TweenSize(UDim2.new(0, 205,0, 183), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

				local zord = uu:Clone()
				zord.Parent = NotificationFrame

				NotificationTitle.Name = "NotificationTitle"
				NotificationTitle.Parent = NotificationFrame
				NotificationTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				NotificationTitle.BackgroundTransparency = 1.000
				NotificationTitle.Position = UDim2.new(0.0559394211, 0, 0.0652336925, 0)
				NotificationTitle.Size = UDim2.new(0, 188, 0, 16)
				NotificationTitle.ZIndex = 3
				NotificationTitle.Font = Enum.Font.Gotham
				NotificationTitle.Text = noftext
				NotificationTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				NotificationTitle.TextSize = 24.000
				NotificationTitle.TextTransparency = 1

				NotificationDesc.Name = "NotificationDesc"
				NotificationDesc.Parent = NotificationFrame
				NotificationDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				NotificationDesc.BackgroundTransparency = 1.000
				NotificationDesc.Position = UDim2.new(0.0670000017, 0, 0.218999997, 0)
				NotificationDesc.Size = UDim2.new(0, 188, 0, 46)
				NotificationDesc.Font = Enum.Font.Gotham
				NotificationDesc.Text = desctext
				NotificationDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
				NotificationDesc.TextSize = 20.000
				NotificationDesc.TextWrapped = true
				NotificationDesc.TextXAlignment = Enum.TextXAlignment.Center
				NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top
				NotificationDesc.TextTransparency = 1

				wait(0.5)
				for i = 1,10 do
					NotificationTitle.TextTransparency = 1-(i/10)
					wait()
				end
				for i = 1,10 do
					NotificationDesc.TextTransparency = 1-(i/10)
					wait()
				end


				wait(Time)

				NotificationFrame:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

				wait(0.4)

				TweenService:Create(
					NotificationHold,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				):Play()

				wait(.3)

				NotificationHold:Destroy()

			end

			function Hanki:Bildir(noftext, desctext, btntext, kalbek)
				kalbek = kalbek or function() end
				for i, v in pairs(Main:GetDescendants()) do
					if v.Name == "NotificationHold" then
						v:Destroy()
					end
				end
				local NotificationHold = Instance.new("TextButton")
				local NotificationFrame = Instance.new("Frame")
				local OkayBtn = Instance.new("TextButton")
				local OkayBtnCorner = Instance.new("UICorner")
				local OkayBtnTitle = Instance.new("TextLabel")
				local NotificationTitle = Instance.new("TextLabel")
				local NotificationDesc = Instance.new("TextLabel")
				local uu = Instance.new("UICorner")

				NotificationHold.Name = "NotificationHold"
				NotificationHold.Parent = Main
				NotificationHold.BackgroundColor3 = Color3.fromRGB(125, 125, 125)
				NotificationHold.BackgroundTransparency = 0.700
				NotificationHold.BorderSizePixel = 0
				NotificationHold.Size = UDim2.new(0, 482, 0, 290)
				NotificationHold.AutoButtonColor = false
				NotificationHold.Font = Enum.Font.SourceSans
				NotificationHold.Text = ""
				NotificationHold.TextColor3 = Color3.fromRGB(0, 0, 0)
				NotificationHold.TextSize = 14.000

				uu.CornerRadius = UDim.new(0, 5)
				uu.Parent = NotificationHold

				TweenService:Create(
					NotificationHold,
					TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.7}
				):Play()
				wait(0.4)

				NotificationFrame.Name = "NotificationFrame"
				NotificationFrame.Parent = NotificationHold
				NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				NotificationFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				NotificationFrame.BorderSizePixel = 0
				NotificationFrame.ClipsDescendants = true
				NotificationFrame.Position = UDim2.new(0.5, 0, 0.498432577, 0)
				NotificationFrame.Size = UDim2.new(0, 0, 0, 0)		

				NotificationFrame:TweenSize(UDim2.new(0, 205,0, 183), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

				local zord = uu:Clone()
				zord.Parent = NotificationFrame

				OkayBtn.Name = "OkayBtn"
				OkayBtn.Parent = NotificationFrame
				OkayBtn.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
				OkayBtn.Position = UDim2.new(0.088, 0, 0.759717345, 0)
				OkayBtn.Size = UDim2.new(0, 170, 0, 32)
				OkayBtn.AutoButtonColor = false
				OkayBtn.Font = Enum.Font.SourceSans
				OkayBtn.Text = ""
				OkayBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
				OkayBtn.TextSize = 14.000
				OkayBtn.BackgroundTransparency = 1
				OkayBtn.TextTransparency = 1

				OkayBtnCorner.CornerRadius = UDim.new(0, 5)
				OkayBtnCorner.Name = "OkayBtnCorner"
				OkayBtnCorner.Parent = OkayBtn

				OkayBtnTitle.Name = "OkayBtnTitle"
				OkayBtnTitle.Parent = OkayBtn
				OkayBtnTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				OkayBtnTitle.BackgroundTransparency = 1.000
				OkayBtnTitle.Size = UDim2.new(0, 170, 0, 32)
				OkayBtnTitle.Text = btntext
				OkayBtnTitle.Font = Enum.Font.Gotham
				OkayBtnTitle.TextColor3 = Color3.fromRGB(202, 202, 202)
				OkayBtnTitle.TextSize = 24.000
				OkayBtnTitle.TextTransparency = 1

				NotificationTitle.Name = "NotificationTitle"
				NotificationTitle.Parent = NotificationFrame
				NotificationTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				NotificationTitle.BackgroundTransparency = 1.000
				NotificationTitle.Position = UDim2.new(0.0559394211, 0, 0.0652336925, 0)
				NotificationTitle.Size = UDim2.new(0, 188, 0, 16)
				NotificationTitle.ZIndex = 3
				NotificationTitle.Font = Enum.Font.Gotham
				NotificationTitle.Text = noftext
				NotificationTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				NotificationTitle.TextSize = 24.000
				NotificationTitle.TextTransparency = 1

				NotificationDesc.Name = "NotificationDesc"
				NotificationDesc.Parent = NotificationFrame
				NotificationDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				NotificationDesc.BackgroundTransparency = 1.000
				NotificationDesc.Position = UDim2.new(0.0670000017, 0, 0.218999997, 0)
				NotificationDesc.Size = UDim2.new(0, 188, 0, 46)
				NotificationDesc.Font = Enum.Font.Gotham
				NotificationDesc.Text = desctext
				NotificationDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
				NotificationDesc.TextSize = 20.000
				NotificationDesc.TextWrapped = true
				NotificationDesc.TextXAlignment = Enum.TextXAlignment.Center
				NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top
				NotificationDesc.TextTransparency = 1

				wait(0.5)
				for i = 1,10 do
					NotificationTitle.TextTransparency = 1-(i/10)
					wait()
				end
				for i = 1,10 do
					NotificationDesc.TextTransparency = 1-(i/10)
					wait()
				end
				for i = 1,10 do
					OkayBtn.BackgroundTransparency = 1-(i/10)
					wait()
				end
				for i = 1,10 do
					OkayBtnTitle.TextTransparency = 1-(i/10)
					wait()
				end

				OkayBtn.MouseEnter:Connect(function()
					TweenService:Create(
						OkayBtn,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(37,37,37)}
					):Play()
				end)

				OkayBtn.MouseLeave:Connect(function()
					TweenService:Create(
						OkayBtn,
						TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(49, 49, 49)}
					):Play()
				end)

				OkayBtn.MouseButton1Click:Connect(function()
					for i = 1,10 do
						NotificationTitle.TextTransparency = i/10
						NotificationDesc.TextTransparency = i/10
						OkayBtn.BackgroundTransparency = i/10
						OkayBtnTitle.TextTransparency = i/10
						wait()
					end
					NotificationFrame:TweenSize(UDim2.new(0, 0,0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

					wait(0.4)

					TweenService:Create(
						NotificationHold,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 1}
					):Play()

					wait(.3)

					NotificationHold:Destroy()
					pcall(kalbek)
				end)
			end			

			local TabS = {}

			function TabS:Tab(TabName)
				local Tab = Instance.new("Frame")
				local TabButton = Instance.new("TextButton")
				local UICorner_8 = Instance.new("UICorner")
				local UICorner_9 = Instance.new("UICorner")
				local Page = Instance.new("ScrollingFrame")
				local PageLayout = Instance.new("UIListLayout")

				Tab.Name = "Tab"
				Tab.Parent = TabContainer
				Tab.Active = true
				Tab.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
				Tab.BorderColor3 = Color3.fromRGB(50, 50, 50)
				Tab.Position = UDim2.new(-0.0450450443, 0, 0, 0)
				Tab.Size = UDim2.new(0, 95, 0, 28)
				Tab.BackgroundTransparency = 1.000

				TabButton.Name = "TabButton"
				TabButton.Parent = Tab
				TabButton.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
				TabButton.BackgroundTransparency = 1.000
				TabButton.BorderColor3 = Color3.fromRGB(39, 39, 39)
				TabButton.Position = UDim2.new(-0.00389254093, 0, 0, 0)
				TabButton.Size = UDim2.new(0, 95, 0, 28)
				TabButton.Font = Enum.Font.GothamBold
				TabButton.Text = TabName
				TabButton.TextColor3 = Color3.fromRGB(166, 166, 166)
				TabButton.TextSize = 14.000

				UICorner_8.CornerRadius = UDim.new(0, 5)
				UICorner_8.Parent = TabButton

				UICorner_9.CornerRadius = UDim.new(0, 5)
				UICorner_9.Parent = Tab

				Page.Name = "Page"
				Page.Parent = Pages
				Page.Active = true
				Page.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
				Page.BorderColor3 = Color3.fromRGB(26, 26, 26)
				Page.BorderSizePixel = 0
				Page.Position = UDim2.new(0.019704435, 0, 0.017576091, 0)
				Page.Size = UDim2.new(0, 362, 0, 251)
				Page.ScrollBarImageColor3 = Color3.fromRGB(99, 99, 99)
				Page.ScrollBarThickness = 4
				Page.Visible = false

				PageLayout.Parent = Page
				PageLayout.SortOrder = Enum.SortOrder.LayoutOrder
				PageLayout.Padding = UDim.new(0, 8)

				if FirstTab == false then
					FirstTab = true
					Tab.BackgroundTransparency = 0.1
					Page.Visible = true
					TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				end

				TabButton.MouseButton1Down:Connect(
					function()
						for i, v in pairs(Pages:GetDescendants()) do
							if v.Name == "Page" then
								v.Visible = false
							end
						end
						for q, we in pairs(TabContainer:GetDescendants()) do
							if we:IsA("Frame") then
								TweenService:Create(we, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play(

								)
							elseif we:IsA("TextButton") then
								TweenService:Create(we, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextColor3 = Color3.fromRGB(166, 166, 166)}):Play(

								)
							end
							TweenService:Create(Tab, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play(

							)
							TweenService:Create(TabButton, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextColor3 = Color3.new(1, 1, 1)}):Play(

							)
						end
						Page.Visible = true
					end
				)

				TabContainer.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)	

				local ContainerItems = {}

				function ContainerItems:Label(yazi)
					local Label = Instance.new("Frame")
					local UICorner_35 = Instance.new("UICorner")
					local Label_2 = Instance.new("TextLabel")
					local UICorner_36 = Instance.new("UICorner")

					Label.Name = "Label"
					Label.Parent = Page
					Label.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					Label.BorderColor3 = Color3.fromRGB(51, 51, 51)
					Label.Position = UDim2.new(0, 0, 0.555738091, 0)
					Label.Size = UDim2.new(0, 353, 0, 28)

					UICorner_35.CornerRadius = UDim.new(0, 5)
					UICorner_35.Parent = Label

					Label_2.Name = "Label"
					Label_2.Parent = Label
					Label_2.Active = true
					Label_2.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					Label_2.BorderColor3 = Color3.fromRGB(51, 51, 51)
					Label_2.Position = UDim2.new(0.0176181514, 0, 0, 0)
					Label_2.Size = UDim2.new(0, 344, 0, 28)
					Label_2.Font = Enum.Font.GothamBold
					Label_2.TextColor3 = Color3.fromRGB(154, 154, 154)
					Label_2.TextSize = 14.000
					Label_2.TextXAlignment = Enum.TextXAlignment.Left
					Label_2.Text = yazi

					UICorner_36.CornerRadius = UDim.new(0, 5)
					UICorner_36.Parent = Label_2

					Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)

					local apdeyt = {}
					function apdeyt:UpdateLabel(test)
						Label_2.Text = test
					end
					return apdeyt
				end

				function ContainerItems:Button(yazi, callback)
					callback = callback or function()
					end

					local buttoncheck = {

					}
					
					table.insert(buttoncheck, callback)
					
					local ButtonText = Instance.new("TextLabel")
					local Button = Instance.new("TextButton")
					local UICorner = Instance.new("UICorner")
					
					ButtonText.Name = "ButtonText"
					ButtonText.Parent = Page
					ButtonText.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					ButtonText.BorderColor3 = Color3.fromRGB(51, 51, 51)
					ButtonText.Size = UDim2.new(0, 353, 0, 28)
					ButtonText.Font = Enum.Font.GothamBold
					ButtonText.TextColor3 = Color3.fromRGB(154, 154, 154)
					ButtonText.TextSize = 14.000
					ButtonText.Text = yazi

					Button.Name = "Button"
					Button.Parent = ButtonText
					Button.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					Button.BorderColor3 = Color3.fromRGB(51, 51, 51)
					Button.Size = UDim2.new(0, 353, 0, 28)
					Button.Transparency = 1
					Button.TextTransparency = 1
					Button.Text = ""

					UICorner.CornerRadius = UDim.new(0, 5)
					UICorner.Parent = ButtonText

					ButtonText.MouseEnter:Connect(
						function()
							TweenService:Create(
								ButtonText,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundColor3 = Color3.fromRGB(60, 60, 60)}
							):Play()
						end
					)
					ButtonText.MouseLeave:Connect(
						function()
							TweenService:Create(
								ButtonText,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundColor3 = Color3.fromRGB(51, 51, 51)}
							):Play()
						end
					)

					Button.MouseButton1Down:Connect(
						function()
							ButtonText.TextSize = 0
							TweenService:Create(ButtonText, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextSize = 20}):Play()
							wait(.2)
							TweenService:Create(ButtonText, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextSize = 14}):Play()
							pcall(buttoncheck[1])
						end
					)

					Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)

					local update = {}
					function update:UpdateButton(test, kalbak)
						zort = kalbak
						kalbak = kalbak or function() end

						if zort ~= nil then
							table.clear(buttoncheck)
							wait()
							table.insert(buttoncheck, kalbak)
						end

						Button.Text = test



					end
					return update
				end

				function ContainerItems:Slider(Text, minvalue, maxvalue, callback)
					minvalue = tonumber(minvalue)
					maxvalue = tonumber(maxvalue)

					callback = callback or function()
					end

					local SliderFrame = Instance.new("Frame")
					local UICorner_16 = Instance.new("UICorner")
					local SliderText = Instance.new("TextLabel")
					local UICorner_17 = Instance.new("UICorner")
					local Slider = Instance.new("Frame")
					local SliderButton = Instance.new("TextButton")
					local UICorner_18 = Instance.new("UICorner")
					local InSliderFrame = Instance.new("Frame")
					local UICorner_19 = Instance.new("UICorner")
					local Num = Instance.new("TextLabel")
					local UICorner_20 = Instance.new("UICorner")
					local UICorner_21 = Instance.new("UICorner")

					SliderFrame.Name = "SliderFrame"
					SliderFrame.Parent = Page
					SliderFrame.Active = true
					SliderFrame.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					SliderFrame.BorderColor3 = Color3.fromRGB(51, 51, 51)
					SliderFrame.Position = UDim2.new(0, 0, 0.437007874, 0)
					SliderFrame.Size = UDim2.new(0, 353, 0, 70)

					UICorner_16.CornerRadius = UDim.new(0, 5)
					UICorner_16.Parent = SliderFrame

					SliderText.Name = "SliderText"
					SliderText.Parent = SliderFrame
					SliderText.Active = true
					SliderText.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					SliderText.BorderColor3 = Color3.fromRGB(51, 51, 51)
					SliderText.Position = UDim2.new(0.0422951244, 0, 0.0857142881, 0)
					SliderText.Size = UDim2.new(0, 42, 0, 25)
					SliderText.Font = Enum.Font.GothamBold
					SliderText.Text = Text
					SliderText.TextColor3 = Color3.fromRGB(154, 154, 154)
					SliderText.TextSize = 14.000
					SliderText.TextXAlignment = Enum.TextXAlignment.Left

					UICorner_17.CornerRadius = UDim.new(0, 5)
					UICorner_17.Parent = SliderText

					Slider.Name = "Slider"
					Slider.Parent = SliderFrame
					Slider.Active = true
					Slider.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					Slider.BorderColor3 = Color3.fromRGB(40, 40, 40)
					Slider.Position = UDim2.new(0.0159998555, 0, 0.543000162, 0)
					Slider.Size = UDim2.new(0, 340, 0, 23)

					SliderButton.Name = "SliderButton"
					SliderButton.Parent = Slider
					SliderButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
					SliderButton.BackgroundTransparency = 1.000
					SliderButton.BorderColor3 = Color3.fromRGB(40, 40, 40)
					SliderButton.Size = UDim2.new(0, 340, 0, 23)
					SliderButton.Font = Enum.Font.SourceSans
					SliderButton.Text = ""
					SliderButton.TextColor3 = Color3.fromRGB(40, 40, 40)
					SliderButton.TextSize = 14.000
					SliderButton.TextStrokeColor3 = Color3.fromRGB(40, 40, 40)

					UICorner_18.CornerRadius = UDim.new(0, 5)
					UICorner_18.Parent = SliderButton

					InSliderFrame.Name = "InSliderFrame"
					InSliderFrame.Parent = SliderButton
					InSliderFrame.Active = true
					InSliderFrame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
					InSliderFrame.BorderColor3 = Color3.fromRGB(67, 67, 67)
					InSliderFrame.Size = UDim2.new(0, 8, 0, 23)

					UICorner_19.CornerRadius = UDim.new(0, 5)
					UICorner_19.Parent = InSliderFrame

					Num.Name = "Num"
					Num.Parent = SliderButton
					Num.Active = true
					Num.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					Num.BorderColor3 = Color3.fromRGB(51, 51, 51)
					Num.Position = UDim2.new(0.886039913, 0, -1.26086962, 0)
					Num.Size = UDim2.new(0, 30, 0, 18)
					Num.Font = Enum.Font.GothamBold
					Num.Text = "1"
					Num.TextColor3 = Color3.fromRGB(255, 255, 255)
					Num.TextSize = 14.000

					UICorner_20.CornerRadius = UDim.new(0, 5)
					UICorner_20.Parent = Num

					UICorner_21.CornerRadius = UDim.new(0, 5)
					UICorner_21.Parent = Slider


					local mouse = game.Players.LocalPlayer:GetMouse()
					local uis = game:GetService("UserInputService")
					local Value;


					SliderButton.MouseButton1Down:Connect(function()
						Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 340) * InSliderFrame.AbsoluteSize.X) + tonumber(minvalue)) or 0
						pcall(function()
							callback(Value)
						end)
						Num.Text = Value
						InSliderFrame:TweenSize(UDim2.new(0, math.clamp(mouse.X - InSliderFrame.AbsolutePosition.X, 0, 340), 0, 23), "InOut", "Linear", 0.05, true)					
					end)


					Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
				end

				function ContainerItems:Line()
					local Line = Instance.new("Frame")
					local LineCorner = Instance.new("UICorner")

					Line.Name = "Line"
					Line.Parent = Page
					Line.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
					Line.Position = UDim2.new(0, 0, 0.377952754, 0)
					Line.Size = UDim2.new(0, 353, 0, 7)

					LineCorner.CornerRadius = UDim.new(0, 5)
					LineCorner.Name = "LineCorner"
					LineCorner.Parent = Line

					Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
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
					Colorpicker.Parent = Page
					Colorpicker.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					Colorpicker.Position = UDim2.new(0,0,0,0)
					Colorpicker.Size = UDim2.new(0, 353, 0, 36)
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
					Title.Size = UDim2.new(0, 353, 0, 36)
					Title.Text = text
					Title.Font = Enum.Font.GothamBold
					Title.TextColor3 = Color3.fromRGB(154, 154, 154)
					Title.TextSize = 15.000
					Title.TextXAlignment = Enum.TextXAlignment.Left

					BoxColor.Name = "Boxcolor"
					BoxColor.Parent = Colorpicker
					BoxColor.BackgroundColor3 = preset
					BoxColor.Position = UDim2.new(0.88, 0, 0.24, 0)
					BoxColor.Size = UDim2.new(0, 30, 0, 19)

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
					ColorpickerFrame.Parent = Page
					ColorpickerFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
					ColorpickerFrame.BorderSizePixel = 0
					ColorpickerFrame.Position = UDim2.new(0, 0, 0, 0)
					ColorpickerFrame.Size = UDim2.new(0, 353, 0, 0)
					ColorpickerFrame.Visible = false
					ColorpickerFrame.ClipsDescendants = true

					DropdownFrameCorner.Name = "DropdownFrameCorner"
					DropdownFrameCorner.Parent = ColorpickerFrame

					Hue.Name = "Hue"
					Hue.Parent = ColorpickerFrame
					Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Hue.Position = UDim2.new(0, 166, 0, 9)
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
					Color.Size = UDim2.new(0, 150, 0, 80)
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
					Confirm.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
					Confirm.BackgroundTransparency = 0.010
					Confirm.Position = UDim2.new(0.637, 0, 0.0900000036, 0)
					Confirm.Size = UDim2.new(0, 110, 0, 27)
					Confirm.AutoButtonColor = false
					Confirm.Font = Enum.Font.Gotham
					Confirm.Text = "Confirm"
					Confirm.TextColor3 = Color3.fromRGB(255, 255, 255)
					Confirm.TextSize = 14.000

					ButtonCorner.Name = "ButtonCorner"
					ButtonCorner.Parent = Confirm

					RainbowToggle.Name = "RainbowToggle"
					RainbowToggle.Parent = ColorpickerFrame
					RainbowToggle.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
					RainbowToggle.Position = UDim2.new(0.637, 0, 0.431324542, 0)
					RainbowToggle.Size = UDim2.new(0, 110, 0, 27)
					RainbowToggle.AutoButtonColor = false
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
					RainbowTitle.Position = UDim2.new(0.06, 0, 0, 0)
					RainbowTitle.Size = UDim2.new(0, 29, 0, 27)
					RainbowTitle.Font = Enum.Font.Gotham
					RainbowTitle.Text = "Rainbow"
					RainbowTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
					RainbowTitle.TextSize = 14.000
					RainbowTitle.TextXAlignment = Enum.TextXAlignment.Left

					RainbowToggleFrame.Name = "RainbowToggleFrame"
					RainbowToggleFrame.Parent = RainbowToggle
					RainbowToggleFrame.BackgroundColor3 = Color3.fromRGB(22, 23, 27)
					RainbowToggleFrame.Position = UDim2.new(0.650, 0, 0.142857149, 0)
					RainbowToggleFrame.Size = UDim2.new(0, 36, 0, 19)

					RainbowToggleFrameCorner.CornerRadius = UDim.new(1, 0)
					RainbowToggleFrameCorner.Name = "RainbowToggleFrameCorner"
					RainbowToggleFrameCorner.Parent = RainbowToggleFrame

					RainbowToggleFrameRainbow.Name = "RainbowToggleFrameRainbow"
					RainbowToggleFrameRainbow.Parent = RainbowToggleFrame
					RainbowToggleFrameRainbow.BackgroundColor3 = Color3.fromRGB(67,136,246)
					RainbowToggleFrameRainbow.BackgroundTransparency = 1.000
					RainbowToggleFrameRainbow.Position = UDim2.new(-0.0098377371, 0, 0.00601506233, 0)
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

					Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)

					Colorpicker.MouseEnter:Connect(
						function()
							TweenService:Create(
								Colorpicker,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundColor3 = Color3.fromRGB(37,37,37)}
							):Play()
						end
					)
					Colorpicker.MouseLeave:Connect(
						function()
							TweenService:Create(
								Colorpicker,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundColor3 = Color3.fromRGB(51, 51, 51)}
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

					RainbowToggle.MouseButton1Down:Connect(
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
									UDim2.new(0, 353, 0, 100),
									Enum.EasingDirection.Out,
									Enum.EasingStyle.Quart,
									0.1,
									true
								)
								repeat
									wait()
								until ColorpickerFrame.Size == UDim2.new(0, 353, 0, 100)
								Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
							else
								ColorPickerToggled = not ColorPickerToggled
								ColorpickerFrame:TweenSize(
									UDim2.new(0, 353, 0, 0),
									Enum.EasingDirection.Out,
									Enum.EasingStyle.Quart,
									0.1,
									true
								)
								repeat
									wait()
								until ColorpickerFrame.Size == UDim2.new(0, 353, 0, 0)
								ColorpickerFrame.Visible = false
								Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
							end
						end
					)

					Confirm.MouseButton1Click:Connect(
						function()
							ColorPickerToggled = not ColorPickerToggled
							ColorpickerFrame:TweenSize(
								UDim2.new(0, 353, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
							repeat
								wait()
							until ColorpickerFrame.Size == UDim2.new(0, 353, 0, 0)
							ColorpickerFrame.Visible = false
							Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
						end)

					coroutine.wrap(
						function()
							while wait() do

							end
						end
					)()
				end	

				function ContainerItems:Toggle(TexT, callback)
					callback = callback or function()
					end
					local toggled = false

					local ToggleFrame = Instance.new("Frame")
					local Toggle = Instance.new("TextButton")
					local UICorner_23 = Instance.new("UICorner")
					local ToggleText = Instance.new("TextLabel")
					local UICorner_24 = Instance.new("UICorner")
					local ToggleIconer = Instance.new("Frame")
					local UICorner_25 = Instance.new("UICorner")
					local done = Instance.new("ImageLabel")
					local UICorner_26 = Instance.new("UICorner")
					local UICorner_27 = Instance.new("UICorner")

					ToggleFrame.Name = "ToggleFrame"
					ToggleFrame.Parent = Page
					ToggleFrame.Active = true
					ToggleFrame.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					ToggleFrame.BorderColor3 = Color3.fromRGB(51, 51, 51)
					ToggleFrame.Position = UDim2.new(0, 0, 1.119403, 0)
					ToggleFrame.Size = UDim2.new(0, 353, 0, 36)

					Toggle.Name = "Toggle"
					Toggle.Parent = ToggleFrame
					Toggle.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					Toggle.BackgroundTransparency = 1.000
					Toggle.BorderColor3 = Color3.fromRGB(51, 51, 51)
					Toggle.Size = UDim2.new(0, 353, 0, 36)
					Toggle.Font = Enum.Font.GothamBold
					Toggle.Text = ""
					Toggle.TextColor3 = Color3.fromRGB(154, 154, 154)
					Toggle.TextSize = 14.000

					UICorner_23.CornerRadius = UDim.new(0, 5)
					UICorner_23.Parent = Toggle

					ToggleText.Name = "ToggleText"
					ToggleText.Parent = Toggle
					ToggleText.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					ToggleText.BackgroundTransparency = 1.000
					ToggleText.BorderColor3 = Color3.fromRGB(51, 51, 51)
					ToggleText.Position = UDim2.new(0.0163934417, 0, 0, 0)
					ToggleText.Size = UDim2.new(0, 353, 0, 36)
					ToggleText.Font = Enum.Font.GothamBold
					ToggleText.Text = TexT
					ToggleText.TextColor3 = Color3.fromRGB(154, 154, 154)
					ToggleText.TextSize = 14.000
					ToggleText.TextXAlignment = Enum.TextXAlignment.Left

					UICorner_24.CornerRadius = UDim.new(0, 5)
					UICorner_24.Parent = ToggleText

					ToggleIconer.Name = "ToggleIconer"
					ToggleIconer.Parent = Toggle
					ToggleIconer.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
					ToggleIconer.BorderColor3 = Color3.fromRGB(32, 32, 32)
					ToggleIconer.Position = UDim2.new(0.915300488, 0, 0.170634925, 0)
					ToggleIconer.Size = UDim2.new(0, 22, 0, 22)

					UICorner_25.CornerRadius = UDim.new(0, 4)
					UICorner_25.Parent = ToggleIconer

					done.Name = "done"
					done.Parent = ToggleIconer
					done.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
					done.BorderColor3 = Color3.fromRGB(32, 32, 32)
					done.Position = UDim2.new(0.0909090936, 0, 0.0909090936, 0)
					done.Size = UDim2.new(0, 18, 0, 17)
					done.ZIndex = 2
					done.Image = "rbxassetid://3926305904"
					done.ImageRectOffset = Vector2.new(644, 204)
					done.ImageRectSize = Vector2.new(36, 36)
					done.ImageTransparency = 1

					UICorner_26.CornerRadius = UDim.new(0, 4)
					UICorner_26.Parent = done

					UICorner_27.CornerRadius = UDim.new(0, 5)
					UICorner_27.Parent = ToggleFrame

					ToggleFrame.MouseEnter:Connect(function()
						TweenService:Create(
							ToggleFrame,
							TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 = Color3.fromRGB(43, 43, 43)}
						):Play()
					end)

					ToggleFrame.MouseLeave:Connect(function()
						TweenService:Create(
							ToggleFrame,
							TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
							{BackgroundColor3 = Color3.fromRGB(51, 51, 51)}
						):Play()
					end)


					Toggle.MouseButton1Down:Connect(
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

					Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
				end

				function ContainerItems:TextBox(TexT, Desc, callback)
					callback = callback or function()
					end

					local TextBoxFrame = Instance.new("Frame")
					local UICorner_20 = Instance.new("UICorner")
					local TextBoxText = Instance.new("TextLabel")
					local UICorner_21 = Instance.new("UICorner")
					local Hanci = Instance.new("Frame")
					local UICorner_24 = Instance.new("UICorner")
					local TextBox = Instance.new("TextBox")
					local UICorner_25 = Instance.new("UICorner")

					TextBoxFrame.Name = "TextBoxFrame"
					TextBoxFrame.Parent = Page
					TextBoxFrame.Active = true
					TextBoxFrame.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					TextBoxFrame.BorderColor3 = Color3.fromRGB(51, 51, 51)
					TextBoxFrame.Position = UDim2.new(0, 0, 0.900497675, 0)
					TextBoxFrame.Size = UDim2.new(0, 353, 0, 36)

					UICorner_20.CornerRadius = UDim.new(0, 5)
					UICorner_20.Parent = TextBoxFrame

					TextBoxText.Name = "TextBoxText"
					TextBoxText.Parent = TextBoxFrame
					TextBoxText.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					TextBoxText.BackgroundTransparency = 1.000
					TextBoxText.BorderColor3 = Color3.fromRGB(51, 51, 51)
					TextBoxText.Position = UDim2.new(0.0163934417, 0, 0, 0)
					TextBoxText.Size = UDim2.new(0, 200, 0, 36)
					TextBoxText.Font = Enum.Font.GothamBold
					TextBoxText.Text = TexT
					TextBoxText.TextColor3 = Color3.fromRGB(154, 154, 154)
					TextBoxText.TextSize = 14.000
					TextBoxText.TextXAlignment = Enum.TextXAlignment.Left

					UICorner_21.CornerRadius = UDim.new(0, 5)
					UICorner_21.Parent = TextBoxText

					Hanci.Name = "Hanci"
					Hanci.Parent = TextBoxFrame
					Hanci.Active = true
					Hanci.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
					Hanci.BorderColor3 = Color3.fromRGB(68, 68, 68)
					Hanci.Position = UDim2.new(0.748, 0, 0.166999996, 0)
					Hanci.Size = UDim2.new(0, 81, 0, 23)

					UICorner_24.CornerRadius = UDim.new(0, 5)
					UICorner_24.Parent = Hanci

					TextBox.Parent = TextBoxFrame
					TextBox.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
					TextBox.BorderColor3 = Color3.fromRGB(68, 68, 68)
					TextBox.Position = UDim2.new(0.638, 0, 0.166666672, 0)
					TextBox.Size = UDim2.new(0, 120, 0, 23)
					TextBox.Font = Enum.Font.GothamBold
					TextBox.PlaceholderColor3 = Color3.fromRGB(188, 188, 188)
					TextBox.PlaceholderText = Desc
					TextBox.Text = ""
					TextBox.TextColor3 = Color3.fromRGB(188, 188, 188)
					TextBox.TextSize = 14.000

					UICorner_25.CornerRadius = UDim.new(0, 5)
					UICorner_25.Parent = TextBox

					TextBox.Focused:Connect(function()
						TextBox:TweenSizeAndPosition(
							UDim2.new(0, 160,0, 23), 
							UDim2.new(0.520, 0,0.166666672, 0),
							"Out","Quad",
							0.3,
							false
						)
					end)

					TextBox.FocusLost:Connect(function()
						TextBox:TweenSizeAndPosition(
							UDim2.new(0, 120,0, 23), 
							UDim2.new(0.638, 0, 0.166666672, 0),
							"Out","Quad",
							0.3,
							false
						)
					end)

					TextBox.FocusLost:Connect(
						function(ep)
							if ep then
								if #TextBox.Text > 0 then
									pcall(callback, TextBox.Text)
									TextBox.Text = ""
								end
							end
						end
					)

					TextBox:GetPropertyChangedSignal("Text"):Connect(function()
						if #TextBox.Text == 0 or #TextBox.Text < 17 then
							TextBox.TextSize = 14
						elseif #TextBox.Text == 17 or #TextBox.Text < 20 then
							TextBox.TextSize = 12
						elseif #TextBox.Text == 20 or #TextBox.Text < 22 then
							TextBox.TextSize = 11
						elseif #TextBox.Text == 22 or #TextBox.Text < 26 then
							TextBox.TextSize = 9
						elseif #TextBox.Text == 26 or #TextBox.Text < 35 then
							TextBox.TextSize = 7
						elseif #TextBox.Text == 35 or #TextBox.Text < 40 then
							TextBox.TextSize = 5
						elseif #TextBox.Text == 40 or #TextBox.Text < 70 then
							TextBox.TextSize = 3
						elseif #TextBox.Text == 70 then
							TextBox.TextSize = 1
						elseif #TextBox.Text > 70 then
							TextBox.TextSize = 0
						end
					end)

					Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)

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
					Dropdown.Parent = Page
					Dropdown.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					Dropdown.Position = UDim2.new(-0.747557044, 0, 0.729113936, 0)
					Dropdown.Size = UDim2.new(0, 353, 0, 36)
					Dropdown.AutoButtonColor = false
					Dropdown.Font = Enum.Font.GothamBold
					Dropdown.Text = ""
					Dropdown.TextColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.TextSize = 15.000

					Title.Name = "Title"
					Title.Parent = Dropdown
					Title.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
					Title.BackgroundTransparency = 1.000
					Title.Position = UDim2.new(0.0198511165, 0, 0, 0)
					Title.Size = UDim2.new(0, 192, 0, 36)
					Title.Font = Enum.Font.GothamBold
					Title.Text = teks
					Title.TextColor3 = Color3.fromRGB(154, 154, 154)
					Title.TextSize = 15.000
					Title.TextXAlignment = Enum.TextXAlignment.Left

					DropdownCorner.CornerRadius = UDim.new(0, 6)
					DropdownCorner.Name = "DropdownCorner"
					DropdownCorner.Parent = Dropdown

					Arrow.Name = "Arrow"
					Arrow.Parent = Dropdown
					Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Arrow.BackgroundTransparency = 1.000
					Arrow.Position = UDim2.new(0.896, 0, 0.111, 0)
					Arrow.Size = UDim2.new(0, 26, 0, 27)
					Arrow.Image = "rbxassetid://6034818372"
					Arrow.ImageColor3 = Color3.fromRGB(189, 189, 189)

					DropdownFrame.Name = "DropdownFrame"
					DropdownFrame.Parent = Page
					DropdownFrame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
					DropdownFrame.BorderSizePixel = 0
					DropdownFrame.Position = UDim2.new(0.334374994, 0, 0.604166687, 0)
					DropdownFrame.Size = UDim2.new(0, 353, 0, 0)
					DropdownFrame.Visible = false

					DropdownFrameCorner.Name = "DropdownFrameCorner"
					DropdownFrameCorner.Parent = DropdownFrame

					DropdownHolder.Name = "DropdownHolder"
					DropdownHolder.Parent = DropdownFrame
					DropdownHolder.Active = true
					DropdownHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DropdownHolder.BackgroundTransparency = 1.000
					DropdownHolder.BorderSizePixel = 0
					DropdownHolder.Position = UDim2.new(0.0263156947, 0, 0.00326599111, 0)
					DropdownHolder.Size = UDim2.new(0, 353, 0, 0)
					DropdownHolder.ScrollBarThickness = 3
					DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, 0)
					DropdownHolder.ScrollBarImageColor3 = Color3.fromRGB(48, 48, 48)

					DropdownItemLayout.Name = "DropdownItemLayout"
					DropdownItemLayout.Parent = DropdownHolder
					DropdownItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
					DropdownItemLayout.Padding = UDim.new(0, 5)

					DropdownItemHolder.Name = "DropdownItemHolder"
					DropdownItemHolder.Parent = DropdownHolder
					DropdownItemHolder.PaddingBottom = UDim.new(0, 5)
					DropdownItemHolder.PaddingTop = UDim.new(0, 5)

					Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)

					Dropdown.MouseEnter:Connect(
						function()
							TweenService:Create(
								Dropdown,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundColor3 = Color3.fromRGB(45, 45, 45)}
							):Play()
						end
					)
					Dropdown.MouseLeave:Connect(
						function()
							TweenService:Create(
								Dropdown,
								TweenInfo.new(.2, Enum.EasingStyle.Quad),
								{BackgroundColor3 = Color3.fromRGB(51, 51, 51)}
							):Play()
						end
					)

					Dropdown.MouseButton1Down:Connect(
						function()
							repeat
								wait()
								Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
							until DropdownFrame:TweenSize(
								UDim2.new(0, 353, 0, 0),
								Enum.EasingDirection.Out,
								Enum.EasingStyle.Quart,
								0.1,
								true
							)
						end
					)

					Dropdown.MouseButton1Click:Connect(
						function()
							if DropToggled == false then
								DropdownFrame.Visible = true
								DropdownFrame:TweenSize(
									UDim2.new(0, 353, 0, FrameSize),
									Enum.EasingDirection.Out,
									Enum.EasingStyle.Quart,
									0.1,
									true
								)
								DropdownHolder:TweenSize(
									UDim2.new(0, 353, 0, FrameSize),
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
								Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
								repeat
									wait()
									Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
								until DropdownFrame.Size == UDim2.new(0, 353, 0, FrameSize)
							else
								DropdownFrame:TweenSize(
									UDim2.new(0, 353, 0, 0),
									Enum.EasingDirection.Out,
									Enum.EasingStyle.Quart,
									0.1,
									true
								)
								DropdownHolder:TweenSize(
									UDim2.new(0, 353, 0, 0),
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
								Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
								repeat
									wait()
									Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
								until DropdownFrame.Size == UDim2.new(0, 353, 0, 0)
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
						Item.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
						Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
						Item.Size = UDim2.new(0, 334, 0, 24)
						Item.AutoButtonColor = false
						Item.Font = Enum.Font.Gotham
						Item.TextColor3 = Color3.fromRGB(255, 255, 255)
						Item.TextSize = 14.000
						Item.Text = v

						ItemCorner.Name = "ItemCorner"
						ItemCorner.Parent = Item

						Item.MouseEnter:Connect(
							function()
								TweenService:Create(
									Item,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = Color3.fromRGB(37, 37, 37)}
								):Play()
							end
						)
						Item.MouseLeave:Connect(
							function()
								TweenService:Create(
									Item,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = Color3.fromRGB(32, 32, 32)}
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
									UDim2.new(0, 353, 0, 0),
									Enum.EasingDirection.Out,
									Enum.EasingStyle.Quart,
									0.1,
									true
								)
								DropdownHolder:TweenSize(
									UDim2.new(0, 353, 0, 0),
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
								Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
								repeat
									wait()
									Page.CanvasSize = UDim2.new(0, 0, 0, PageLayout.AbsoluteContentSize.Y)
								until DropdownFrame.Size == UDim2.new(0, 353, 0, 0)
							end
						)

						DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
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
							UDim2.new(0, 403, 0, 0),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quart,
							0.1,
							true
						)
						DropdownHolder:TweenSize(
							UDim2.new(0, 386, 0, 0),
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
						until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
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
						Item.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
						Item.Position = UDim2.new(0, 0, 0.0808080807, 0)
						Item.Size = UDim2.new(0, 334, 0, 24)
						Item.AutoButtonColor = false
						Item.Font = Enum.Font.Gotham
						Item.TextColor3 = Color3.fromRGB(255, 255, 255)
						Item.TextSize = 14.000
						Item.Text = toadd

						ItemCorner.Name = "ItemCorner"
						ItemCorner.Parent = Item

						Item.MouseEnter:Connect(
							function()
								TweenService:Create(
									Item,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = Color3.fromRGB(37, 37, 37)}
								):Play()
							end
						)
						Item.MouseLeave:Connect(
							function()
								TweenService:Create(
									Item,
									TweenInfo.new(.2, Enum.EasingStyle.Quad),
									{BackgroundColor3 = Color3.fromRGB(32, 32, 32)}
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
									UDim2.new(0, 403, 0, 0),
									Enum.EasingDirection.Out,
									Enum.EasingStyle.Quart,
									0.1,
									true
								)
								DropdownHolder:TweenSize(
									UDim2.new(0, 386, 0, 0),
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
								until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)
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
							UDim2.new(0, 403, 0, 0),
							Enum.EasingDirection.Out,
							Enum.EasingStyle.Quart,
							0.1,
							true
						)
						DropdownHolder:TweenSize(
							UDim2.new(0, 386, 0, 0),
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
						until DropdownFrame.Size == UDim2.new(0, 403, 0, 0)

						DropdownHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemLayout.AbsoluteContentSize.Y + 15)
					end

					return dropfunc
				end

				return ContainerItems
			end
			return TabS
		end
	end		
end

function Hanki:Notification()
	local taklakinq = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/TaklaKing.lua", true))()

	if taklakinq == "TaklaKing" then
		if _Hawk == "ohhahtuhthttouttpwuttuaunbotwo" then

			for i, v in pairs(game.CoreGui:GetDescendants()) do
				if v.Name == "HawkNotification" then
					v:Destroy()
				end
			end
			local HawkNotification = Instance.new("ScreenGui")
			local Notifications = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
			local Notification2 = Instance.new("Frame")
			local UIListLayout_2 = Instance.new("UIListLayout")

			HawkNotification.Name = "HawkNotification"
			HawkNotification.Parent = game.CoreGui
			HawkNotification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			HawkNotification.ResetOnSpawn = false

			Notifications.Name = "Notifications"
			Notifications.Parent = HawkNotification
			Notifications.Active = true
			Notifications.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			Notifications.BorderColor3 = Color3.fromRGB(39, 39, 39)
			Notifications.Position = UDim2.new(0.870, 0, 0.965, 0)
			Notifications.Size = UDim2.new(0.251, 0, 0.017, 0)
			Notifications.BackgroundTransparency = 1
			Notifications.ZIndex = 0

			UIListLayout.Parent = Notifications
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
			UIListLayout.Padding = UDim.new(0, 11)

			Notification2.Name = "Notification2"
			Notification2.Parent = HawkNotification
			Notification2.Active = true
			Notification2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			Notification2.BackgroundTransparency = 1.000
			Notification2.BorderColor3 = Color3.fromRGB(39, 39, 39)
			Notification2.Position = UDim2.new(0.130, 0, 0.965, 0)
			Notification2.Size = UDim2.new(0.251, 0, 0.017, 0)
			Notification2.ZIndex = 0

			UIListLayout_2.Parent = Notification2
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Bottom
			UIListLayout_2.Padding = UDim.new(0, 11)

			Notifications.Size = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
			Notification2.Size = UDim2.new(0, 0, 0, UIListLayout_2.AbsoluteContentSize.Y)

			local NotificationItems = {}

			function NotificationItems:Notification(Title, Text, Selector, Num)
				Num = string.sub(Num, 0)
				for i, v in pairs(game.CoreGui:GetDescendants()) do
					if v.Name == "HawkNotification" then
						for q, w in pairs(v:GetDescendants()) do
							if w.Name == Title then
								w:Destroy()
							end
						end
					end
				end

				local Done = Instance.new("Frame")
				local UICorner_5 = Instance.new("UICorner")
				local Text_3 = Instance.new("TextLabel")
				local Shadow_5 = Instance.new("ImageLabel")
				local IconFrame_3 = Instance.new("Frame")
				local UICorner_6 = Instance.new("UICorner")
				local Icon_3 = Instance.new("ImageLabel")
				local Shadow_6 = Instance.new("ImageLabel")
				local Title_3 = Instance.new("TextLabel")
				local Shadow = Instance.new("ImageLabel")

				Done.Name = Title
				Done.Parent = Notifications
				Done.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
				Done.BackgroundTransparency = 1.000
				Done.BorderColor3 = Color3.fromRGB(31, 31, 31)
				Done.Position = UDim2.new(0, 0, -0.945269883, 0)
				Done.Size = UDim2.new(0, 312, 0, 76)

				UICorner_5.CornerRadius = UDim.new(0, 5)
				UICorner_5.Parent = Done

				Text_3.Name = "Text"
				Text_3.Parent = Done
				Text_3.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
				Text_3.BackgroundTransparency = 1.000
				Text_3.BorderColor3 = Color3.fromRGB(42, 42, 42)
				Text_3.Position = UDim2.new(0.239353076, 0, 0.510565937, 0)
				Text_3.Size = UDim2.new(0, 215, 0, 24)
				Text_3.Font = Enum.Font.Gotham
				Text_3.Text = Text
				Text_3.TextColor3 = Color3.fromRGB(171, 171, 171)
				Text_3.TextSize = 15.000
				Text_3.TextTransparency = 1.000

				Shadow_5.Name = "Shadow"
				Shadow_5.Parent = Done
				Shadow_5.Active = true
				Shadow_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				Shadow_5.BackgroundTransparency = 1.000
				Shadow_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Shadow_5.Position = UDim2.new(0, -15, 0, -15)
				Shadow_5.Size = UDim2.new(1, 30, 1, 30)
				Shadow_5.ZIndex = 0
				Shadow_5.Image = "rbxassetid://5028857084"
				Shadow_5.ImageColor3 = Color3.fromRGB(0, 0, 0)
				Shadow_5.ImageTransparency = 1.000
				Shadow_5.ScaleType = Enum.ScaleType.Slice
				Shadow_5.SliceCenter = Rect.new(24, 24, 276, 276)

				IconFrame_3.Name = "IconFrame"
				IconFrame_3.Parent = Done
				IconFrame_3.BackgroundColor3 = Color3.fromRGB(7, 197, 90)
				IconFrame_3.BackgroundTransparency = 1.000
				IconFrame_3.BorderColor3 = Color3.fromRGB(155, 135, 2556)
				IconFrame_3.Position = UDim2.new(0.0580711961, 0, 0.177939981, 0)
				IconFrame_3.Size = UDim2.new(0, 49, 0, 49)

				UICorner_6.Parent = IconFrame_3

				Icon_3.Name = "Icon"
				Icon_3.Parent = IconFrame_3
				Icon_3.Active = true
				Icon_3.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
				Icon_3.BackgroundTransparency = 1.000
				Icon_3.BorderColor3 = Color3.fromRGB(155, 135, 255)
				Icon_3.Position = UDim2.new(0.183673471, 0, 0.204081655, 0)
				Icon_3.Size = UDim2.new(0, 30, 0, 30)
				Icon_3.Image = "rbxassetid://3926305904"
				Icon_3.ImageRectOffset = Vector2.new(644, 204)
				Icon_3.ImageRectSize = Vector2.new(36, 36)
				Icon_3.ImageTransparency = 1.000

				Shadow_6.Name = "Shadow"
				Shadow_6.Parent = IconFrame_3
				Shadow_6.Active = true
				Shadow_6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				Shadow_6.BackgroundTransparency = 1.000
				Shadow_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Shadow_6.Position = UDim2.new(0, -15, 0, -15)
				Shadow_6.Size = UDim2.new(1, 30, 1, 30)
				Shadow_6.ZIndex = 0
				Shadow_6.Image = "rbxassetid://5028857084"
				Shadow_6.ImageColor3 = Color3.fromRGB(0, 0, 0)
				Shadow_6.ImageTransparency = 1.000
				Shadow_6.ScaleType = Enum.ScaleType.Slice
				Shadow_6.SliceCenter = Rect.new(24, 24, 276, 276)

				Title_3.Name = "Title"
				Title_3.Parent = Done
				Title_3.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
				Title_3.BackgroundTransparency = 1.000
				Title_3.BorderColor3 = Color3.fromRGB(42, 42, 42)
				Title_3.Position = UDim2.new(0.239353076, 0, 0.168460652, 0)
				Title_3.Size = UDim2.new(0, 209, 0, 24)
				Title_3.Font = Enum.Font.Gotham
				Title_3.Text = Title
				Title_3.TextColor3 = Color3.fromRGB(204, 204, 204)
				Title_3.TextSize = 18.000
				Title_3.TextTransparency = 1.000

				Shadow.Name = "Shadow"
				Shadow.Parent = Done
				Shadow.Active = true
				Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Shadow.BackgroundTransparency = 1.000
				Shadow.Position = UDim2.new(0, -15, 0, -15)
				Shadow.Size = UDim2.new(1, 30, 1, 30)
				Shadow.ZIndex = 0
				Shadow.Image = "rbxassetid://5028857084"
				Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
				Shadow.ScaleType = Enum.ScaleType.Slice
				Shadow.SliceCenter = Rect.new(24, 24, 276, 276)

				if Selector == "Done" then
					Icon_3.Image = "rbxassetid://3926305904"
					Icon_3.ImageRectOffset = Vector2.new(644, 204)
					Icon_3.ImageRectSize = Vector2.new(36, 36)
					IconFrame_3.BackgroundColor3 = Color3.fromRGB(7, 197, 90)
				elseif Selector == "Error" then
					Icon_3.Image = "rbxassetid://3926305904"
					Icon_3.ImageRectOffset = Vector2.new(924, 724)
					Icon_3.ImageRectSize = Vector2.new(34, 36)
					IconFrame_3.BackgroundColor3 = Color3.fromRGB(255, 96, 96)
				elseif Selector == "Warning" or Selector == "Warn" then
					Icon_3.Image = "rbxassetid://163905183"
					Icon_3.ImageRectOffset = Vector2.new(0, 0)
					Icon_3.ImageRectSize = Vector2.new(0, 0)
					IconFrame_3.BackgroundColor3 = Color3.fromRGB(255, 140, 24)
				elseif Selector == "Notification" or Selector == "Notify" then
					Icon_3.Image = "rbxassetid://7021995683"
					Icon_3.ImageRectOffset = Vector2.new(0, 0)
					Icon_3.ImageRectSize = Vector2.new(0, 0)
					IconFrame_3.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
				end

				TweenService:Create(Done, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
				for i, v in pairs(Done:GetDescendants()) do
					if v:IsA("Frame") then
						TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
					elseif v:IsA("TextLabel") then
						TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
					elseif v:IsA("ImageLabel") then
						TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {ImageTransparency = 0}):Play()
					end
				end
				wait(Num)
				for i, v in pairs(Done:GetDescendants()) do
					if v:IsA("Frame") then
						TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
					elseif v:IsA("TextLabel") then
						TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
					elseif v:IsA("ImageLabel") then
						TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
					end
				end
				TweenService:Create(Done, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play()
				wait(0.2)
				Done:Destroy()
			end

			function NotificationItems:Notify(title, text, Selector, callback)
				callback = callback or function()
				end
				for i, v in pairs(game.CoreGui:GetDescendants()) do
					if v.Name == "HawkNotification" then
						for q, w in pairs(v:GetDescendants()) do
							if w.Name == title then
								w:Destroy()
							end
						end
					end
				end

				local Notification = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local Shadow = Instance.new("ImageLabel")
				local done = Instance.new("ImageButton")
				local clear = Instance.new("ImageButton")
				local Text = Instance.new("TextLabel")
				local Title = Instance.new("TextLabel")
				local IconFrame = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local Shadow_2 = Instance.new("ImageLabel")
				local Icon = Instance.new("ImageLabel")

				Notification.Name = title
				Notification.Parent = Notification2
				Notification.Active = true
				Notification.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
				Notification.BorderColor3 = Color3.fromRGB(31, 31, 31)
				Notification.Size = UDim2.new(0, 312, 0, 76)

				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = Notification

				Shadow.Name = "Shadow"
				Shadow.Parent = Notification
				Shadow.Active = true
				Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Shadow.BackgroundTransparency = 1.000
				Shadow.Position = UDim2.new(0, -15, 0, -15)
				Shadow.Size = UDim2.new(1, 30, 1, 30)
				Shadow.ZIndex = 0
				Shadow.Image = "rbxassetid://5028857084"
				Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
				Shadow.ScaleType = Enum.ScaleType.Slice
				Shadow.SliceCenter = Rect.new(24, 24, 276, 276)

				done.Name = "done"
				done.Parent = Notification
				done.BackgroundTransparency = 1.000
				done.LayoutOrder = 1
				done.Position = UDim2.new(0.894230783, 0, 0.0921052769, 0)
				done.Size = UDim2.new(0, 25, 0, 25)
				done.ZIndex = 2
				done.Image = "rbxassetid://3926305904"
				done.ImageColor3 = Color3.new(0.639216, 0.635294, 0.647059)
				done.ImageRectOffset = Vector2.new(644, 204)
				done.ImageRectSize = Vector2.new(36, 36)
				done.MouseButton1Down:Connect(
					function()
						for i, v in pairs(Notification:GetDescendants()) do
							if v:IsA("Frame") then
								TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play(

								)
							elseif v:IsA("TextLabel") then
								TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
							elseif v:IsA("ImageButton") then
								TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
							elseif v:IsA("ImageLabel") then
								TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
							end
						end
						TweenService:Create(
							Notification,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundTransparency = 1}
						):Play()
						wait(0.2)
						Notification:Destroy()
						pcall(callback)
					end
				)

				clear.Name = "clear"
				clear.Parent = Notification
				clear.BackgroundTransparency = 1.000
				clear.LayoutOrder = 5
				clear.Position = UDim2.new(0.894230843, 0, 0.552631557, 0)
				clear.Size = UDim2.new(0, 25, 0, 25)
				clear.ZIndex = 2
				clear.Image = "rbxassetid://3926305904"
				clear.ImageColor3 = Color3.new(0.639216, 0.635294, 0.647059)
				clear.ImageRectOffset = Vector2.new(924, 724)
				clear.ImageRectSize = Vector2.new(36, 36)
				clear.MouseButton1Down:Connect(
					function()
						for i, v in pairs(Notification:GetDescendants()) do
							if v:IsA("Frame") then
								TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 1}):Play(

								)
							elseif v:IsA("TextLabel") then
								TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextTransparency = 1}):Play()
							elseif v:IsA("ImageButton") then
								TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
							elseif v:IsA("ImageLabel") then
								TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {ImageTransparency = 1}):Play()
							end
						end
						TweenService:Create(
							Notification,
							TweenInfo.new(.2, Enum.EasingStyle.Quad),
							{BackgroundTransparency = 1}
						):Play()
						wait(0.2)
						Notification:Destroy()
					end
				)

				Text.Name = "Text"
				Text.Parent = Notification
				Text.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
				Text.BackgroundTransparency = 1.000
				Text.Position = UDim2.new(0.239353076, 0, 0.510565937, 0)
				Text.Size = UDim2.new(0, 215, 0, 24)
				Text.Font = Enum.Font.Gotham
				Text.Text = text
				Text.TextColor3 = Color3.fromRGB(171, 171, 171)
				Text.TextSize = 15.000

				Title.Name = "Title"
				Title.Parent = Notification
				Title.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0.239353076, 0, 0.168460652, 0)
				Title.Size = UDim2.new(0, 209, 0, 24)
				Title.Font = Enum.Font.Gotham
				Title.Text = title
				Title.TextColor3 = Color3.fromRGB(204, 204, 204)
				Title.TextSize = 18.000

				IconFrame.Name = "IconFrame"
				IconFrame.Parent = Notification
				IconFrame.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
				IconFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
				IconFrame.Position = UDim2.new(0.0580711961, 0, 0.177939981, 0)
				IconFrame.Size = UDim2.new(0, 49, 0, 49)

				UICorner_2.Parent = IconFrame

				Shadow_2.Name = "Shadow"
				Shadow_2.Parent = IconFrame
				Shadow_2.Active = true
				Shadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Shadow_2.BackgroundTransparency = 1.000
				Shadow_2.Position = UDim2.new(0, -15, 0, -15)
				Shadow_2.Size = UDim2.new(1, 30, 1, 30)
				Shadow_2.ZIndex = 0
				Shadow_2.Image = "rbxassetid://5028857084"
				Shadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
				Shadow_2.ScaleType = Enum.ScaleType.Slice
				Shadow_2.SliceCenter = Rect.new(24, 24, 276, 276)

				Icon.Name = "Icon"
				Icon.Parent = IconFrame
				Icon.BackgroundColor3 = Color3.fromRGB(155, 135, 255)
				Icon.BackgroundTransparency = 1.000
				Icon.BorderColor3 = Color3.fromRGB(155, 135, 255)
				Icon.Position = UDim2.new(0.183673471, 0, 0.204081655, 0)
				Icon.Size = UDim2.new(0, 30, 0, 30)
				Icon.Image = "http://www.roblox.com/asset/?id=7021995683"

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

				TweenService:Create(Notification, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
				for i, v in pairs(Notification:GetDescendants()) do
					if v:IsA("Frame") then
						TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {BackgroundTransparency = 0}):Play()
					elseif v:IsA("TextLabel") then
						TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {TextTransparency = 0}):Play()
					elseif v:IsA("ImageButton") then
						TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {ImageTransparency = 0}):Play()
					elseif v:IsA("ImageLabel") then
						TweenService:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), {ImageTransparency = 0}):Play()
					end
				end
			end
			function NotificationItems:Load(title, text, callback)
				callback = callback or function()
				end
				for i, v in pairs(game.CoreGui:GetDescendants()) do
					if v.Name == "HawkNotification" then
						for q, w in pairs(v:GetDescendants()) do
							if w.Name == title then
								w:Destroy()
							end
						end
					end
				end

				callback = callback or function() end

				local Main = Instance.new("Frame")
				local Title = Instance.new("TextLabel")
				local UICorner = Instance.new("UICorner")
				local Text = Instance.new("TextLabel")
				local Accept = Instance.new("ImageButton")
				local Decline = Instance.new("ImageButton")
				local Glow = Instance.new("ImageLabel")
				local UICorner_2 = Instance.new("UICorner")

				Main.Name = title
				Main.Parent = Notification2
				Main.Active = true
				Main.AnchorPoint = Vector2.new(1, 1)
				Main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
				Main.BackgroundTransparency = 1.000
				Main.Position = UDim2.new(3, 0, 0.98939544, 0)
				Main.Size = UDim2.new(0, 332, 0, 60)

				Title.Name = "Title"
				Title.Parent = Main
				Title.Active = true
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0.0301204827, 0, 0.13333334, 0)
				Title.Size = UDim2.new(1, -40, 0, 16)
				Title.Font = Enum.Font.GothamSemibold
				Title.Text = title
				Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title.TextSize = 14.000
				Title.TextTransparency = 1.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = Main

				Text.Name = "Text"
				Text.Parent = Main
				Text.BackgroundTransparency = 1.000
				Text.Position = UDim2.new(0.0301204827, 0, 0.600000024, 0)
				Text.Size = UDim2.new(1, -40, 0, 16)
				Text.Font = Enum.Font.Gotham
				Text.Text = text
				Text.TextColor3 = Color3.fromRGB(255, 255, 255)
				Text.TextSize = 14.000
				Text.TextTransparency = 1.000
				Text.TextXAlignment = Enum.TextXAlignment.Left

				Accept.Name = "Accept"
				Accept.Parent = Main
				Accept.BackgroundTransparency = 1.000
				Accept.Position = UDim2.new(0.921686769, 0, 0.13333334, 0)
				Accept.Size = UDim2.new(0, 16, 0, 16)
				Accept.Image = "rbxassetid://5012538259"
				Accept.ImageTransparency = 1.000

				Decline.Name = "Decline"
				Decline.Parent = Main
				Decline.BackgroundTransparency = 1.000
				Decline.Position = UDim2.new(0.921686769, 0, 0.600000024, 0)
				Decline.Size = UDim2.new(0, 16, 0, 16)
				Decline.Image = "rbxassetid://5012538583"
				Decline.ImageTransparency = 1.000

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

				Accept.MouseButton1Down:Connect(function()
					TweenService:Create(
						Main,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundTransparency = 1}
					):Play()
					TweenService:Create(
						Accept,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{ImageTransparency = 1}
					):Play()
					TweenService:Create(
						Decline,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{ImageTransparency = 1}
					):Play()
					TweenService:Create(
						Glow,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{ImageTransparency = 1}
					):Play()
					TweenService:Create(
						Text,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{TextTransparency = 1}
					):Play()
					TweenService:Create(
						Title,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{TextTransparency = 1}
					):Play()
					wait(0.3)
					Main:Destroy()
					pcall(callback)
				end)

				Decline.MouseButton1Down:Connect(function()
					TweenService:Create(
						Main,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{BackgroundTransparency = 1}
					):Play()
					TweenService:Create(
						Accept,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{ImageTransparency = 1}
					):Play()
					TweenService:Create(
						Decline,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{ImageTransparency = 1}
					):Play()
					TweenService:Create(
						Glow,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{ImageTransparency = 1}
					):Play()
					TweenService:Create(
						Text,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{TextTransparency = 1}
					):Play()
					TweenService:Create(
						Title,
						TweenInfo.new(.2, Enum.EasingStyle.Quad),
						{TextTransparency = 1}
					):Play()
				end)

				TweenService:Create(
					Main,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 0}
				):Play()
				TweenService:Create(
					Accept,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{ImageTransparency = 0}
				):Play()
				TweenService:Create(
					Decline,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{ImageTransparency = 0}
				):Play()
				TweenService:Create(
					Glow,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{ImageTransparency = 0}
				):Play()
				TweenService:Create(
					Text,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
				TweenService:Create(
					Title,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()

			end

			function NotificationItems:CreateNotification(logo, title, minititle, showercase, yestext, notext, callback)
				callback = callback or function() end
				for i, v in pairs(game.CoreGui:GetDescendants()) do
					if v.Name == "GameNotification" then
						v:Destroy()
					end    
				end    

				local TweenService = game:GetService("TweenService")
				local GameNotification = Instance.new("ScreenGui")
				local Main = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local Glow = Instance.new("ImageLabel")
				local TitleBar = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local Stroke = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local Title = Instance.new("TextLabel")
				local UICorner_4 = Instance.new("UICorner")
				local Logo = Instance.new("ImageLabel")
				local UICorner_5 = Instance.new("UICorner")
				local Page = Instance.new("Frame")
				local UICorner_6 = Instance.new("UICorner")
				local Showercase = Instance.new("TextLabel")
				local UICorner_7 = Instance.new("UICorner")
				local MiniTitle = Instance.new("TextLabel")
				local UICorner_8 = Instance.new("UICorner")
				local YesFrame = Instance.new("Frame")
				local Yes = Instance.new("TextButton")
				local UICorner_9 = Instance.new("UICorner")
				local UICorner_10 = Instance.new("UICorner")
				local NoFrame = Instance.new("Frame")
				local UICorner_11 = Instance.new("UICorner")
				local No = Instance.new("TextButton")
				local UICorner_12 = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local UIStroke2 = Instance.new("UIStroke")

				GameNotification.Name = "GameNotification"
				GameNotification.Parent = game.CoreGui
				GameNotification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				GameNotification.ResetOnSpawn = false

				Main.Name = "Main"
				Main.Parent = GameNotification
				Main.Active = true
				Main.BackgroundColor3 = Color3.fromRGB(37, 36, 37)
				Main.BackgroundTransparency = 1.000
				Main.BorderColor3 = Color3.fromRGB(37, 36, 37)
				Main.Position = UDim2.new(0.5, -183,0.03, 0)
				Main.Size = UDim2.new(0, 7, 0, 42)
				Main.Visible = false

				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = Main

				Glow.Name = "Glow"
				Glow.Parent = Main
				Glow.Active = true
				Glow.BackgroundColor3 = Color3.fromRGB(37, 36, 37)
				Glow.BackgroundTransparency = 1.000
				Glow.BorderColor3 = Color3.fromRGB(37, 36, 37)
				Glow.Position = UDim2.new(0, -15, 0, -15)
				Glow.Size = UDim2.new(1, 30, 1, 30)
				Glow.ZIndex = 0
				Glow.Image = "rbxassetid://5028857084"
				Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
				Glow.ImageTransparency = 1.000
				Glow.ScaleType = Enum.ScaleType.Slice
				Glow.SliceCenter = Rect.new(24, 24, 276, 276)

				TitleBar.Name = "TitleBar"
				TitleBar.Parent = Main
				TitleBar.BackgroundColor3 = Color3.fromRGB(37, 36, 37)
				TitleBar.BackgroundTransparency = 1.000
				TitleBar.BorderColor3 = Color3.fromRGB(37, 36, 37)
				TitleBar.Size = UDim2.new(0, 366, 0, 36)
				TitleBar.Visible = false

				UICorner_2.CornerRadius = UDim.new(0, 5)
				UICorner_2.Parent = TitleBar

				Stroke.Name = "Stroke"
				Stroke.Parent = TitleBar
				Stroke.BackgroundColor3 = Color3.fromRGB(49, 48, 49)
				Stroke.BackgroundTransparency = 1.000
				Stroke.BorderColor3 = Color3.fromRGB(49, 48, 49)
				Stroke.Position = UDim2.new(0.00326788239, 0, 1.16666663, 0)
				Stroke.Size = UDim2.new(0, 364, 0, 0)

				UICorner_3.CornerRadius = UDim.new(0, 5)
				UICorner_3.Parent = Stroke

				Title.Name = "Title"
				Title.Parent = TitleBar
				Title.Active = true
				Title.BackgroundColor3 = Color3.fromRGB(37, 36, 37)
				Title.BackgroundTransparency = 1.000
				Title.BorderColor3 = Color3.fromRGB(37, 36, 37)
				Title.Position = UDim2.new(0.125683054, 0, 0.194444448, 0)
				Title.Size = UDim2.new(0, 164, 0, 26)
				Title.Font = Enum.Font.GothamBold
				Title.Text = title
				Title.TextColor3 = Color3.fromRGB(225, 225, 225)
				Title.TextSize = 14.000
				Title.TextTransparency = 1.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				UICorner_4.CornerRadius = UDim.new(0, 5)
				UICorner_4.Parent = Title

				Logo.Name = "Logo"
				Logo.Parent = TitleBar
				Logo.BackgroundColor3 = Color3.fromRGB(37, 36, 37)
				Logo.BackgroundTransparency = 1.000
				Logo.BorderColor3 = Color3.fromRGB(37, 36, 37)
				Logo.Position = UDim2.new(0, 0, 0.111111112, 0)
				Logo.Size = UDim2.new(0, 39, 0, 32)
				Logo.Image = "http://www.roblox.com/asset/?id=" .. logo
				Logo.ImageTransparency = 1.000

				UICorner_5.CornerRadius = UDim.new(0, 5)
				UICorner_5.Parent = Logo

				Page.Name = "Page"
				Page.Parent = Main
				Page.BackgroundColor3 = Color3.fromRGB(37, 36, 37)
				Page.BackgroundTransparency = 1.000
				Page.BorderColor3 = Color3.fromRGB(37, 36, 37)
				Page.Position = UDim2.new(0, 0, 0.297800869, 0)
				Page.Size = UDim2.new(0, 366, 0, 106)
				Page.Visible = false

				UICorner_6.CornerRadius = UDim.new(0, 5)
				UICorner_6.Parent = Page

				Showercase.Name = "Showercase"
				Showercase.Parent = Page
				Showercase.BackgroundColor3 = Color3.fromRGB(37, 36, 37)
				Showercase.BackgroundTransparency = 1.000
				Showercase.BorderColor3 = Color3.fromRGB(37, 36, 37)
				Showercase.Position = UDim2.new(0.0382513665, 0, 0.222222224, 0)
				Showercase.Size = UDim2.new(0, 346, 0, 29)
				Showercase.Font = Enum.Font.FredokaOne
				Showercase.Text = showercase
				Showercase.TextColor3 = Color3.fromRGB(208, 208, 208)
				Showercase.TextSize = 14.000
				Showercase.TextTransparency = 1.000
				Showercase.TextWrapped = true
				Showercase.TextXAlignment = Enum.TextXAlignment.Left

				UICorner_7.CornerRadius = UDim.new(0, 5)
				UICorner_7.Parent = Showercase

				MiniTitle.Name = "MiniTitle"
				MiniTitle.Parent = Page
				MiniTitle.Active = true
				MiniTitle.BackgroundColor3 = Color3.fromRGB(37, 36, 37)
				MiniTitle.BackgroundTransparency = 1.000
				MiniTitle.BorderColor3 = Color3.fromRGB(37, 36, 37)
				MiniTitle.Position = UDim2.new(0.0382513665, 0, 0.0486111045, 0)
				MiniTitle.Size = UDim2.new(0, 164, 0, 19)
				MiniTitle.Font = Enum.Font.GothamBold
				MiniTitle.Text = minititle
				MiniTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
				MiniTitle.TextSize = 14.000
				MiniTitle.TextTransparency = 1.000
				MiniTitle.TextXAlignment = Enum.TextXAlignment.Left

				UICorner_8.CornerRadius = UDim.new(0, 5)
				UICorner_8.Parent = MiniTitle

				YesFrame.Name = "YesFrame"
				YesFrame.Parent = Page
				YesFrame.BackgroundColor3 = Color3.fromRGB(1, 98, 73)
				YesFrame.BackgroundTransparency = 1.000
				YesFrame.BorderColor3 = Color3.fromRGB(1, 98, 73)
				YesFrame.Position = UDim2.new(0.0379999988, 0, 0.589999974, 0)
				YesFrame.Size = UDim2.new(0, 164, 0, 34)

				Yes.Name = "Yes"
				Yes.Parent = YesFrame
				Yes.BackgroundColor3 = Color3.fromRGB(1, 98, 73)
				Yes.BackgroundTransparency = 1.000
				Yes.BorderColor3 = Color3.fromRGB(1, 98, 73)
				Yes.Size = UDim2.new(0, 164, 0, 34)
				Yes.Font = Enum.Font.SourceSansBold
				Yes.Text = yestext
				Yes.TextColor3 = Color3.fromRGB(255, 255, 255)
				Yes.TextSize = 14.000
				Yes.TextTransparency = 1.000

				UICorner_9.CornerRadius = UDim.new(0, 10)
				UICorner_9.Parent = Yes

				UICorner_10.CornerRadius = UDim.new(0, 10)
				UICorner_10.Parent = YesFrame

				NoFrame.Name = "NoFrame"
				NoFrame.Parent = Page
				NoFrame.BackgroundColor3 = Color3.fromRGB(107, 48, 51)
				NoFrame.BackgroundTransparency = 1.000
				NoFrame.BorderColor3 = Color3.fromRGB(107, 48, 51)
				NoFrame.Position = UDim2.new(0.522000015, 0, 0.589999974, 0)
				NoFrame.Size = UDim2.new(0, 164, 0, 34)

				UICorner_11.CornerRadius = UDim.new(0, 10)
				UICorner_11.Parent = NoFrame

				No.Name = "No"
				No.Parent = NoFrame
				No.BackgroundColor3 = Color3.fromRGB(107, 48, 51)
				No.BackgroundTransparency = 1.000
				No.BorderColor3 = Color3.fromRGB(107, 48, 51)
				No.Size = UDim2.new(0, 163, 0, 34)
				No.Font = Enum.Font.SourceSansBold
				No.Text = notext
				No.TextColor3 = Color3.fromRGB(255, 255, 255)
				No.TextSize = 14.000
				No.TextTransparency = 1.000

				UICorner_12.CornerRadius = UDim.new(0, 10)
				UICorner_12.Parent = No

				UIStroke.Parent = YesFrame
				UIStroke.Color = Color3.fromRGB(255, 255, 255)
				UIStroke.ApplyStrokeMode = "Border"
				UIStroke.LineJoinMode = "Round"
				UIStroke.Thickness = 1
				UIStroke.Transparency = 1

				UIStroke2.Parent = NoFrame
				UIStroke2.Color = Color3.fromRGB(255, 255, 255)
				UIStroke2.ApplyStrokeMode = "Border"
				UIStroke2.LineJoinMode = "Round"
				UIStroke2.Thickness = 1
				UIStroke2.Transparency = 1

				function Open()

					Main.Visible = true
					TweenService:Create(
						Main,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
					wait(0.4)
					TitleBar.Visible = true
					Main:TweenSize(UDim2.new(0, 366, 0, 42))
					TweenService:Create(
						Glow,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageTransparency = 0}
					):Play()
					wait(0.8)
					TweenService:Create(
						Logo,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{ImageTransparency = 0}
					):Play()
					wait(1)
					TweenService:Create(
						TitleBar,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
					TweenService:Create(
						Title,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
					TweenService:Create(
						Stroke,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
					wait(0.4)
					Main:TweenSize(UDim2.new(0, 366,0, 152))
					wait(1.3)
					Page.Visible = true
					TweenService:Create(
						MiniTitle,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
					wait(0.5)
					TweenService:Create(
						Showercase,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
					wait(0.5)
					TweenService:Create(
						YesFrame,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
					TweenService:Create(
						Yes,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
					TweenService:Create(
						UIStroke,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.8}
					):Play()
					wait(0.5)
					TweenService:Create(
						NoFrame,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{BackgroundTransparency = 0}
					):Play()
					TweenService:Create(
						No,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
					TweenService:Create(
						UIStroke2,
						TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
						{Transparency = 0.8}
					):Play()
				end

				function Close()
					for i, v in pairs(GameNotification:GetDescendants()) do
						if v:IsA("Frame") then
							TweenService:Create(
								v,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{BackgroundTransparency = 1}
							):Play()
						elseif v:IsA("TextLabel") then
							TweenService:Create(
								v,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextTransparency = 1}
							):Play()
						elseif v:IsA("ImageLabel") then
							TweenService:Create(
								v,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{ImageTransparency = 1}
							):Play()
						elseif v:IsA("UIStroke") then
							TweenService:Create(
								v,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{Transparency = 1}
							):Play()
						elseif v:IsA("TextButton") then
							TweenService:Create(
								v,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{TextTransparency = 1}
							):Play()
							TweenService:Create(
								v,
								TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
								{BackgroundTransparency = 1}
							):Play()
						end 
					end
				end

				Yes.MouseButton1Down:Connect(function()
					Close()
					wait(0.1)
					for i, v in pairs(game.CoreGui:GetDescendants()) do
						if v.Name == "GameNotification" then
							v:Destroy()
						end    
					end  
					pcall(callback)
				end)

				No.MouseButton1Down:Connect(function()
					Close()
					wait(0.1)
					for i, v in pairs(game.CoreGui:GetDescendants()) do
						if v.Name == "GameNotification" then
							v:Destroy()
						end    
					end    
				end)

				Open()
			end				

			function NotificationItems:View(title, text, Time)
				Time = string.sub(Time,0)
				for i, v in pairs(game.CoreGui:GetDescendants()) do
					if v.Name == title then
						v:Destroy()
					end
				end

				local Load = Instance.new("Frame")
				local Title = Instance.new("TextLabel")
				local UICorner = Instance.new("UICorner")
				local Text = Instance.new("TextLabel")
				local Glow = Instance.new("ImageLabel")
				local UICorner_2 = Instance.new("UICorner")

				Load.Name = title
				Load.Parent = Notifications
				Load.Active = true
				Load.AnchorPoint = Vector2.new(1, 1)
				Load.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
				Load.BackgroundTransparency = 1.000
				Load.Position = UDim2.new(3, 0, 0.98939544, 0)
				Load.Size = UDim2.new(0, 332, 0, 60)

				Title.Name = "Title"
				Title.Parent = Load
				Title.Active = true
				Title.BackgroundTransparency = 1.000
				Title.Position = UDim2.new(0.0301204827, 0, 0.13333334, 0)
				Title.Size = UDim2.new(1, -40, 0, 16)
				Title.Font = Enum.Font.GothamSemibold
				Title.Text = title
				Title.TextColor3 = Color3.fromRGB(255, 255, 255)
				Title.TextSize = 14.000
				Title.TextTransparency = 1.000
				Title.TextXAlignment = Enum.TextXAlignment.Left

				UICorner.CornerRadius = UDim.new(0, 5)
				UICorner.Parent = Load

				Text.Name = "Text"
				Text.Parent = Load
				Text.Active = true
				Text.BackgroundTransparency = 1.000
				Text.Position = UDim2.new(0.0301204827, 0, 0.600000024, 0)
				Text.Size = UDim2.new(1, -40, 0, 16)
				Text.Font = Enum.Font.Gotham
				Text.Text = text
				Text.TextColor3 = Color3.fromRGB(255, 255, 255)
				Text.TextSize = 14.000
				Text.TextTransparency = 1.000
				Text.TextXAlignment = Enum.TextXAlignment.Left

				Glow.Name = "Glow"
				Glow.Parent = Load
				Glow.BackgroundTransparency = 1.000
				Glow.Position = UDim2.new(0, -15, 0, -15)
				Glow.Size = UDim2.new(1, 30, 1, 30)
				Glow.Image = "rbxassetid://5028857084"
				Glow.ImageColor3 = Color3.fromRGB(0, 0, 0)
				Glow.ImageTransparency = 1.000
				Glow.ScaleType = Enum.ScaleType.Slice
				Glow.SliceCenter = Rect.new(24, 24, 276, 276)

				UICorner_2.CornerRadius = UDim.new(0, 9)
				UICorner_2.Parent = Glow


				TweenService:Create(
					Load,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 0}
				):Play()
				TweenService:Create(
					Glow,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{ImageTransparency = 0}
				):Play()
				TweenService:Create(
					Text,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()
				TweenService:Create(
					Title,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{TextTransparency = 0}
				):Play()

				wait(Time)
				TweenService:Create(
					Load,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{BackgroundTransparency = 1}
				):Play()
				TweenService:Create(
					Glow,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{ImageTransparency = 1}
				):Play()
				TweenService:Create(
					Text,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
				TweenService:Create(
					Title,
					TweenInfo.new(.4, Enum.EasingStyle.Quad),
					{TextTransparency = 1}
				):Play()
				wait(Time)
			end

			return NotificationItems
		end	
	end
end
return Hanki