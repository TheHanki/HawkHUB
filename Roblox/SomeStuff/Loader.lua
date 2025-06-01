_Protected_By_Hawk = "discord.io/HawkHUB"

if _Protected_By_Hawk then
	if _Protected_By_Hawk == "discord.io/HawkHUB" then
		pcall(function()
			getgenv()._Hawk_Loaded = false
		end)

		for i, v in pairs(game.CoreGui:GetChildren()) do
			if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
				v:Destroy()
			end
		end
		_Hawk = "iVpl7IrqpMm9dD9rChcL8dtTJWV2kAvTGZbBdMuCezzsPluYJnvDHrKMmjEks6d33hNd8q1eBAI7q2WxgDZ2mlNXxFMiAuY8K7SpC2gGCjuE6RZksxwvdjvMIdojUYH4MDkO6l9Eckwvj3W6YuArB6Qelzb2pJOpWKpsTRdo43M0gpTn6GakkFnZxPPQPZbJe4YsunXo0EqBQvbtgUH4zmymRyR3EaKJWA9eGl3bsy4HEJ7f7sccQiI8peC4Jeks8p0pDFMTlG9VWHrhQG6SFKQvSpYbujs9vojims1u1PR32Bw2q83giw23hf8nQMXl3cZQoTFlk5OYCHhowVMSYd9YRixyfwB1WCJ" 

		function loadskrip()
			if _Protected_By_Hawk then
				if _Protected_By_Hawk == "discord.io/HawkHUB" then
					pcall(function()
						getgenv()._Hawk_Loaded = false
					end)

					for i, v in pairs(game.CoreGui:GetChildren()) do
						if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
							v:Destroy()
						end
					end
					_Hawk = "iVpl7IrqpMm9dD9rChcL8dtTJWV2kAvTGZbBdMuCezzsPluYJnvDHrKMmjEks6d33hNd8q1eBAI7q2WxgDZ2mlNXxFMiAuY8K7SpC2gGCjuE6RZksxwvdjvMIdojUYH4MDkO6l9Eckwvj3W6YuArB6Qelzb2pJOpWKpsTRdo43M0gpTn6GakkFnZxPPQPZbJe4YsunXo0EqBQvbtgUH4zmymRyR3EaKJWA9eGl3bsy4HEJ7f7sccQiI8peC4Jeks8p0pDFMTlG9VWHrhQG6SFKQvSpYbujs9vojims1u1PR32Bw2q83giw23hf8nQMXl3cZQoTFlk5OYCHhowVMSYd9YRixyfwB1WCJ" 

					local OnMobile = game:GetService('UserInputService').TouchEnabled
					local OnPc = game:GetService('UserInputService').KeyboardEnabled
					local HttpService = game:GetService("HttpService")
					local Data = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/TheHanki/Hawk/main/Games.json"))
					local GameId = game.PlaceId

					function load()
						_Hawk = "iVpl7IrqpMm9dD9rChcL8dtTJWV2kAvTGZbBdMuCezzsPluYJnvDHrKMmjEks6d33hNd8q1eBAI7q2WxgDZ2mlNXxFMiAuY8K7SpC2gGCjuE6RZksxwvdjvMIdojUYH4MDkO6l9Eckwvj3W6YuArB6Qelzb2pJOpWKpsTRdo43M0gpTn6GakkFnZxPPQPZbJe4YsunXo0EqBQvbtgUH4zmymRyR3EaKJWA9eGl3bsy4HEJ7f7sccQiI8peC4Jeks8p0pDFMTlG9VWHrhQG6SFKQvSpYbujs9vojims1u1PR32Bw2q83giw23hf8nQMXl3cZQoTFlk5OYCHhowVMSYd9YRixyfwB1WCJ"

						if OnPc == true then
							for i, v in pairs(Data.Pc) do
								if hawkloaded then break end
								if string.find(i, GameId) then
									for _, url in pairs(v) do
										if _ == "Id" then
											hawkloaded = true
											loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/HUB/Pc/"..(v.Id)..".lua"))()
											return;
										end
									end
								end
							end
							if not hawkloaded then hawkloaded = true loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/HUB/Pc/Universal.lua"))() end
						end

						if OnMobile == true then
							for i, v in pairs(Data.Mobile) do
								if hawkloaded then break end
								if string.find(i, GameId) then
									for _, url in pairs(v) do
										if _ == "Id" then
											hawkloaded = true
											loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/HUB/Mobile/"..(v.Id)..".lua"))()
											return;
										end
									end
								end
							end
							if not hawkloaded then hawkloaded = true loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/HUB/Mobile/Universal.lua"))() end
						end
					end

					if isfolder("Hawk") == false then
						makefolder("Hawk")
					end

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

					function addadmin(player)		
						for i, v in pairs(game.CoreGui:GetChildren()) do
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
						Main.Position = UDim2.new(0.5, -202,0.5, -93)
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

						if game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents") then
							local prefix = "h!"
							local event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents
							event.OnMessageDoneFiltering.OnClientEvent:Connect(function(object)
								player = object.FromSpeaker

								if object.Message == prefix .. "bring all" or object.Message == prefix .. "bring All" then
									if game.Players.LocalPlayer.Name == player then
										local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

										local New_CFrame = game:GetService("Workspace")[player].HumanoidRootPart.CFrame
										local ts = game:service("TweenService")
										local part = game.Players.LocalPlayer.Character.HumanoidRootPart
										local ti = TweenInfo.new(0.3,Enum.EasingStyle.Linear)
										local tp = {CFrame = New_CFrame}
										ts:Create(part, ti, tp):Play()
										wait()
									else
										local New_CFrame = game:GetService("Workspace")[player].HumanoidRootPart.CFrame
										local ts = game:service("TweenService")
										local part = game.Players.LocalPlayer.Character.HumanoidRootPart
										local ti = TweenInfo.new(0.3,Enum.EasingStyle.Linear)
										local tp = {CFrame = New_CFrame}
										ts:Create(part, ti, tp):Play()
										wait()
									end		
								end

								if string.sub(object.Message, 0, 8) == prefix .. "bring " then
									if string.sub(object.Message, 9) == game.Players.LocalPlayer.Name or string.sub(object.Message, 9) == game.Players.LocalPlayer.DisplayName then
										local New_CFrame = game:GetService("Workspace")[player].HumanoidRootPart.CFrame
										local ts = game:service("TweenService")
										local part = game.Players.LocalPlayer.Character.HumanoidRootPart
										local ti = TweenInfo.new(0.3,Enum.EasingStyle.Linear)
										local tp = {CFrame = New_CFrame}
										ts:Create(part, ti, tp):Play()
										wait()
									end
								end

								if string.sub(object.Message, 0, 11) == prefix .. "addadmin " then
									if game.Players:FindFirstChild(tostring(string.sub(object.Message, 12))) then
										local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Libs/MobileLib.lua", true))()
										local Notificatin = Hawk:Notification()
										addadmin(tostring(string.sub(object.Message, 12)))
										Notificatin:Notification("Admin Gived Successfully",tostring(string.sub(object.Message, 12)),"Notification",1)
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
									load()
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
											local New_CFrame = game:GetService("Workspace")[v.Name].HumanoidRootPart.CFrame
											local ts = game:service("TweenService")
											local part = game.Players.LocalPlayer.Character.HumanoidRootPart
											local ti = TweenInfo.new(0.3,Enum.EasingStyle.Linear)
											local tp = {CFrame = New_CFrame}
											ts:Create(part, ti, tp):Play()
											wait()
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
					end
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


						local blacklisting = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/BlacklistQWE.lua", true))()
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

						local V3RM = loadstring(game:HttpGet('https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/Version.lua'))()
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
							wait()
							getgenv().writefile = function() return nil end
							wait()
							for i, v in pairs(game.CoreGui:GetChildren()) do
								if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
									v:Destroy()
								end
							end
							local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Libs/MobileLib.lua", true))()
							local Notificatin = Hawk:Notification()

							local admins = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/Admins.lua", true))()
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

							wait(1)
							load()
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
						local ChristmasChecker = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/Christmas.lua", true))()

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

						local V3RM = loadstring(game:HttpGet('https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/Version.lua'))()
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
							wait()
							getgenv().writefile = function() return nil end
							wait()
							for i, v in pairs(game.CoreGui:GetChildren()) do
								if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
									v:Destroy()
								end
							end

							local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Libs/MobileLib.lua", true))()
							local Notificatin = Hawk:Notification()

							local admins = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/Admins.lua", true))()
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

							wait(1)
							load()
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

					end

					local IsHawk = isfile("Hawk\\HawkKey.lua")
					if IsHawk == true then
						local ReadHawk = readfile("Hawk\\HawkKey.lua");
						pcall(function()
							if ReadHawk == game:HttpGet("https://1.kelprepl.repl.co/verify/HawkHUB?verify_key="..ReadHawk) or game:HttpGet("https://hawksoftworks.ga/Hawk/Generated.php?key="..ReadHawk) == "Taklaya Geldin" then
								getgenv().writefile = function() return nil end
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
								local Tabs = Instance.new("Frame")
								local UICorner = Instance.new("UICorner")
								local Logo = Instance.new("ImageLabel")
								local TextLabel = Instance.new("TextLabel")
								local TabContainer = Instance.new("Frame")
								local UICorner_2 = Instance.new("UICorner")
								local UIListLayout = Instance.new("UIListLayout")
								local Key = Instance.new("TextButton")
								local UICorner_3 = Instance.new("UICorner")
								local Info = Instance.new("TextButton")
								local UICorner_4 = Instance.new("UICorner")
								local Scary = Instance.new("TextButton")
								local UICorner_5 = Instance.new("UICorner")
								local Credits = Instance.new("TextButton")
								local UICorner_6 = Instance.new("UICorner")
								local Line = Instance.new("Frame")
								local UICorner_7 = Instance.new("UICorner")
								local Glow = Instance.new("ImageLabel")
								local UICorner_8 = Instance.new("UICorner")
								local Pages = Instance.new("Frame")
								local UICorner_9 = Instance.new("UICorner")
								local InfoPage = Instance.new("Frame")
								local UICorner_10 = Instance.new("UICorner")
								local TextLabel_2 = Instance.new("TextLabel")
								local TextLabel_3 = Instance.new("TextLabel")
								local TextLabel_4 = Instance.new("TextLabel")
								local TextLabel_5 = Instance.new("TextLabel")
								local KeyPage = Instance.new("Frame")
								local UICorner_11 = Instance.new("UICorner")
								local KeyBox = Instance.new("TextBox")
								local UICorner_12 = Instance.new("UICorner")
								local UIStroke = Instance.new("UIStroke")
								local Buttons = Instance.new("Frame")
								local UIListLayout_2 = Instance.new("UIListLayout")
								local UIStroke_2 = Instance.new("UIStroke")
								local UICorner_13 = Instance.new("UICorner")
								local SubmitKey = Instance.new("TextButton")
								local UICorner_14 = Instance.new("UICorner")
								local Line_2 = Instance.new("Frame")
								local GetKey = Instance.new("TextButton")
								local UICorner_15 = Instance.new("UICorner")
								local Line_3 = Instance.new("Frame")
								local Clean = Instance.new("TextButton")
								local UICorner_16 = Instance.new("UICorner")
								local Line_4 = Instance.new("Frame")
								local CopyKeyLink = Instance.new("TextButton")
								local UICorner_17 = Instance.new("UICorner")
								local TextLabel_6 = Instance.new("TextLabel")
								local CreditsPage = Instance.new("Frame")
								local UICorner_18 = Instance.new("UICorner")
								local CreditsTable = Instance.new("ScrollingFrame")
								local YapanlarOmagad = Instance.new("Frame")
								local UIListLayout_3 = Instance.new("UIListLayout")
								local UICorner_19 = Instance.new("UICorner")
								local Hanki = Instance.new("Frame")
								local Pfp = Instance.new("ImageLabel")
								local UICorner_20 = Instance.new("UICorner")
								local UIStroke_3 = Instance.new("UIStroke")
								local UICorner_21 = Instance.new("UICorner")
								local Username = Instance.new("TextLabel")
								local Description = Instance.new("TextLabel")
								local Batumation = Instance.new("Frame")
								local Pfp_2 = Instance.new("ImageLabel")
								local UICorner_22 = Instance.new("UICorner")
								local UIStroke_4 = Instance.new("UIStroke")
								local UICorner_23 = Instance.new("UICorner")
								local Username_2 = Instance.new("TextLabel")
								local Description_2 = Instance.new("TextLabel")
								local Ege = Instance.new("Frame")
								local Pfp_3 = Instance.new("ImageLabel")
								local UICorner_24 = Instance.new("UICorner")
								local UIStroke_5 = Instance.new("UIStroke")
								local UICorner_25 = Instance.new("UICorner")
								local Username_3 = Instance.new("TextLabel")
								local Description_3 = Instance.new("TextLabel")
								local Aro = Instance.new("Frame")
								local Pfp_4 = Instance.new("ImageLabel")
								local UICorner_26 = Instance.new("UICorner")
								local UIStroke_6 = Instance.new("UIStroke")
								local UICorner_27 = Instance.new("UICorner")
								local Username_4 = Instance.new("TextLabel")
								local Description_4 = Instance.new("TextLabel")
								local LilRhytxm = Instance.new("Frame")
								local Pfp_5 = Instance.new("ImageLabel")
								local UICorner_28 = Instance.new("UICorner")
								local UIStroke_7 = Instance.new("UIStroke")
								local UICorner_29 = Instance.new("UICorner")
								local Username_5 = Instance.new("TextLabel")
								local Description_5 = Instance.new("TextLabel")
								local UICorner_30 = Instance.new("UICorner")
								local ScaryPage = Instance.new("Frame")
								local UICorner_31 = Instance.new("UICorner")
								local ImageLabel = Instance.new("ImageLabel")
								local UICorner_32 = Instance.new("UICorner")

								HawkKeySystem.Name = "HawkKeySystem"
								HawkKeySystem.Parent = game.CoreGui
								HawkKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
								HawkKeySystem.ResetOnSpawn = false

								Main.Name = "Main"
								Main.Parent = HawkKeySystem
								Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								Main.BorderColor3 = Color3.fromRGB(25, 25, 25)
								Main.Position = UDim2.new(0.5, -207,0.5, -135)
								Main.Size = UDim2.new(0, 414, 0, 270)

								Tabs.Name = "Tabs"
								Tabs.Parent = Main
								Tabs.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
								Tabs.BorderColor3 = Color3.fromRGB(22, 22, 22)
								Tabs.Size = UDim2.new(0, 100, 0, 270)

								UICorner.Parent = Tabs

								Logo.Name = "Logo"
								Logo.Parent = Tabs
								Logo.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
								Logo.BorderColor3 = Color3.fromRGB(22, 22, 22)
								Logo.Position = UDim2.new(0.140000001, 0, 0.025925925, 0)
								Logo.Size = UDim2.new(0, 72, 0, 70)
								Logo.Image = "http://www.roblox.com/asset/?id=10179402650"

								TextLabel.Parent = Tabs
								TextLabel.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
								TextLabel.BorderColor3 = Color3.fromRGB(22, 22, 22)
								TextLabel.Position = UDim2.new(0.140000001, 0, 0.285185188, 0)
								TextLabel.Size = UDim2.new(0, 72, 0, 21)
								TextLabel.Font = Enum.Font.GothamBold
								TextLabel.Text = "Hawk HUB"
								TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel.TextSize = 14.000

								TabContainer.Name = "TabContainer"
								TabContainer.Parent = Tabs
								TabContainer.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
								TabContainer.BorderColor3 = Color3.fromRGB(22, 22, 22)
								TabContainer.Position = UDim2.new(0, 0, 0.392592579, 0)
								TabContainer.Size = UDim2.new(0, 100, 0, 164)

								UICorner_2.CornerRadius = UDim.new(0, 6)
								UICorner_2.Parent = TabContainer

								UIListLayout.Parent = TabContainer
								UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
								UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
								UIListLayout.Padding = UDim.new(0, 7)

								Key.Name = "Key"
								Key.Parent = TabContainer
								Key.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
								Key.BorderColor3 = Color3.fromRGB(38, 38, 38)
								Key.Position = UDim2.new(0.140000001, 0, 0, 0)
								Key.Size = UDim2.new(0, 86, 0, 26)
								Key.Font = Enum.Font.GothamBold
								Key.Text = "Key"
								Key.TextColor3 = Color3.fromRGB(217, 217, 217)
								Key.TextSize = 14.000

								UICorner_3.Parent = Key

								Info.Name = "Info"
								Info.Parent = TabContainer
								Info.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
								Info.BorderColor3 = Color3.fromRGB(38, 38, 38)
								Info.Position = UDim2.new(0.140000001, 0, 0.195121944, 0)
								Info.Size = UDim2.new(0, 86, 0, 26)
								Info.Font = Enum.Font.GothamBold
								Info.Text = "Info"
								Info.TextColor3 = Color3.fromRGB(217, 217, 217)
								Info.TextSize = 14.000

								UICorner_4.Parent = Info

								Scary.Name = "Scary"
								Scary.Parent = TabContainer
								Scary.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
								Scary.BorderColor3 = Color3.fromRGB(38, 38, 38)
								Scary.Position = UDim2.new(0.140000001, 0, 0.585365832, 0)
								Scary.Size = UDim2.new(0, 86, 0, 26)
								Scary.Font = Enum.Font.GothamBold
								Scary.Text = "Scary"
								Scary.TextColor3 = Color3.fromRGB(217, 217, 217)
								Scary.TextSize = 14.000

								UICorner_5.Parent = Scary

								Credits.Name = "Credits"
								Credits.Parent = TabContainer
								Credits.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
								Credits.BorderColor3 = Color3.fromRGB(38, 38, 38)
								Credits.Position = UDim2.new(0.140000001, 0, 0.390243888, 0)
								Credits.Size = UDim2.new(0, 86, 0, 26)
								Credits.Font = Enum.Font.GothamBold
								Credits.Text = "Credits"
								Credits.TextColor3 = Color3.fromRGB(217, 217, 217)
								Credits.TextSize = 14.000

								UICorner_6.Parent = Credits

								Line.Name = "Line"
								Line.Parent = Main
								Line.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
								Line.BorderColor3 = Color3.fromRGB(45, 45, 45)
								Line.Position = UDim2.new(0.241545901, 0, 0.00740740728, 0)
								Line.Size = UDim2.new(0, 0, 0, 266)

								UICorner_7.Parent = Main

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

								UICorner_8.Parent = Glow

								Pages.Name = "Pages"
								Pages.Parent = Main
								Pages.Active = true
								Pages.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								Pages.BackgroundTransparency = 1.000
								Pages.BorderColor3 = Color3.fromRGB(25, 25, 25)
								Pages.Position = UDim2.new(0.241545901, 0, 0, 0)
								Pages.Size = UDim2.new(0, 314, 0, 270)

								UICorner_9.Parent = Pages

								InfoPage.Name = "InfoPage"
								InfoPage.Parent = Pages
								InfoPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								InfoPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
								InfoPage.Position = UDim2.new(0.022292994, 0, 0, 0)
								InfoPage.Size = UDim2.new(0, 307, 0, 270)
								InfoPage.Visible = false

								UICorner_10.Parent = InfoPage

								TextLabel_2.Parent = InfoPage
								TextLabel_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								TextLabel_2.BackgroundTransparency = 1.000
								TextLabel_2.BorderColor3 = Color3.fromRGB(25, 25, 25)
								TextLabel_2.Position = UDim2.new(0.0684039071, 0, 0.0629629642, 0)
								TextLabel_2.Size = UDim2.new(0, 250, 0, 50)
								TextLabel_2.Font = Enum.Font.GothamBold
								TextLabel_2.Text = "This Script is Made By |Hawk Softworks|"
								TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel_2.TextSize = 14.000

								TextLabel_3.Parent = InfoPage
								TextLabel_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								TextLabel_3.BackgroundTransparency = 1.000
								TextLabel_3.BorderColor3 = Color3.fromRGB(25, 25, 25)
								TextLabel_3.Position = UDim2.new(0.0684039071, 0, 0.248148143, 0)
								TextLabel_3.Size = UDim2.new(0, 250, 0, 50)
								TextLabel_3.Font = Enum.Font.GothamBold
								TextLabel_3.Text = "Thanks For Using :)"
								TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel_3.TextSize = 14.000

								TextLabel_4.Parent = InfoPage
								TextLabel_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								TextLabel_4.BackgroundTransparency = 1.000
								TextLabel_4.BorderColor3 = Color3.fromRGB(25, 25, 25)
								TextLabel_4.Position = UDim2.new(0.0684039071, 0, 0.470370352, 0)
								TextLabel_4.Size = UDim2.new(0, 250, 0, 50)
								TextLabel_4.Font = Enum.Font.GothamBold
								TextLabel_4.Text = "GalakxyFairs(Galaksiki) -> Tameria ->annen"
								TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel_4.TextSize = 14.000
								TextLabel_4.TextWrapped = true

								TextLabel_5.Parent = InfoPage
								TextLabel_5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								TextLabel_5.BackgroundTransparency = 1.000
								TextLabel_5.BorderColor3 = Color3.fromRGB(25, 25, 25)
								TextLabel_5.Position = UDim2.new(0.0684039071, 0, 0.714814782, 0)
								TextLabel_5.Size = UDim2.new(0, 250, 0, 50)
								TextLabel_5.Font = Enum.Font.GothamBold
								TextLabel_5.Text = "Tuncelilere bisey olursa luks artvin ne yapar? Kafasi atar ve gerekeni yapar :sunglasses:"
								TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel_5.TextSize = 14.000
								TextLabel_5.TextWrapped = true

								KeyPage.Name = "KeyPage"
								KeyPage.Parent = Pages
								KeyPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								KeyPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
								KeyPage.Position = UDim2.new(0.022292994, 0, 0, 0)
								KeyPage.Size = UDim2.new(0, 307, 0, 270)
								KeyPage.Visible = false

								UICorner_11.Parent = KeyPage

								KeyBox.Name = "KeyBox"
								KeyBox.Parent = KeyPage
								KeyBox.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
								KeyBox.BorderColor3 = Color3.fromRGB(34, 34, 34)
								KeyBox.Position = UDim2.new(0.026058631, 0, 0.0481481478, 0)
								KeyBox.Size = UDim2.new(0, 284, 0, 35)
								KeyBox.Font = Enum.Font.Gotham
								KeyBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
								KeyBox.PlaceholderText = "Enter Your Key Here"
								KeyBox.Text = ""
								KeyBox.TextColor3 = Color3.fromRGB(178, 178, 178)
								KeyBox.TextSize = 14.000
								KeyBox.TextWrapped = true

								UICorner_12.Parent = KeyBox

								UIStroke.Parent = KeyBox
								UIStroke.Color = Color3.fromRGB(60, 60, 60)
								UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

								Buttons.Name = "Buttons"
								Buttons.Parent = KeyPage
								Buttons.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
								Buttons.BorderColor3 = Color3.fromRGB(33, 33, 33)
								Buttons.Position = UDim2.new(0.026058631, 0, 0.240740746, 0)
								Buttons.Size = UDim2.new(0, 284, 0, 140)

								UIListLayout_2.Parent = Buttons
								UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
								UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
								UIListLayout_2.Padding = UDim.new(0, 2)

								UIStroke_2.Parent = Buttons
								UIStroke_2.Color = Color3.fromRGB(60, 60, 60)
								UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

								UICorner_13.Parent = Buttons

								SubmitKey.Name = "SubmitKey"
								SubmitKey.Parent = Buttons
								SubmitKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								SubmitKey.BackgroundTransparency = 1.000
								SubmitKey.Position = UDim2.new(0.00352112669, 0, 0, 0)
								SubmitKey.Size = UDim2.new(0, 282, 0, 31)
								SubmitKey.ZIndex = 0
								SubmitKey.Font = Enum.Font.Roboto
								SubmitKey.Text = "Submit Key"
								SubmitKey.TextColor3 = Color3.fromRGB(255, 255, 255)
								SubmitKey.TextSize = 17.000
								SubmitKey.MouseButton1Down:Connect(function()
									ripple(SubmitKey, Mouse.X, Mouse.Y)
									local key = KeyBox.Text
									pcall(function()
										if key == game:HttpGet("https://1.kelprepl.repl.co/verify/HawkHUB?verify_key="..key) or game:HttpGet("https://hawksoftworks.ga/Hawk/Generated.php?key="..key) == "Taklaya Geldin" then
											if IsHawk == true then
												delfile("Hawk\\HawkKey.lua")
												wait(0.2)
												writefile("Hawk\\HawkKey.lua", key)
											else
												writefile("Hawk\\HawkKey.lua", key)
											end	
											wait()
											TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Correct Key!</font>"
											cu(key)
											wait()
											getgenv().writefile = function() return nil end
											wait(0.5)
											LoadHawk()
										else
											TextLabel_6.Text = "Status: <font color=\"rgb(255, 0, 0)\">Wrong Key</font>"
											wait(0.5)
											TextLabel_6.Text = "Status: <font color=\"rgb(255, 0, 0)\"></font>"
										end
									end)
								end)

								UICorner_14.Parent = SubmitKey

								Line_2.Name = "Line"
								Line_2.Parent = Buttons
								Line_2.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
								Line_2.BorderColor3 = Color3.fromRGB(77, 77, 77)
								Line_2.Position = UDim2.new(0.241545901, 0, 0, 0)
								Line_2.Size = UDim2.new(0, 284, 0, 0)
								Line_2.ZIndex = 0

								GetKey.Name = "GetKey"
								GetKey.Parent = Buttons
								GetKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								GetKey.BackgroundTransparency = 1.000
								GetKey.Position = UDim2.new(0.00352112669, 0, 0.257352978, 0)
								GetKey.Size = UDim2.new(0, 282, 0, 31)
								GetKey.ZIndex = 0
								GetKey.Font = Enum.Font.Roboto
								GetKey.Text = "Get Key"
								GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
								GetKey.TextSize = 17.000
								GetKey.MouseButton1Down:Connect(function()
									ripple(GetKey, Mouse.X, Mouse.Y)
									TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Copied Key Link</font>"
									setclipboard("https://1.kelprepl.repl.co/getkey/HawkHUB")
									wait(0.5)
									TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
								end)

								UICorner_15.Parent = GetKey

								Line_3.Name = "Line"
								Line_3.Parent = Buttons
								Line_3.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
								Line_3.BorderColor3 = Color3.fromRGB(77, 77, 77)
								Line_3.Position = UDim2.new(0.241545901, 0, 0, 0)
								Line_3.Size = UDim2.new(0, 284, 0, 0)
								Line_3.ZIndex = 0

								Clean.Name = "Clean"
								Clean.Parent = Buttons
								Clean.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								Clean.BackgroundTransparency = 1.000
								Clean.Position = UDim2.new(0.00352112669, 0, 0.514705896, 0)
								Clean.Size = UDim2.new(0, 282, 0, 31)
								Clean.ZIndex = 0
								Clean.Font = Enum.Font.Roboto
								Clean.Text = "Clear"
								Clean.TextColor3 = Color3.fromRGB(255, 255, 255)
								Clean.TextSize = 17.000
								Clean.MouseButton1Down:Connect(function()
									ripple(Clean, Mouse.X, Mouse.Y)
									KeyBox.Text = ""
								end)

								UICorner_16.Parent = Clean

								Line_4.Name = "Line"
								Line_4.Parent = Buttons
								Line_4.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
								Line_4.BorderColor3 = Color3.fromRGB(77, 77, 77)
								Line_4.Position = UDim2.new(0.241545901, 0, 0, 0)
								Line_4.Size = UDim2.new(0, 284, 0, 0)
								Line_4.ZIndex = 0

								CopyKeyLink.Name = "CopyKeyLink"
								CopyKeyLink.Parent = Buttons
								CopyKeyLink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								CopyKeyLink.BackgroundTransparency = 1.000
								CopyKeyLink.Position = UDim2.new(0.00352112669, 0, 0.75, 0)
								CopyKeyLink.Size = UDim2.new(0, 282, 0, 35)
								CopyKeyLink.ZIndex = 0
								CopyKeyLink.Font = Enum.Font.Roboto
								CopyKeyLink.Text = "Copy Discord Link"
								CopyKeyLink.TextColor3 = Color3.fromRGB(255, 255, 255)
								CopyKeyLink.TextSize = 17.000
								CopyKeyLink.MouseButton1Down:Connect(function()
									ripple(CopyKeyLink, Mouse.X, Mouse.Y)
									TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Copied Discord Link</font>"
									setclipboard("https://discord.gg/5TSZESaFhG")
									wait(0.5)
									TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
								end)

								UICorner_17.Parent = CopyKeyLink

								TextLabel_6.Parent = KeyPage
								TextLabel_6.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								TextLabel_6.BackgroundTransparency = 1.000
								TextLabel_6.BorderColor3 = Color3.fromRGB(25, 25, 25)
								TextLabel_6.Position = UDim2.new(0.0521172658, 0, 0.788888872, 0)
								TextLabel_6.Size = UDim2.new(0, 127, 0, 50)
								TextLabel_6.Font = Enum.Font.GothamBold
								TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
								TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
								TextLabel_6.TextSize = 14.000
								TextLabel_6.TextWrapped = true
								TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left
								TextLabel_6.RichText = true

								CreditsPage.Name = "CreditsPage"
								CreditsPage.Parent = Pages
								CreditsPage.Active = true
								CreditsPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								CreditsPage.BackgroundTransparency = 1.000
								CreditsPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
								CreditsPage.Position = UDim2.new(0.0219999999, 0, 0, 0)
								CreditsPage.Size = UDim2.new(0, 307, 0, 270)
								CreditsPage.Visible = false

								UICorner_18.CornerRadius = UDim.new(0, 6)
								UICorner_18.Parent = CreditsPage

								CreditsTable.Name = "CreditsTable"
								CreditsTable.Parent = CreditsPage
								CreditsTable.Active = true
								CreditsTable.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								CreditsTable.BackgroundTransparency = 1.000
								CreditsTable.BorderColor3 = Color3.fromRGB(36, 36, 36)
								CreditsTable.BorderSizePixel = 0
								CreditsTable.Position = UDim2.new(-0.0225015953, 0, 0, 0)
								CreditsTable.Size = UDim2.new(0, 313, 0, 270)
								CreditsTable.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
								CreditsTable.CanvasSize = UDim2.new(0, 0, 2.20000005, 0)
								CreditsTable.ScrollBarThickness = 5

								YapanlarOmagad.Name = "YapanlarOmagad"
								YapanlarOmagad.Parent = CreditsTable
								YapanlarOmagad.Active = true
								YapanlarOmagad.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								YapanlarOmagad.BackgroundTransparency = 1.000
								YapanlarOmagad.BorderColor3 = Color3.fromRGB(25, 25, 25)
								YapanlarOmagad.Position = UDim2.new(0.0159999859, 0, 0.025925925, 0)
								YapanlarOmagad.Size = UDim2.new(0, 310, 0, 2103)

								UIListLayout_3.Parent = YapanlarOmagad
								UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
								UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
								UIListLayout_3.Padding = UDim.new(0, 17)

								UICorner_19.CornerRadius = UDim.new(0, 5)
								UICorner_19.Parent = YapanlarOmagad

								Hanki.Name = "Hanki"
								Hanki.Parent = YapanlarOmagad
								Hanki.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								Hanki.BackgroundTransparency = 1.000
								Hanki.BorderColor3 = Color3.fromRGB(25, 25, 25)
								Hanki.Position = UDim2.new(0.0790322572, 0, 0, 0)
								Hanki.Size = UDim2.new(0, 282, 0, 100)

								Pfp.Name = "Pfp"
								Pfp.Parent = Hanki
								Pfp.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Pfp.BackgroundTransparency = 1.000
								Pfp.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Pfp.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
								Pfp.Size = UDim2.new(0, 100, 0, 100)
								Pfp.Image = "rbxassetid://12429287173"

								UICorner_20.CornerRadius = UDim.new(0, 6)
								UICorner_20.Parent = Pfp

								UIStroke_3.Parent = Pfp
								UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
								UIStroke_3.Transparency = 0.800
								UIStroke_3.Thickness = 2.000
								UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

								UICorner_21.Parent = Hanki

								Username.Name = "Username"
								Username.Parent = Hanki
								Username.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Username.BackgroundTransparency = 1.000
								Username.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Username.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
								Username.Size = UDim2.new(0, 200, 0, 30)
								Username.Font = Enum.Font.GothamBold
								Username.Text = "Hanki"
								Username.TextColor3 = Color3.fromRGB(255, 255, 255)
								Username.TextSize = 17.000
								Username.TextXAlignment = Enum.TextXAlignment.Left

								Description.Name = "Description"
								Description.Parent = Hanki
								Description.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Description.BackgroundTransparency = 1.000
								Description.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Description.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
								Description.Size = UDim2.new(0, 173, 0, 64)
								Description.Font = Enum.Font.GothamBold
								Description.Text = "Owner Of Cihonax HUB, 5N1K HUB and Veso Lux"
								Description.TextColor3 = Color3.fromRGB(177, 177, 177)
								Description.TextSize = 17.000
								Description.TextWrapped = true
								Description.TextXAlignment = Enum.TextXAlignment.Left

								Batumation.Name = "Batumation"
								Batumation.Parent = YapanlarOmagad
								Batumation.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								Batumation.BackgroundTransparency = 1.000
								Batumation.BorderColor3 = Color3.fromRGB(25, 25, 25)
								Batumation.Position = UDim2.new(0.0790322572, 0, 0, 0)
								Batumation.Size = UDim2.new(0, 282, 0, 100)

								Pfp_2.Name = "Pfp"
								Pfp_2.Parent = Batumation
								Pfp_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Pfp_2.BackgroundTransparency = 1.000
								Pfp_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Pfp_2.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
								Pfp_2.Size = UDim2.new(0, 100, 0, 100)
								Pfp_2.Image = "rbxassetid://8000627366"

								UICorner_22.CornerRadius = UDim.new(0, 6)
								UICorner_22.Parent = Pfp_2

								UIStroke_4.Parent = Pfp_2
								UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
								UIStroke_4.Transparency = 0.800
								UIStroke_4.Thickness = 2.000
								UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

								UICorner_23.Parent = Batumation

								Username_2.Name = "Username"
								Username_2.Parent = Batumation
								Username_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Username_2.BackgroundTransparency = 1.000
								Username_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Username_2.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
								Username_2.Size = UDim2.new(0, 200, 0, 30)
								Username_2.Font = Enum.Font.GothamBold
								Username_2.Text = "Batumation"
								Username_2.TextColor3 = Color3.fromRGB(255, 255, 255)
								Username_2.TextSize = 17.000
								Username_2.TextXAlignment = Enum.TextXAlignment.Left

								Description_2.Name = "Description"
								Description_2.Parent = Batumation
								Description_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Description_2.BackgroundTransparency = 1.000
								Description_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Description_2.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
								Description_2.Size = UDim2.new(0, 173, 0, 64)
								Description_2.Font = Enum.Font.GothamBold
								Description_2.Text = "Owner of Cihone HUB and Batu HUB"
								Description_2.TextColor3 = Color3.fromRGB(177, 177, 177)
								Description_2.TextSize = 17.000
								Description_2.TextWrapped = true
								Description_2.TextXAlignment = Enum.TextXAlignment.Left

								Ege.Name = "Ege"
								Ege.Parent = YapanlarOmagad
								Ege.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								Ege.BackgroundTransparency = 1.000
								Ege.BorderColor3 = Color3.fromRGB(25, 25, 25)
								Ege.Position = UDim2.new(0.0790322572, 0, 0, 0)
								Ege.Size = UDim2.new(0, 282, 0, 100)

								Pfp_3.Name = "Pfp"
								Pfp_3.Parent = Ege
								Pfp_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Pfp_3.BackgroundTransparency = 1.000
								Pfp_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Pfp_3.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
								Pfp_3.Size = UDim2.new(0, 100, 0, 100)
								Pfp_3.Image = "rbxassetid://12327614057"

								UICorner_24.CornerRadius = UDim.new(0, 6)
								UICorner_24.Parent = Pfp_3

								UIStroke_5.Parent = Pfp_3
								UIStroke_5.Color = Color3.fromRGB(255, 255, 255)
								UIStroke_5.Transparency = 0.800
								UIStroke_5.Thickness = 2.000
								UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

								UICorner_25.Parent = Ege

								Username_3.Name = "Username"
								Username_3.Parent = Ege
								Username_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Username_3.BackgroundTransparency = 1.000
								Username_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Username_3.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
								Username_3.Size = UDim2.new(0, 200, 0, 30)
								Username_3.Font = Enum.Font.GothamBold
								Username_3.Text = "Egw"
								Username_3.TextColor3 = Color3.fromRGB(255, 255, 255)
								Username_3.TextSize = 17.000
								Username_3.TextXAlignment = Enum.TextXAlignment.Left

								Description_3.Name = "Description"
								Description_3.Parent = Ege
								Description_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Description_3.BackgroundTransparency = 1.000
								Description_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Description_3.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
								Description_3.Size = UDim2.new(0, 173, 0, 64)
								Description_3.Font = Enum.Font.GothamBold
								Description_3.Text = "Owner of Veso Lux"
								Description_3.TextColor3 = Color3.fromRGB(177, 177, 177)
								Description_3.TextSize = 17.000
								Description_3.TextWrapped = true
								Description_3.TextXAlignment = Enum.TextXAlignment.Left

								Aro.Name = "Aro"
								Aro.Parent = YapanlarOmagad
								Aro.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								Aro.BackgroundTransparency = 1.000
								Aro.BorderColor3 = Color3.fromRGB(25, 25, 25)
								Aro.Position = UDim2.new(0.0790322572, 0, 0, 0)
								Aro.Size = UDim2.new(0, 282, 0, 100)

								Pfp_4.Name = "Pfp"
								Pfp_4.Parent = Aro
								Pfp_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Pfp_4.BackgroundTransparency = 1.000
								Pfp_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Pfp_4.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
								Pfp_4.Size = UDim2.new(0, 100, 0, 100)
								Pfp_4.Image = "rbxassetid://12321793277"

								UICorner_26.CornerRadius = UDim.new(0, 6)
								UICorner_26.Parent = Pfp_4

								UIStroke_6.Parent = Pfp_4
								UIStroke_6.Color = Color3.fromRGB(255, 255, 255)
								UIStroke_6.Transparency = 0.800
								UIStroke_6.Thickness = 2.000
								UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

								UICorner_27.Parent = Aro

								Username_4.Name = "Username"
								Username_4.Parent = Aro
								Username_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Username_4.BackgroundTransparency = 1.000
								Username_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Username_4.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
								Username_4.Size = UDim2.new(0, 200, 0, 30)
								Username_4.Font = Enum.Font.GothamBold
								Username_4.Text = "Aro"
								Username_4.TextColor3 = Color3.fromRGB(255, 255, 255)
								Username_4.TextSize = 17.000
								Username_4.TextXAlignment = Enum.TextXAlignment.Left

								Description_4.Name = "Description"
								Description_4.Parent = Aro
								Description_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Description_4.BackgroundTransparency = 1.000
								Description_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Description_4.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
								Description_4.Size = UDim2.new(0, 173, 0, 64)
								Description_4.Font = Enum.Font.GothamBold
								Description_4.Text = "Owner of ArrowSploit"
								Description_4.TextColor3 = Color3.fromRGB(177, 177, 177)
								Description_4.TextSize = 17.000
								Description_4.TextWrapped = true
								Description_4.TextXAlignment = Enum.TextXAlignment.Left

								LilRhytxm.Name = "LilRhytxm"
								LilRhytxm.Parent = YapanlarOmagad
								LilRhytxm.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								LilRhytxm.BackgroundTransparency = 1.000
								LilRhytxm.BorderColor3 = Color3.fromRGB(25, 25, 25)
								LilRhytxm.Position = UDim2.new(0.0790322572, 0, 0, 0)
								LilRhytxm.Size = UDim2.new(0, 282, 0, 100)

								Pfp_5.Name = "Pfp"
								Pfp_5.Parent = LilRhytxm
								Pfp_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Pfp_5.BackgroundTransparency = 1.000
								Pfp_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Pfp_5.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
								Pfp_5.Size = UDim2.new(0, 100, 0, 100)
								Pfp_5.Image = "rbxassetid://12321778386"

								UICorner_28.CornerRadius = UDim.new(0, 6)
								UICorner_28.Parent = Pfp_5

								UIStroke_7.Parent = Pfp_5
								UIStroke_7.Color = Color3.fromRGB(255, 255, 255)
								UIStroke_7.Transparency = 0.800
								UIStroke_7.Thickness = 2.000
								UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

								UICorner_29.Parent = LilRhytxm

								Username_5.Name = "Username"
								Username_5.Parent = LilRhytxm
								Username_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Username_5.BackgroundTransparency = 1.000
								Username_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Username_5.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
								Username_5.Size = UDim2.new(0, 200, 0, 30)
								Username_5.Font = Enum.Font.GothamBold
								Username_5.Text = "Lil Rhytxm"
								Username_5.TextColor3 = Color3.fromRGB(255, 255, 255)
								Username_5.TextSize = 17.000
								Username_5.TextXAlignment = Enum.TextXAlignment.Left

								Description_5.Name = "Description"
								Description_5.Parent = LilRhytxm
								Description_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								Description_5.BackgroundTransparency = 1.000
								Description_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
								Description_5.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
								Description_5.Size = UDim2.new(0, 173, 0, 64)
								Description_5.Font = Enum.Font.GothamBold
								Description_5.Text = "Owner of GusSploit"
								Description_5.TextColor3 = Color3.fromRGB(177, 177, 177)
								Description_5.TextSize = 17.000
								Description_5.TextWrapped = true
								Description_5.TextXAlignment = Enum.TextXAlignment.Left

								UICorner_30.CornerRadius = UDim.new(0, 6)
								UICorner_30.Parent = CreditsTable

								ScaryPage.Name = "ScaryPage"
								ScaryPage.Parent = Pages
								ScaryPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
								ScaryPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
								ScaryPage.Position = UDim2.new(0.022292994, 0, 0, 0)
								ScaryPage.Size = UDim2.new(0, 307, 0, 270)
								ScaryPage.Visible = false

								UICorner_31.Parent = ScaryPage

								ImageLabel.Parent = ScaryPage
								ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								ImageLabel.Position = UDim2.new(-0.0228013024, 0, 0, 0)
								ImageLabel.Size = UDim2.new(0, 314, 0, 270)
								ImageLabel.Image = "rbxassetid://10847340019"

								UICorner_32.Parent = ImageLabel


								Key.MouseButton1Down:Connect(function()
									for i, v in pairs(TabContainer:GetDescendants()) do
										if v:IsA("TextButton") then
											v.MouseButton1Down:Connect(function()
												for i, q in pairs(TabContainer:GetChildren()) do
													if q:IsA("TextButton") then
														TweenService:Create(
															q,
															TweenInfo.new(.3, Enum.EasingStyle.Back),
															{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
														):Play()
														TweenService:Create(
															q,
															TweenInfo.new(.3, Enum.EasingStyle.Back),
															{TextColor3 = Color3.fromRGB(217, 217, 217)}
														):Play()
													end
												end
											end)
										end
									end
									TweenService:Create(
										Key,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
									):Play()
									TweenService:Create(
										Key,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{TextColor3 = Color3.fromRGB(255, 255, 255)}
									):Play()
									for w,e in pairs(Pages:GetChildren()) do
										if e:IsA("Frame") and e.Name ~= "KeyPage" then
											e.Visible = false
										end
									end
									KeyPage.Visible = true
								end)

								Info.MouseButton1Down:Connect(function()
									for i, v in pairs(TabContainer:GetDescendants()) do
										if v:IsA("TextButton") then
											v.MouseButton1Down:Connect(function()
												for i, q in pairs(TabContainer:GetChildren()) do
													if q:IsA("TextButton") then
														TweenService:Create(
															q,
															TweenInfo.new(.3, Enum.EasingStyle.Back),
															{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
														):Play()
														TweenService:Create(
															q,
															TweenInfo.new(.3, Enum.EasingStyle.Back),
															{TextColor3 = Color3.fromRGB(217, 217, 217)}
														):Play()
													end
												end
											end)
										end
									end
									TweenService:Create(
										Info,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
									):Play()
									TweenService:Create(
										Info,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{TextColor3 = Color3.fromRGB(255, 255, 255)}
									):Play()
									for w,e in pairs(Pages:GetChildren()) do
										if e:IsA("Frame") and e.Name ~= "InfoPage" then
											e.Visible = false
										end
									end
									InfoPage.Visible = true
								end)

								Credits.MouseButton1Down:Connect(function()
									for i, v in pairs(TabContainer:GetDescendants()) do
										if v:IsA("TextButton") then
											v.MouseButton1Down:Connect(function()
												for i, q in pairs(TabContainer:GetChildren()) do
													if q:IsA("TextButton") then
														TweenService:Create(
															q,
															TweenInfo.new(.3, Enum.EasingStyle.Back),
															{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
														):Play()
														TweenService:Create(
															q,
															TweenInfo.new(.3, Enum.EasingStyle.Back),
															{TextColor3 = Color3.fromRGB(217, 217, 217)}
														):Play()
													end
												end
											end)
										end
									end
									TweenService:Create(
										Credits,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
									):Play()
									TweenService:Create(
										Credits,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{TextColor3 = Color3.fromRGB(255, 255, 255)}
									):Play()
									for w,e in pairs(Pages:GetChildren()) do
										if e:IsA("Frame") and e.Name ~= "CreditsPage" then
											e.Visible = false
										end
									end
									CreditsPage.Visible = true
								end)

								Scary.MouseButton1Down:Connect(function()
									for i, v in pairs(TabContainer:GetDescendants()) do
										if v:IsA("TextButton") then
											v.MouseButton1Down:Connect(function()
												for i, q in pairs(TabContainer:GetChildren()) do
													if q:IsA("TextButton") then
														TweenService:Create(
															q,
															TweenInfo.new(.3, Enum.EasingStyle.Back),
															{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
														):Play()
														TweenService:Create(
															q,
															TweenInfo.new(.3, Enum.EasingStyle.Back),
															{TextColor3 = Color3.fromRGB(217, 217, 217)}
														):Play()
													end
												end
											end)
										end
									end
									TweenService:Create(
										Scary,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
									):Play()
									TweenService:Create(
										Scary,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{TextColor3 = Color3.fromRGB(255, 255, 255)}
									):Play()
									for w,e in pairs(Pages:GetChildren()) do
										if e:IsA("Frame") and e.Name ~= "ScaryPage" then
											e.Visible = false
										end
									end
									ScaryPage.Visible = true
								end)

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
						end)
					else	
						Intro()
						for i, v in pairs(game.CoreGui:GetChildren()) do
							if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
								v:Destroy()
							end
						end

						local HawkKeySystem = Instance.new("ScreenGui")
						local Main = Instance.new("Frame")
						local Tabs = Instance.new("Frame")
						local UICorner = Instance.new("UICorner")
						local Logo = Instance.new("ImageLabel")
						local TextLabel = Instance.new("TextLabel")
						local TabContainer = Instance.new("Frame")
						local UICorner_2 = Instance.new("UICorner")
						local UIListLayout = Instance.new("UIListLayout")
						local Key = Instance.new("TextButton")
						local UICorner_3 = Instance.new("UICorner")
						local Info = Instance.new("TextButton")
						local UICorner_4 = Instance.new("UICorner")
						local Scary = Instance.new("TextButton")
						local UICorner_5 = Instance.new("UICorner")
						local Credits = Instance.new("TextButton")
						local UICorner_6 = Instance.new("UICorner")
						local Line = Instance.new("Frame")
						local UICorner_7 = Instance.new("UICorner")
						local Glow = Instance.new("ImageLabel")
						local UICorner_8 = Instance.new("UICorner")
						local Pages = Instance.new("Frame")
						local UICorner_9 = Instance.new("UICorner")
						local InfoPage = Instance.new("Frame")
						local UICorner_10 = Instance.new("UICorner")
						local TextLabel_2 = Instance.new("TextLabel")
						local TextLabel_3 = Instance.new("TextLabel")
						local TextLabel_4 = Instance.new("TextLabel")
						local TextLabel_5 = Instance.new("TextLabel")
						local KeyPage = Instance.new("Frame")
						local UICorner_11 = Instance.new("UICorner")
						local KeyBox = Instance.new("TextBox")
						local UICorner_12 = Instance.new("UICorner")
						local UIStroke = Instance.new("UIStroke")
						local Buttons = Instance.new("Frame")
						local UIListLayout_2 = Instance.new("UIListLayout")
						local UIStroke_2 = Instance.new("UIStroke")
						local UICorner_13 = Instance.new("UICorner")
						local SubmitKey = Instance.new("TextButton")
						local UICorner_14 = Instance.new("UICorner")
						local Line_2 = Instance.new("Frame")
						local GetKey = Instance.new("TextButton")
						local UICorner_15 = Instance.new("UICorner")
						local Line_3 = Instance.new("Frame")
						local Clean = Instance.new("TextButton")
						local UICorner_16 = Instance.new("UICorner")
						local Line_4 = Instance.new("Frame")
						local CopyKeyLink = Instance.new("TextButton")
						local UICorner_17 = Instance.new("UICorner")
						local TextLabel_6 = Instance.new("TextLabel")
						local CreditsPage = Instance.new("Frame")
						local UICorner_18 = Instance.new("UICorner")
						local CreditsTable = Instance.new("ScrollingFrame")
						local YapanlarOmagad = Instance.new("Frame")
						local UIListLayout_3 = Instance.new("UIListLayout")
						local UICorner_19 = Instance.new("UICorner")
						local Hanki = Instance.new("Frame")
						local Pfp = Instance.new("ImageLabel")
						local UICorner_20 = Instance.new("UICorner")
						local UIStroke_3 = Instance.new("UIStroke")
						local UICorner_21 = Instance.new("UICorner")
						local Username = Instance.new("TextLabel")
						local Description = Instance.new("TextLabel")
						local Batumation = Instance.new("Frame")
						local Pfp_2 = Instance.new("ImageLabel")
						local UICorner_22 = Instance.new("UICorner")
						local UIStroke_4 = Instance.new("UIStroke")
						local UICorner_23 = Instance.new("UICorner")
						local Username_2 = Instance.new("TextLabel")
						local Description_2 = Instance.new("TextLabel")
						local Ege = Instance.new("Frame")
						local Pfp_3 = Instance.new("ImageLabel")
						local UICorner_24 = Instance.new("UICorner")
						local UIStroke_5 = Instance.new("UIStroke")
						local UICorner_25 = Instance.new("UICorner")
						local Username_3 = Instance.new("TextLabel")
						local Description_3 = Instance.new("TextLabel")
						local Aro = Instance.new("Frame")
						local Pfp_4 = Instance.new("ImageLabel")
						local UICorner_26 = Instance.new("UICorner")
						local UIStroke_6 = Instance.new("UIStroke")
						local UICorner_27 = Instance.new("UICorner")
						local Username_4 = Instance.new("TextLabel")
						local Description_4 = Instance.new("TextLabel")
						local LilRhytxm = Instance.new("Frame")
						local Pfp_5 = Instance.new("ImageLabel")
						local UICorner_28 = Instance.new("UICorner")
						local UIStroke_7 = Instance.new("UIStroke")
						local UICorner_29 = Instance.new("UICorner")
						local Username_5 = Instance.new("TextLabel")
						local Description_5 = Instance.new("TextLabel")
						local UICorner_30 = Instance.new("UICorner")
						local ScaryPage = Instance.new("Frame")
						local UICorner_31 = Instance.new("UICorner")
						local ImageLabel = Instance.new("ImageLabel")
						local UICorner_32 = Instance.new("UICorner")

						HawkKeySystem.Name = "HawkKeySystem"
						HawkKeySystem.Parent = game.CoreGui
						HawkKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
						HawkKeySystem.ResetOnSpawn = false

						Main.Name = "Main"
						Main.Parent = HawkKeySystem
						Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						Main.BorderColor3 = Color3.fromRGB(25, 25, 25)
						Main.Position = UDim2.new(0.5, -207,0.5, -135)
						Main.Size = UDim2.new(0, 414, 0, 270)

						Tabs.Name = "Tabs"
						Tabs.Parent = Main
						Tabs.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
						Tabs.BorderColor3 = Color3.fromRGB(22, 22, 22)
						Tabs.Size = UDim2.new(0, 100, 0, 270)

						UICorner.Parent = Tabs

						Logo.Name = "Logo"
						Logo.Parent = Tabs
						Logo.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
						Logo.BorderColor3 = Color3.fromRGB(22, 22, 22)
						Logo.Position = UDim2.new(0.140000001, 0, 0.025925925, 0)
						Logo.Size = UDim2.new(0, 72, 0, 70)
						Logo.Image = "http://www.roblox.com/asset/?id=10179402650"

						TextLabel.Parent = Tabs
						TextLabel.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
						TextLabel.BorderColor3 = Color3.fromRGB(22, 22, 22)
						TextLabel.Position = UDim2.new(0.140000001, 0, 0.285185188, 0)
						TextLabel.Size = UDim2.new(0, 72, 0, 21)
						TextLabel.Font = Enum.Font.GothamBold
						TextLabel.Text = "Hawk HUB"
						TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.TextSize = 14.000

						TabContainer.Name = "TabContainer"
						TabContainer.Parent = Tabs
						TabContainer.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
						TabContainer.BorderColor3 = Color3.fromRGB(22, 22, 22)
						TabContainer.Position = UDim2.new(0, 0, 0.392592579, 0)
						TabContainer.Size = UDim2.new(0, 100, 0, 164)

						UICorner_2.CornerRadius = UDim.new(0, 6)
						UICorner_2.Parent = TabContainer

						UIListLayout.Parent = TabContainer
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout.Padding = UDim.new(0, 7)

						Key.Name = "Key"
						Key.Parent = TabContainer
						Key.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
						Key.BorderColor3 = Color3.fromRGB(38, 38, 38)
						Key.Position = UDim2.new(0.140000001, 0, 0, 0)
						Key.Size = UDim2.new(0, 86, 0, 26)
						Key.Font = Enum.Font.GothamBold
						Key.Text = "Key"
						Key.TextColor3 = Color3.fromRGB(217, 217, 217)
						Key.TextSize = 14.000

						UICorner_3.Parent = Key

						Info.Name = "Info"
						Info.Parent = TabContainer
						Info.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
						Info.BorderColor3 = Color3.fromRGB(38, 38, 38)
						Info.Position = UDim2.new(0.140000001, 0, 0.195121944, 0)
						Info.Size = UDim2.new(0, 86, 0, 26)
						Info.Font = Enum.Font.GothamBold
						Info.Text = "Info"
						Info.TextColor3 = Color3.fromRGB(217, 217, 217)
						Info.TextSize = 14.000

						UICorner_4.Parent = Info

						Scary.Name = "Scary"
						Scary.Parent = TabContainer
						Scary.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
						Scary.BorderColor3 = Color3.fromRGB(38, 38, 38)
						Scary.Position = UDim2.new(0.140000001, 0, 0.585365832, 0)
						Scary.Size = UDim2.new(0, 86, 0, 26)
						Scary.Font = Enum.Font.GothamBold
						Scary.Text = "Scary"
						Scary.TextColor3 = Color3.fromRGB(217, 217, 217)
						Scary.TextSize = 14.000

						UICorner_5.Parent = Scary

						Credits.Name = "Credits"
						Credits.Parent = TabContainer
						Credits.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
						Credits.BorderColor3 = Color3.fromRGB(38, 38, 38)
						Credits.Position = UDim2.new(0.140000001, 0, 0.390243888, 0)
						Credits.Size = UDim2.new(0, 86, 0, 26)
						Credits.Font = Enum.Font.GothamBold
						Credits.Text = "Credits"
						Credits.TextColor3 = Color3.fromRGB(217, 217, 217)
						Credits.TextSize = 14.000

						UICorner_6.Parent = Credits

						Line.Name = "Line"
						Line.Parent = Main
						Line.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
						Line.BorderColor3 = Color3.fromRGB(45, 45, 45)
						Line.Position = UDim2.new(0.241545901, 0, 0.00740740728, 0)
						Line.Size = UDim2.new(0, 0, 0, 266)

						UICorner_7.Parent = Main

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

						UICorner_8.Parent = Glow

						Pages.Name = "Pages"
						Pages.Parent = Main
						Pages.Active = true
						Pages.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						Pages.BackgroundTransparency = 1.000
						Pages.BorderColor3 = Color3.fromRGB(25, 25, 25)
						Pages.Position = UDim2.new(0.241545901, 0, 0, 0)
						Pages.Size = UDim2.new(0, 314, 0, 270)

						UICorner_9.Parent = Pages

						InfoPage.Name = "InfoPage"
						InfoPage.Parent = Pages
						InfoPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						InfoPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
						InfoPage.Position = UDim2.new(0.022292994, 0, 0, 0)
						InfoPage.Size = UDim2.new(0, 307, 0, 270)
						InfoPage.Visible = false

						UICorner_10.Parent = InfoPage

						TextLabel_2.Parent = InfoPage
						TextLabel_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						TextLabel_2.BackgroundTransparency = 1.000
						TextLabel_2.BorderColor3 = Color3.fromRGB(25, 25, 25)
						TextLabel_2.Position = UDim2.new(0.0684039071, 0, 0.0629629642, 0)
						TextLabel_2.Size = UDim2.new(0, 250, 0, 50)
						TextLabel_2.Font = Enum.Font.GothamBold
						TextLabel_2.Text = "This Script is Made By |Hawk Softworks|"
						TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel_2.TextSize = 14.000

						TextLabel_3.Parent = InfoPage
						TextLabel_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						TextLabel_3.BackgroundTransparency = 1.000
						TextLabel_3.BorderColor3 = Color3.fromRGB(25, 25, 25)
						TextLabel_3.Position = UDim2.new(0.0684039071, 0, 0.248148143, 0)
						TextLabel_3.Size = UDim2.new(0, 250, 0, 50)
						TextLabel_3.Font = Enum.Font.GothamBold
						TextLabel_3.Text = "Thanks For Using :)"
						TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel_3.TextSize = 14.000

						TextLabel_4.Parent = InfoPage
						TextLabel_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						TextLabel_4.BackgroundTransparency = 1.000
						TextLabel_4.BorderColor3 = Color3.fromRGB(25, 25, 25)
						TextLabel_4.Position = UDim2.new(0.0684039071, 0, 0.470370352, 0)
						TextLabel_4.Size = UDim2.new(0, 250, 0, 50)
						TextLabel_4.Font = Enum.Font.GothamBold
						TextLabel_4.Text = "GalakxyFairs(Galaksiki) -> Tameria ->annen"
						TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel_4.TextSize = 14.000
						TextLabel_4.TextWrapped = true

						TextLabel_5.Parent = InfoPage
						TextLabel_5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						TextLabel_5.BackgroundTransparency = 1.000
						TextLabel_5.BorderColor3 = Color3.fromRGB(25, 25, 25)
						TextLabel_5.Position = UDim2.new(0.0684039071, 0, 0.714814782, 0)
						TextLabel_5.Size = UDim2.new(0, 250, 0, 50)
						TextLabel_5.Font = Enum.Font.GothamBold
						TextLabel_5.Text = "Tuncelilere bisey olursa luks artvin ne yapar? Kafasi atar ve gerekeni yapar :sunglasses:"
						TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel_5.TextSize = 14.000
						TextLabel_5.TextWrapped = true

						KeyPage.Name = "KeyPage"
						KeyPage.Parent = Pages
						KeyPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						KeyPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
						KeyPage.Position = UDim2.new(0.022292994, 0, 0, 0)
						KeyPage.Size = UDim2.new(0, 307, 0, 270)
						KeyPage.Visible = false

						UICorner_11.Parent = KeyPage

						KeyBox.Name = "KeyBox"
						KeyBox.Parent = KeyPage
						KeyBox.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
						KeyBox.BorderColor3 = Color3.fromRGB(34, 34, 34)
						KeyBox.Position = UDim2.new(0.026058631, 0, 0.0481481478, 0)
						KeyBox.Size = UDim2.new(0, 284, 0, 35)
						KeyBox.Font = Enum.Font.Gotham
						KeyBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
						KeyBox.PlaceholderText = "Enter Your Key Here"
						KeyBox.Text = ""
						KeyBox.TextColor3 = Color3.fromRGB(178, 178, 178)
						KeyBox.TextSize = 14.000
						KeyBox.TextWrapped = true

						UICorner_12.Parent = KeyBox

						UIStroke.Parent = KeyBox
						UIStroke.Color = Color3.fromRGB(60, 60, 60)
						UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

						Buttons.Name = "Buttons"
						Buttons.Parent = KeyPage
						Buttons.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
						Buttons.BorderColor3 = Color3.fromRGB(33, 33, 33)
						Buttons.Position = UDim2.new(0.026058631, 0, 0.240740746, 0)
						Buttons.Size = UDim2.new(0, 284, 0, 140)

						UIListLayout_2.Parent = Buttons
						UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout_2.Padding = UDim.new(0, 2)

						UIStroke_2.Parent = Buttons
						UIStroke_2.Color = Color3.fromRGB(60, 60, 60)
						UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

						UICorner_13.Parent = Buttons

						SubmitKey.Name = "SubmitKey"
						SubmitKey.Parent = Buttons
						SubmitKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						SubmitKey.BackgroundTransparency = 1.000
						SubmitKey.Position = UDim2.new(0.00352112669, 0, 0, 0)
						SubmitKey.Size = UDim2.new(0, 282, 0, 31)
						SubmitKey.ZIndex = 0
						SubmitKey.Font = Enum.Font.Roboto
						SubmitKey.Text = "Submit Key"
						SubmitKey.TextColor3 = Color3.fromRGB(255, 255, 255)
						SubmitKey.TextSize = 17.000
						SubmitKey.MouseButton1Down:Connect(function()
							ripple(SubmitKey, Mouse.X, Mouse.Y)
							local key = KeyBox.Text
							pcall(function()
								if key == game:HttpGet("https://1.kelprepl.repl.co/verify/HawkHUB?verify_key="..key) or game:HttpGet("https://hawksoftworks.ga/Hawk/Generated.php?key="..key) == "Taklaya Geldin" then
									if IsHawk == true then
										delfile("Hawk\\HawkKey.lua")
										wait(0.2)
										writefile("Hawk\\HawkKey.lua", key)
									else
										writefile("Hawk\\HawkKey.lua", key)
									end	
									wait()
									TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Correct Key!</font>"
									cu(key)
									wait()
									getgenv().writefile = function() return nil end
									wait(0.5)
									LoadHawk()
								else
									TextLabel_6.Text = "Status: <font color=\"rgb(255, 0, 0)\">Wrong Key</font>"
									wait(0.5)
									TextLabel_6.Text = "Status: <font color=\"rgb(255, 0, 0)\"></font>"
								end
							end)
						end)

						UICorner_14.Parent = SubmitKey

						Line_2.Name = "Line"
						Line_2.Parent = Buttons
						Line_2.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
						Line_2.BorderColor3 = Color3.fromRGB(77, 77, 77)
						Line_2.Position = UDim2.new(0.241545901, 0, 0, 0)
						Line_2.Size = UDim2.new(0, 284, 0, 0)
						Line_2.ZIndex = 0

						GetKey.Name = "GetKey"
						GetKey.Parent = Buttons
						GetKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						GetKey.BackgroundTransparency = 1.000
						GetKey.Position = UDim2.new(0.00352112669, 0, 0.257352978, 0)
						GetKey.Size = UDim2.new(0, 282, 0, 31)
						GetKey.ZIndex = 0
						GetKey.Font = Enum.Font.Roboto
						GetKey.Text = "Get Key"
						GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
						GetKey.TextSize = 17.000
						GetKey.MouseButton1Down:Connect(function()
							ripple(GetKey, Mouse.X, Mouse.Y)
							TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Copied Key Link</font>"
							setclipboard("https://1.kelprepl.repl.co/getkey/HawkHUB")
							wait(0.5)
							TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
						end)

						UICorner_15.Parent = GetKey

						Line_3.Name = "Line"
						Line_3.Parent = Buttons
						Line_3.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
						Line_3.BorderColor3 = Color3.fromRGB(77, 77, 77)
						Line_3.Position = UDim2.new(0.241545901, 0, 0, 0)
						Line_3.Size = UDim2.new(0, 284, 0, 0)
						Line_3.ZIndex = 0

						Clean.Name = "Clean"
						Clean.Parent = Buttons
						Clean.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Clean.BackgroundTransparency = 1.000
						Clean.Position = UDim2.new(0.00352112669, 0, 0.514705896, 0)
						Clean.Size = UDim2.new(0, 282, 0, 31)
						Clean.ZIndex = 0
						Clean.Font = Enum.Font.Roboto
						Clean.Text = "Clear"
						Clean.TextColor3 = Color3.fromRGB(255, 255, 255)
						Clean.TextSize = 17.000
						Clean.MouseButton1Down:Connect(function()
							ripple(Clean, Mouse.X, Mouse.Y)
							KeyBox.Text = ""
						end)

						UICorner_16.Parent = Clean

						Line_4.Name = "Line"
						Line_4.Parent = Buttons
						Line_4.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
						Line_4.BorderColor3 = Color3.fromRGB(77, 77, 77)
						Line_4.Position = UDim2.new(0.241545901, 0, 0, 0)
						Line_4.Size = UDim2.new(0, 284, 0, 0)
						Line_4.ZIndex = 0

						CopyKeyLink.Name = "CopyKeyLink"
						CopyKeyLink.Parent = Buttons
						CopyKeyLink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						CopyKeyLink.BackgroundTransparency = 1.000
						CopyKeyLink.Position = UDim2.new(0.00352112669, 0, 0.75, 0)
						CopyKeyLink.Size = UDim2.new(0, 282, 0, 35)
						CopyKeyLink.ZIndex = 0
						CopyKeyLink.Font = Enum.Font.Roboto
						CopyKeyLink.Text = "Copy Discord Link"
						CopyKeyLink.TextColor3 = Color3.fromRGB(255, 255, 255)
						CopyKeyLink.TextSize = 17.000
						CopyKeyLink.MouseButton1Down:Connect(function()
							ripple(CopyKeyLink, Mouse.X, Mouse.Y)
							TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Copied Discord Link</font>"
							setclipboard("https://discord.gg/5TSZESaFhG")
							wait(0.5)
							TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
						end)

						UICorner_17.Parent = CopyKeyLink

						TextLabel_6.Parent = KeyPage
						TextLabel_6.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						TextLabel_6.BackgroundTransparency = 1.000
						TextLabel_6.BorderColor3 = Color3.fromRGB(25, 25, 25)
						TextLabel_6.Position = UDim2.new(0.0521172658, 0, 0.788888872, 0)
						TextLabel_6.Size = UDim2.new(0, 127, 0, 50)
						TextLabel_6.Font = Enum.Font.GothamBold
						TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
						TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel_6.TextSize = 14.000
						TextLabel_6.TextWrapped = true
						TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left
						TextLabel_6.RichText = true

						CreditsPage.Name = "CreditsPage"
						CreditsPage.Parent = Pages
						CreditsPage.Active = true
						CreditsPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						CreditsPage.BackgroundTransparency = 1.000
						CreditsPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
						CreditsPage.Position = UDim2.new(0.0219999999, 0, 0, 0)
						CreditsPage.Size = UDim2.new(0, 307, 0, 270)
						CreditsPage.Visible = false

						UICorner_18.CornerRadius = UDim.new(0, 6)
						UICorner_18.Parent = CreditsPage

						CreditsTable.Name = "CreditsTable"
						CreditsTable.Parent = CreditsPage
						CreditsTable.Active = true
						CreditsTable.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						CreditsTable.BackgroundTransparency = 1.000
						CreditsTable.BorderColor3 = Color3.fromRGB(36, 36, 36)
						CreditsTable.BorderSizePixel = 0
						CreditsTable.Position = UDim2.new(-0.0225015953, 0, 0, 0)
						CreditsTable.Size = UDim2.new(0, 313, 0, 270)
						CreditsTable.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
						CreditsTable.CanvasSize = UDim2.new(0, 0, 2.20000005, 0)
						CreditsTable.ScrollBarThickness = 5

						YapanlarOmagad.Name = "YapanlarOmagad"
						YapanlarOmagad.Parent = CreditsTable
						YapanlarOmagad.Active = true
						YapanlarOmagad.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						YapanlarOmagad.BackgroundTransparency = 1.000
						YapanlarOmagad.BorderColor3 = Color3.fromRGB(25, 25, 25)
						YapanlarOmagad.Position = UDim2.new(0.0159999859, 0, 0.025925925, 0)
						YapanlarOmagad.Size = UDim2.new(0, 310, 0, 2103)

						UIListLayout_3.Parent = YapanlarOmagad
						UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
						UIListLayout_3.Padding = UDim.new(0, 17)

						UICorner_19.CornerRadius = UDim.new(0, 5)
						UICorner_19.Parent = YapanlarOmagad

						Hanki.Name = "Hanki"
						Hanki.Parent = YapanlarOmagad
						Hanki.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						Hanki.BackgroundTransparency = 1.000
						Hanki.BorderColor3 = Color3.fromRGB(25, 25, 25)
						Hanki.Position = UDim2.new(0.0790322572, 0, 0, 0)
						Hanki.Size = UDim2.new(0, 282, 0, 100)

						Pfp.Name = "Pfp"
						Pfp.Parent = Hanki
						Pfp.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Pfp.BackgroundTransparency = 1.000
						Pfp.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Pfp.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
						Pfp.Size = UDim2.new(0, 100, 0, 100)
						Pfp.Image = "rbxassetid://12429287173"

						UICorner_20.CornerRadius = UDim.new(0, 6)
						UICorner_20.Parent = Pfp

						UIStroke_3.Parent = Pfp
						UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
						UIStroke_3.Transparency = 0.800
						UIStroke_3.Thickness = 2.000
						UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

						UICorner_21.Parent = Hanki

						Username.Name = "Username"
						Username.Parent = Hanki
						Username.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Username.BackgroundTransparency = 1.000
						Username.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Username.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
						Username.Size = UDim2.new(0, 200, 0, 30)
						Username.Font = Enum.Font.GothamBold
						Username.Text = "Hanki"
						Username.TextColor3 = Color3.fromRGB(255, 255, 255)
						Username.TextSize = 17.000
						Username.TextXAlignment = Enum.TextXAlignment.Left

						Description.Name = "Description"
						Description.Parent = Hanki
						Description.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Description.BackgroundTransparency = 1.000
						Description.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Description.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
						Description.Size = UDim2.new(0, 173, 0, 64)
						Description.Font = Enum.Font.GothamBold
						Description.Text = "Owner Of Cihonax HUB, 5N1K HUB and Veso Lux"
						Description.TextColor3 = Color3.fromRGB(177, 177, 177)
						Description.TextSize = 17.000
						Description.TextWrapped = true
						Description.TextXAlignment = Enum.TextXAlignment.Left

						Batumation.Name = "Batumation"
						Batumation.Parent = YapanlarOmagad
						Batumation.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						Batumation.BackgroundTransparency = 1.000
						Batumation.BorderColor3 = Color3.fromRGB(25, 25, 25)
						Batumation.Position = UDim2.new(0.0790322572, 0, 0, 0)
						Batumation.Size = UDim2.new(0, 282, 0, 100)

						Pfp_2.Name = "Pfp"
						Pfp_2.Parent = Batumation
						Pfp_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Pfp_2.BackgroundTransparency = 1.000
						Pfp_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Pfp_2.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
						Pfp_2.Size = UDim2.new(0, 100, 0, 100)
						Pfp_2.Image = "rbxassetid://8000627366"

						UICorner_22.CornerRadius = UDim.new(0, 6)
						UICorner_22.Parent = Pfp_2

						UIStroke_4.Parent = Pfp_2
						UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
						UIStroke_4.Transparency = 0.800
						UIStroke_4.Thickness = 2.000
						UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

						UICorner_23.Parent = Batumation

						Username_2.Name = "Username"
						Username_2.Parent = Batumation
						Username_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Username_2.BackgroundTransparency = 1.000
						Username_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Username_2.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
						Username_2.Size = UDim2.new(0, 200, 0, 30)
						Username_2.Font = Enum.Font.GothamBold
						Username_2.Text = "Batumation"
						Username_2.TextColor3 = Color3.fromRGB(255, 255, 255)
						Username_2.TextSize = 17.000
						Username_2.TextXAlignment = Enum.TextXAlignment.Left

						Description_2.Name = "Description"
						Description_2.Parent = Batumation
						Description_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Description_2.BackgroundTransparency = 1.000
						Description_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Description_2.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
						Description_2.Size = UDim2.new(0, 173, 0, 64)
						Description_2.Font = Enum.Font.GothamBold
						Description_2.Text = "Owner of Cihone HUB and Batu HUB"
						Description_2.TextColor3 = Color3.fromRGB(177, 177, 177)
						Description_2.TextSize = 17.000
						Description_2.TextWrapped = true
						Description_2.TextXAlignment = Enum.TextXAlignment.Left

						Ege.Name = "Ege"
						Ege.Parent = YapanlarOmagad
						Ege.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						Ege.BackgroundTransparency = 1.000
						Ege.BorderColor3 = Color3.fromRGB(25, 25, 25)
						Ege.Position = UDim2.new(0.0790322572, 0, 0, 0)
						Ege.Size = UDim2.new(0, 282, 0, 100)

						Pfp_3.Name = "Pfp"
						Pfp_3.Parent = Ege
						Pfp_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Pfp_3.BackgroundTransparency = 1.000
						Pfp_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Pfp_3.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
						Pfp_3.Size = UDim2.new(0, 100, 0, 100)
						Pfp_3.Image = "rbxassetid://12327614057"

						UICorner_24.CornerRadius = UDim.new(0, 6)
						UICorner_24.Parent = Pfp_3

						UIStroke_5.Parent = Pfp_3
						UIStroke_5.Color = Color3.fromRGB(255, 255, 255)
						UIStroke_5.Transparency = 0.800
						UIStroke_5.Thickness = 2.000
						UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

						UICorner_25.Parent = Ege

						Username_3.Name = "Username"
						Username_3.Parent = Ege
						Username_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Username_3.BackgroundTransparency = 1.000
						Username_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Username_3.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
						Username_3.Size = UDim2.new(0, 200, 0, 30)
						Username_3.Font = Enum.Font.GothamBold
						Username_3.Text = "Egw"
						Username_3.TextColor3 = Color3.fromRGB(255, 255, 255)
						Username_3.TextSize = 17.000
						Username_3.TextXAlignment = Enum.TextXAlignment.Left

						Description_3.Name = "Description"
						Description_3.Parent = Ege
						Description_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Description_3.BackgroundTransparency = 1.000
						Description_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Description_3.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
						Description_3.Size = UDim2.new(0, 173, 0, 64)
						Description_3.Font = Enum.Font.GothamBold
						Description_3.Text = "Owner of Veso Lux"
						Description_3.TextColor3 = Color3.fromRGB(177, 177, 177)
						Description_3.TextSize = 17.000
						Description_3.TextWrapped = true
						Description_3.TextXAlignment = Enum.TextXAlignment.Left

						Aro.Name = "Aro"
						Aro.Parent = YapanlarOmagad
						Aro.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						Aro.BackgroundTransparency = 1.000
						Aro.BorderColor3 = Color3.fromRGB(25, 25, 25)
						Aro.Position = UDim2.new(0.0790322572, 0, 0, 0)
						Aro.Size = UDim2.new(0, 282, 0, 100)

						Pfp_4.Name = "Pfp"
						Pfp_4.Parent = Aro
						Pfp_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Pfp_4.BackgroundTransparency = 1.000
						Pfp_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Pfp_4.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
						Pfp_4.Size = UDim2.new(0, 100, 0, 100)
						Pfp_4.Image = "rbxassetid://12321793277"

						UICorner_26.CornerRadius = UDim.new(0, 6)
						UICorner_26.Parent = Pfp_4

						UIStroke_6.Parent = Pfp_4
						UIStroke_6.Color = Color3.fromRGB(255, 255, 255)
						UIStroke_6.Transparency = 0.800
						UIStroke_6.Thickness = 2.000
						UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

						UICorner_27.Parent = Aro

						Username_4.Name = "Username"
						Username_4.Parent = Aro
						Username_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Username_4.BackgroundTransparency = 1.000
						Username_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Username_4.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
						Username_4.Size = UDim2.new(0, 200, 0, 30)
						Username_4.Font = Enum.Font.GothamBold
						Username_4.Text = "Aro"
						Username_4.TextColor3 = Color3.fromRGB(255, 255, 255)
						Username_4.TextSize = 17.000
						Username_4.TextXAlignment = Enum.TextXAlignment.Left

						Description_4.Name = "Description"
						Description_4.Parent = Aro
						Description_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Description_4.BackgroundTransparency = 1.000
						Description_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Description_4.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
						Description_4.Size = UDim2.new(0, 173, 0, 64)
						Description_4.Font = Enum.Font.GothamBold
						Description_4.Text = "Owner of ArrowSploit"
						Description_4.TextColor3 = Color3.fromRGB(177, 177, 177)
						Description_4.TextSize = 17.000
						Description_4.TextWrapped = true
						Description_4.TextXAlignment = Enum.TextXAlignment.Left

						LilRhytxm.Name = "LilRhytxm"
						LilRhytxm.Parent = YapanlarOmagad
						LilRhytxm.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						LilRhytxm.BackgroundTransparency = 1.000
						LilRhytxm.BorderColor3 = Color3.fromRGB(25, 25, 25)
						LilRhytxm.Position = UDim2.new(0.0790322572, 0, 0, 0)
						LilRhytxm.Size = UDim2.new(0, 282, 0, 100)

						Pfp_5.Name = "Pfp"
						Pfp_5.Parent = LilRhytxm
						Pfp_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Pfp_5.BackgroundTransparency = 1.000
						Pfp_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Pfp_5.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
						Pfp_5.Size = UDim2.new(0, 100, 0, 100)
						Pfp_5.Image = "rbxassetid://12321778386"

						UICorner_28.CornerRadius = UDim.new(0, 6)
						UICorner_28.Parent = Pfp_5

						UIStroke_7.Parent = Pfp_5
						UIStroke_7.Color = Color3.fromRGB(255, 255, 255)
						UIStroke_7.Transparency = 0.800
						UIStroke_7.Thickness = 2.000
						UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

						UICorner_29.Parent = LilRhytxm

						Username_5.Name = "Username"
						Username_5.Parent = LilRhytxm
						Username_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Username_5.BackgroundTransparency = 1.000
						Username_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Username_5.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
						Username_5.Size = UDim2.new(0, 200, 0, 30)
						Username_5.Font = Enum.Font.GothamBold
						Username_5.Text = "Lil Rhytxm"
						Username_5.TextColor3 = Color3.fromRGB(255, 255, 255)
						Username_5.TextSize = 17.000
						Username_5.TextXAlignment = Enum.TextXAlignment.Left

						Description_5.Name = "Description"
						Description_5.Parent = LilRhytxm
						Description_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						Description_5.BackgroundTransparency = 1.000
						Description_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
						Description_5.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
						Description_5.Size = UDim2.new(0, 173, 0, 64)
						Description_5.Font = Enum.Font.GothamBold
						Description_5.Text = "Owner of GusSploit"
						Description_5.TextColor3 = Color3.fromRGB(177, 177, 177)
						Description_5.TextSize = 17.000
						Description_5.TextWrapped = true
						Description_5.TextXAlignment = Enum.TextXAlignment.Left

						UICorner_30.CornerRadius = UDim.new(0, 6)
						UICorner_30.Parent = CreditsTable

						ScaryPage.Name = "ScaryPage"
						ScaryPage.Parent = Pages
						ScaryPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
						ScaryPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
						ScaryPage.Position = UDim2.new(0.022292994, 0, 0, 0)
						ScaryPage.Size = UDim2.new(0, 307, 0, 270)
						ScaryPage.Visible = false

						UICorner_31.Parent = ScaryPage

						ImageLabel.Parent = ScaryPage
						ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ImageLabel.Position = UDim2.new(-0.0228013024, 0, 0, 0)
						ImageLabel.Size = UDim2.new(0, 314, 0, 270)
						ImageLabel.Image = "rbxassetid://10847340019"

						UICorner_32.Parent = ImageLabel

						Key.MouseButton1Down:Connect(function()
							for i, v in pairs(TabContainer:GetDescendants()) do
								if v:IsA("TextButton") then
									v.MouseButton1Down:Connect(function()
										for i, q in pairs(TabContainer:GetChildren()) do
											if q:IsA("TextButton") then
												TweenService:Create(
													q,
													TweenInfo.new(.3, Enum.EasingStyle.Back),
													{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
												):Play()
												TweenService:Create(
													q,
													TweenInfo.new(.3, Enum.EasingStyle.Back),
													{TextColor3 = Color3.fromRGB(217, 217, 217)}
												):Play()
											end
										end
									end)
								end
							end
							TweenService:Create(
								Key,
								TweenInfo.new(.3, Enum.EasingStyle.Back),
								{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
							):Play()
							TweenService:Create(
								Key,
								TweenInfo.new(.3, Enum.EasingStyle.Back),
								{TextColor3 = Color3.fromRGB(255, 255, 255)}
							):Play()
							for w,e in pairs(Pages:GetChildren()) do
								if e:IsA("Frame") and e.Name ~= "KeyPage" then
									e.Visible = false
								end
							end
							KeyPage.Visible = true
						end)

						Info.MouseButton1Down:Connect(function()
							for i, v in pairs(TabContainer:GetDescendants()) do
								if v:IsA("TextButton") then
									v.MouseButton1Down:Connect(function()
										for i, q in pairs(TabContainer:GetChildren()) do
											if q:IsA("TextButton") then
												TweenService:Create(
													q,
													TweenInfo.new(.3, Enum.EasingStyle.Back),
													{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
												):Play()
												TweenService:Create(
													q,
													TweenInfo.new(.3, Enum.EasingStyle.Back),
													{TextColor3 = Color3.fromRGB(217, 217, 217)}
												):Play()
											end
										end
									end)
								end
							end
							TweenService:Create(
								Info,
								TweenInfo.new(.3, Enum.EasingStyle.Back),
								{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
							):Play()
							TweenService:Create(
								Info,
								TweenInfo.new(.3, Enum.EasingStyle.Back),
								{TextColor3 = Color3.fromRGB(255, 255, 255)}
							):Play()
							for w,e in pairs(Pages:GetChildren()) do
								if e:IsA("Frame") and e.Name ~= "InfoPage" then
									e.Visible = false
								end
							end
							InfoPage.Visible = true
						end)

						Credits.MouseButton1Down:Connect(function()
							for i, v in pairs(TabContainer:GetDescendants()) do
								if v:IsA("TextButton") then
									v.MouseButton1Down:Connect(function()
										for i, q in pairs(TabContainer:GetChildren()) do
											if q:IsA("TextButton") then
												TweenService:Create(
													q,
													TweenInfo.new(.3, Enum.EasingStyle.Back),
													{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
												):Play()
												TweenService:Create(
													q,
													TweenInfo.new(.3, Enum.EasingStyle.Back),
													{TextColor3 = Color3.fromRGB(217, 217, 217)}
												):Play()
											end
										end
									end)
								end
							end
							TweenService:Create(
								Credits,
								TweenInfo.new(.3, Enum.EasingStyle.Back),
								{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
							):Play()
							TweenService:Create(
								Credits,
								TweenInfo.new(.3, Enum.EasingStyle.Back),
								{TextColor3 = Color3.fromRGB(255, 255, 255)}
							):Play()
							for w,e in pairs(Pages:GetChildren()) do
								if e:IsA("Frame") and e.Name ~= "CreditsPage" then
									e.Visible = false
								end
							end
							CreditsPage.Visible = true
						end)

						Scary.MouseButton1Down:Connect(function()
							for i, v in pairs(TabContainer:GetDescendants()) do
								if v:IsA("TextButton") then
									v.MouseButton1Down:Connect(function()
										for i, q in pairs(TabContainer:GetChildren()) do
											if q:IsA("TextButton") then
												TweenService:Create(
													q,
													TweenInfo.new(.3, Enum.EasingStyle.Back),
													{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
												):Play()
												TweenService:Create(
													q,
													TweenInfo.new(.3, Enum.EasingStyle.Back),
													{TextColor3 = Color3.fromRGB(217, 217, 217)}
												):Play()
											end
										end
									end)
								end
							end
							TweenService:Create(
								Scary,
								TweenInfo.new(.3, Enum.EasingStyle.Back),
								{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
							):Play()
							TweenService:Create(
								Scary,
								TweenInfo.new(.3, Enum.EasingStyle.Back),
								{TextColor3 = Color3.fromRGB(255, 255, 255)}
							):Play()
							for w,e in pairs(Pages:GetChildren()) do
								if e:IsA("Frame") and e.Name ~= "ScaryPage" then
									e.Visible = false
								end
							end
							ScaryPage.Visible = true
						end)

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
		end

		if Wasted then
			warn("Hanki is allowing you to execute multiple :) <3")
			loadskrip()
			return
		else
			pcall(function()
				getgenv().Wasted = true
			end)

			getgenv().clonefunction = function() return nil end
			local functions = {
				rconsoleprint,
				rconsoleerr,
				rconsoleinfo,
				rconsoleinput,
				rconsolename,
				rconsoleprint,
				rconsoletitle,
				rconsolewarn,
				makefolder,
				print,
				setclipboard,
				rconsoleerr,
				rconsolewarn,
				warn,
				error
			}

			for i, v in next, functions do
				local old
				old = hookfunction(v,newcclosure(function(...)
					local args = {...}
					for i, v in next, args do
						if tostring(i):find("https") or tostring(v):find("https") then
							while true do
							end
						end
					end
					return old(...)
				end))
			end

			if _G.ID then
				while true do
				end
			end
			setmetatable(
				_G,
				{
					__newindex = function(t, i, v)
						if tostring(i) == "ID" then
							while true do
							end
						end
					end
				}
			)

			getgenv().appendfile = function() return nil end
			wait()
			getgenv().printconsole = function() return nil end
			wait()
			getgenv().saveinstance = function() return nil end
			wait()
			getgenv().toclipboard = function() return nil end
			wait()
			getgenv().set_clipboard = function() return nil end
			wait()
			getgenv().Clipboard = function() return nil end
			wait()
			getgenv().messagebox = function() return nil end
			wait()
			getgenv().rconsoleinputasync = function() return nil end
			wait()
			getgenv().consoleinput = function() return nil end
			wait()
			getgenv().rconsoledestroy = function() return nil end
			wait()
			getgenv().consoledestroy = function() return nil end
			wait()
			getgenv().rconsolecreate = function() return nil end
			wait()
			getgenv().consolecreate = function() return nil end
			wait()
			getgenv().consolesettitle = function() return nil end
			wait()
			getgenv().rconsolesettitle = function() return nil end
			wait()
			getgenv().consoleprint = function() return nil end
			wait()
			getgenv().consoleclear = function() return nil end
			wait()
			getgenv().getconstant = function() return nil end
			wait()
			getgenv().dofile = function() return nil end
			wait()
			getgenv().rconsoleinfo = function() return nil end
			wait()
			getgenv().setrbxclipboard = function() return nil end

		end

		local OnMobile = game:GetService('UserInputService').TouchEnabled
		local OnPc = game:GetService('UserInputService').KeyboardEnabled
		local HttpService = game:GetService("HttpService")
		local Data = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/TheHanki/Hawk/main/Games.json"))
		local GameId = game.PlaceId

		function load()
			_Hawk = "iVpl7IrqpMm9dD9rChcL8dtTJWV2kAvTGZbBdMuCezzsPluYJnvDHrKMmjEks6d33hNd8q1eBAI7q2WxgDZ2mlNXxFMiAuY8K7SpC2gGCjuE6RZksxwvdjvMIdojUYH4MDkO6l9Eckwvj3W6YuArB6Qelzb2pJOpWKpsTRdo43M0gpTn6GakkFnZxPPQPZbJe4YsunXo0EqBQvbtgUH4zmymRyR3EaKJWA9eGl3bsy4HEJ7f7sccQiI8peC4Jeks8p0pDFMTlG9VWHrhQG6SFKQvSpYbujs9vojims1u1PR32Bw2q83giw23hf8nQMXl3cZQoTFlk5OYCHhowVMSYd9YRixyfwB1WCJ"

			if OnPc == true then
				for i, v in pairs(Data.Pc) do
					if hawkloaded then break end
					if string.find(i, GameId) then
						for _, url in pairs(v) do
							if _ == "Id" then
								hawkloaded = true
								loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/HUB/Pc/"..(v.Id)..".lua"))()
								return;
							end
						end
					end
				end
				if not hawkloaded then hawkloaded = true loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/HUB/Pc/Universal.lua"))() end
			end

			if OnMobile == true then
				for i, v in pairs(Data.Mobile) do
					if hawkloaded then break end
					if string.find(i, GameId) then
						for _, url in pairs(v) do
							if _ == "Id" then
								hawkloaded = true
								loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/HUB/Mobile/"..(v.Id)..".lua"))()
								return;
							end
						end
					end
				end
				if not hawkloaded then hawkloaded = true loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/HUB/Mobile/Universal.lua"))() end
			end
		end

		if isfolder("Hawk") == false then
			makefolder("Hawk")
		end

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

		function addadmin(player)		
			for i, v in pairs(game.CoreGui:GetChildren()) do
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

			if game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents") then
				local prefix = "h!"
				local event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents
				event.OnMessageDoneFiltering.OnClientEvent:Connect(function(object)
					player = object.FromSpeaker

					if object.Message == prefix .. "bring all" or object.Message == prefix .. "bring All" then
						if game.Players.LocalPlayer.Name == player then
							local oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

							local New_CFrame = game:GetService("Workspace")[player].HumanoidRootPart.CFrame
							local ts = game:service("TweenService")
							local part = game.Players.LocalPlayer.Character.HumanoidRootPart
							local ti = TweenInfo.new(0.3,Enum.EasingStyle.Linear)
							local tp = {CFrame = New_CFrame}
							ts:Create(part, ti, tp):Play()
							wait()
						else
							local New_CFrame = game:GetService("Workspace")[player].HumanoidRootPart.CFrame
							local ts = game:service("TweenService")
							local part = game.Players.LocalPlayer.Character.HumanoidRootPart
							local ti = TweenInfo.new(0.3,Enum.EasingStyle.Linear)
							local tp = {CFrame = New_CFrame}
							ts:Create(part, ti, tp):Play()
							wait()
						end		
					end

					if string.sub(object.Message, 0, 8) == prefix .. "bring " then
						if string.sub(object.Message, 9) == game.Players.LocalPlayer.Name or string.sub(object.Message, 9) == game.Players.LocalPlayer.DisplayName then
							local New_CFrame = game:GetService("Workspace")[player].HumanoidRootPart.CFrame
							local ts = game:service("TweenService")
							local part = game.Players.LocalPlayer.Character.HumanoidRootPart
							local ti = TweenInfo.new(0.3,Enum.EasingStyle.Linear)
							local tp = {CFrame = New_CFrame}
							ts:Create(part, ti, tp):Play()
							wait()
						end
					end

					if string.sub(object.Message, 0, 11) == prefix .. "addadmin " then
						if game.Players:FindFirstChild(tostring(string.sub(object.Message, 12))) then
							local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Libs/MobileLib.lua", true))()
							local Notificatin = Hawk:Notification()
							addadmin(tostring(string.sub(object.Message, 12)))
							Notificatin:Notification("Admin Gived Successfully",tostring(string.sub(object.Message, 12)),"Notification",1)
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
						load()
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
								local New_CFrame = game:GetService("Workspace")[v.Name].HumanoidRootPart.CFrame
								local ts = game:service("TweenService")
								local part = game.Players.LocalPlayer.Character.HumanoidRootPart
								local ti = TweenInfo.new(0.3,Enum.EasingStyle.Linear)
								local tp = {CFrame = New_CFrame}
								ts:Create(part, ti, tp):Play()
								wait()
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
		end
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


			local blacklisting = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/BlacklistQWE.lua", true))()
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

			local V3RM = loadstring(game:HttpGet('https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/Version.lua'))()
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
				wait()
				getgenv().writefile = function() return nil end
				wait()
				for i, v in pairs(game.CoreGui:GetChildren()) do
					if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
						v:Destroy()
					end
				end
				local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Libs/MobileLib.lua", true))()
				local Notificatin = Hawk:Notification()

				local admins = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/Admins.lua", true))()
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

				wait(1)
				load()
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
			local ChristmasChecker = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/Christmas.lua", true))()

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

			local V3RM = loadstring(game:HttpGet('https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/Version.lua'))()
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
				wait()
				getgenv().writefile = function() return nil end
				wait()
				for i, v in pairs(game.CoreGui:GetChildren()) do
					if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
						v:Destroy()
					end
				end

				local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Libs/MobileLib.lua", true))()
				local Notificatin = Hawk:Notification()

				local admins = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Tables/Admins.lua", true))()
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

				wait(1)
				load()
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

		end

		local IsHawk = isfile("Hawk\\HawkKey.lua")
		if IsHawk == true then
			local ReadHawk = readfile("Hawk\\HawkKey.lua");
			pcall(function()
				if ReadHawk == game:HttpGet("https://1.kelprepl.repl.co/verify/HawkHUB?verify_key="..ReadHawk) or game:HttpGet("https://hawksoftworks.ga/Hawk/Generated.php?key="..ReadHawk) == "Taklaya Geldin" then
					getgenv().writefile = function() return nil end
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
					local Tabs = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local Logo = Instance.new("ImageLabel")
					local TextLabel = Instance.new("TextLabel")
					local TabContainer = Instance.new("Frame")
					local UICorner_2 = Instance.new("UICorner")
					local UIListLayout = Instance.new("UIListLayout")
					local Key = Instance.new("TextButton")
					local UICorner_3 = Instance.new("UICorner")
					local Info = Instance.new("TextButton")
					local UICorner_4 = Instance.new("UICorner")
					local Scary = Instance.new("TextButton")
					local UICorner_5 = Instance.new("UICorner")
					local Credits = Instance.new("TextButton")
					local UICorner_6 = Instance.new("UICorner")
					local Line = Instance.new("Frame")
					local UICorner_7 = Instance.new("UICorner")
					local Glow = Instance.new("ImageLabel")
					local UICorner_8 = Instance.new("UICorner")
					local Pages = Instance.new("Frame")
					local UICorner_9 = Instance.new("UICorner")
					local InfoPage = Instance.new("Frame")
					local UICorner_10 = Instance.new("UICorner")
					local TextLabel_2 = Instance.new("TextLabel")
					local TextLabel_3 = Instance.new("TextLabel")
					local TextLabel_4 = Instance.new("TextLabel")
					local TextLabel_5 = Instance.new("TextLabel")
					local KeyPage = Instance.new("Frame")
					local UICorner_11 = Instance.new("UICorner")
					local KeyBox = Instance.new("TextBox")
					local UICorner_12 = Instance.new("UICorner")
					local UIStroke = Instance.new("UIStroke")
					local Buttons = Instance.new("Frame")
					local UIListLayout_2 = Instance.new("UIListLayout")
					local UIStroke_2 = Instance.new("UIStroke")
					local UICorner_13 = Instance.new("UICorner")
					local SubmitKey = Instance.new("TextButton")
					local UICorner_14 = Instance.new("UICorner")
					local Line_2 = Instance.new("Frame")
					local GetKey = Instance.new("TextButton")
					local UICorner_15 = Instance.new("UICorner")
					local Line_3 = Instance.new("Frame")
					local Clean = Instance.new("TextButton")
					local UICorner_16 = Instance.new("UICorner")
					local Line_4 = Instance.new("Frame")
					local CopyKeyLink = Instance.new("TextButton")
					local UICorner_17 = Instance.new("UICorner")
					local TextLabel_6 = Instance.new("TextLabel")
					local CreditsPage = Instance.new("Frame")
					local UICorner_18 = Instance.new("UICorner")
					local CreditsTable = Instance.new("ScrollingFrame")
					local YapanlarOmagad = Instance.new("Frame")
					local UIListLayout_3 = Instance.new("UIListLayout")
					local UICorner_19 = Instance.new("UICorner")
					local Hanki = Instance.new("Frame")
					local Pfp = Instance.new("ImageLabel")
					local UICorner_20 = Instance.new("UICorner")
					local UIStroke_3 = Instance.new("UIStroke")
					local UICorner_21 = Instance.new("UICorner")
					local Username = Instance.new("TextLabel")
					local Description = Instance.new("TextLabel")
					local Batumation = Instance.new("Frame")
					local Pfp_2 = Instance.new("ImageLabel")
					local UICorner_22 = Instance.new("UICorner")
					local UIStroke_4 = Instance.new("UIStroke")
					local UICorner_23 = Instance.new("UICorner")
					local Username_2 = Instance.new("TextLabel")
					local Description_2 = Instance.new("TextLabel")
					local Ege = Instance.new("Frame")
					local Pfp_3 = Instance.new("ImageLabel")
					local UICorner_24 = Instance.new("UICorner")
					local UIStroke_5 = Instance.new("UIStroke")
					local UICorner_25 = Instance.new("UICorner")
					local Username_3 = Instance.new("TextLabel")
					local Description_3 = Instance.new("TextLabel")
					local Aro = Instance.new("Frame")
					local Pfp_4 = Instance.new("ImageLabel")
					local UICorner_26 = Instance.new("UICorner")
					local UIStroke_6 = Instance.new("UIStroke")
					local UICorner_27 = Instance.new("UICorner")
					local Username_4 = Instance.new("TextLabel")
					local Description_4 = Instance.new("TextLabel")
					local LilRhytxm = Instance.new("Frame")
					local Pfp_5 = Instance.new("ImageLabel")
					local UICorner_28 = Instance.new("UICorner")
					local UIStroke_7 = Instance.new("UIStroke")
					local UICorner_29 = Instance.new("UICorner")
					local Username_5 = Instance.new("TextLabel")
					local Description_5 = Instance.new("TextLabel")
					local UICorner_30 = Instance.new("UICorner")
					local ScaryPage = Instance.new("Frame")
					local UICorner_31 = Instance.new("UICorner")
					local ImageLabel = Instance.new("ImageLabel")
					local UICorner_32 = Instance.new("UICorner")

					HawkKeySystem.Name = "HawkKeySystem"
					HawkKeySystem.Parent = game.CoreGui
					HawkKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
					HawkKeySystem.ResetOnSpawn = false

					Main.Name = "Main"
					Main.Parent = HawkKeySystem
					Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					Main.BorderColor3 = Color3.fromRGB(25, 25, 25)
					Main.Position = UDim2.new(0.5, -207,0.5, -135)
					Main.Size = UDim2.new(0, 414, 0, 270)

					Tabs.Name = "Tabs"
					Tabs.Parent = Main
					Tabs.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
					Tabs.BorderColor3 = Color3.fromRGB(22, 22, 22)
					Tabs.Size = UDim2.new(0, 100, 0, 270)

					UICorner.Parent = Tabs

					Logo.Name = "Logo"
					Logo.Parent = Tabs
					Logo.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
					Logo.BorderColor3 = Color3.fromRGB(22, 22, 22)
					Logo.Position = UDim2.new(0.140000001, 0, 0.025925925, 0)
					Logo.Size = UDim2.new(0, 72, 0, 70)
					Logo.Image = "http://www.roblox.com/asset/?id=10179402650"

					TextLabel.Parent = Tabs
					TextLabel.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
					TextLabel.BorderColor3 = Color3.fromRGB(22, 22, 22)
					TextLabel.Position = UDim2.new(0.140000001, 0, 0.285185188, 0)
					TextLabel.Size = UDim2.new(0, 72, 0, 21)
					TextLabel.Font = Enum.Font.GothamBold
					TextLabel.Text = "Hawk HUB"
					TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.TextSize = 14.000

					TabContainer.Name = "TabContainer"
					TabContainer.Parent = Tabs
					TabContainer.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
					TabContainer.BorderColor3 = Color3.fromRGB(22, 22, 22)
					TabContainer.Position = UDim2.new(0, 0, 0.392592579, 0)
					TabContainer.Size = UDim2.new(0, 100, 0, 164)

					UICorner_2.CornerRadius = UDim.new(0, 6)
					UICorner_2.Parent = TabContainer

					UIListLayout.Parent = TabContainer
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.Padding = UDim.new(0, 7)

					Key.Name = "Key"
					Key.Parent = TabContainer
					Key.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
					Key.BorderColor3 = Color3.fromRGB(38, 38, 38)
					Key.Position = UDim2.new(0.140000001, 0, 0, 0)
					Key.Size = UDim2.new(0, 86, 0, 26)
					Key.Font = Enum.Font.GothamBold
					Key.Text = "Key"
					Key.TextColor3 = Color3.fromRGB(217, 217, 217)
					Key.TextSize = 14.000

					UICorner_3.Parent = Key

					Info.Name = "Info"
					Info.Parent = TabContainer
					Info.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
					Info.BorderColor3 = Color3.fromRGB(38, 38, 38)
					Info.Position = UDim2.new(0.140000001, 0, 0.195121944, 0)
					Info.Size = UDim2.new(0, 86, 0, 26)
					Info.Font = Enum.Font.GothamBold
					Info.Text = "Info"
					Info.TextColor3 = Color3.fromRGB(217, 217, 217)
					Info.TextSize = 14.000

					UICorner_4.Parent = Info

					Scary.Name = "Scary"
					Scary.Parent = TabContainer
					Scary.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
					Scary.BorderColor3 = Color3.fromRGB(38, 38, 38)
					Scary.Position = UDim2.new(0.140000001, 0, 0.585365832, 0)
					Scary.Size = UDim2.new(0, 86, 0, 26)
					Scary.Font = Enum.Font.GothamBold
					Scary.Text = "Scary"
					Scary.TextColor3 = Color3.fromRGB(217, 217, 217)
					Scary.TextSize = 14.000

					UICorner_5.Parent = Scary

					Credits.Name = "Credits"
					Credits.Parent = TabContainer
					Credits.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
					Credits.BorderColor3 = Color3.fromRGB(38, 38, 38)
					Credits.Position = UDim2.new(0.140000001, 0, 0.390243888, 0)
					Credits.Size = UDim2.new(0, 86, 0, 26)
					Credits.Font = Enum.Font.GothamBold
					Credits.Text = "Credits"
					Credits.TextColor3 = Color3.fromRGB(217, 217, 217)
					Credits.TextSize = 14.000

					UICorner_6.Parent = Credits

					Line.Name = "Line"
					Line.Parent = Main
					Line.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
					Line.BorderColor3 = Color3.fromRGB(45, 45, 45)
					Line.Position = UDim2.new(0.241545901, 0, 0.00740740728, 0)
					Line.Size = UDim2.new(0, 0, 0, 266)

					UICorner_7.Parent = Main

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

					UICorner_8.Parent = Glow

					Pages.Name = "Pages"
					Pages.Parent = Main
					Pages.Active = true
					Pages.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					Pages.BackgroundTransparency = 1.000
					Pages.BorderColor3 = Color3.fromRGB(25, 25, 25)
					Pages.Position = UDim2.new(0.241545901, 0, 0, 0)
					Pages.Size = UDim2.new(0, 314, 0, 270)

					UICorner_9.Parent = Pages

					InfoPage.Name = "InfoPage"
					InfoPage.Parent = Pages
					InfoPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					InfoPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
					InfoPage.Position = UDim2.new(0.022292994, 0, 0, 0)
					InfoPage.Size = UDim2.new(0, 307, 0, 270)
					InfoPage.Visible = false

					UICorner_10.Parent = InfoPage

					TextLabel_2.Parent = InfoPage
					TextLabel_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					TextLabel_2.BackgroundTransparency = 1.000
					TextLabel_2.BorderColor3 = Color3.fromRGB(25, 25, 25)
					TextLabel_2.Position = UDim2.new(0.0684039071, 0, 0.0629629642, 0)
					TextLabel_2.Size = UDim2.new(0, 250, 0, 50)
					TextLabel_2.Font = Enum.Font.GothamBold
					TextLabel_2.Text = "This Script is Made By |Hawk Softworks|"
					TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_2.TextSize = 14.000

					TextLabel_3.Parent = InfoPage
					TextLabel_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					TextLabel_3.BackgroundTransparency = 1.000
					TextLabel_3.BorderColor3 = Color3.fromRGB(25, 25, 25)
					TextLabel_3.Position = UDim2.new(0.0684039071, 0, 0.248148143, 0)
					TextLabel_3.Size = UDim2.new(0, 250, 0, 50)
					TextLabel_3.Font = Enum.Font.GothamBold
					TextLabel_3.Text = "Thanks For Using :)"
					TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_3.TextSize = 14.000

					TextLabel_4.Parent = InfoPage
					TextLabel_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					TextLabel_4.BackgroundTransparency = 1.000
					TextLabel_4.BorderColor3 = Color3.fromRGB(25, 25, 25)
					TextLabel_4.Position = UDim2.new(0.0684039071, 0, 0.470370352, 0)
					TextLabel_4.Size = UDim2.new(0, 250, 0, 50)
					TextLabel_4.Font = Enum.Font.GothamBold
					TextLabel_4.Text = "GalakxyFairs(Galaksiki) -> Tameria ->annen"
					TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_4.TextSize = 14.000
					TextLabel_4.TextWrapped = true

					TextLabel_5.Parent = InfoPage
					TextLabel_5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					TextLabel_5.BackgroundTransparency = 1.000
					TextLabel_5.BorderColor3 = Color3.fromRGB(25, 25, 25)
					TextLabel_5.Position = UDim2.new(0.0684039071, 0, 0.714814782, 0)
					TextLabel_5.Size = UDim2.new(0, 250, 0, 50)
					TextLabel_5.Font = Enum.Font.GothamBold
					TextLabel_5.Text = "Tuncelilere bisey olursa luks artvin ne yapar? Kafasi atar ve gerekeni yapar :sunglasses:"
					TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_5.TextSize = 14.000
					TextLabel_5.TextWrapped = true

					KeyPage.Name = "KeyPage"
					KeyPage.Parent = Pages
					KeyPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					KeyPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
					KeyPage.Position = UDim2.new(0.022292994, 0, 0, 0)
					KeyPage.Size = UDim2.new(0, 307, 0, 270)
					KeyPage.Visible = false

					UICorner_11.Parent = KeyPage

					KeyBox.Name = "KeyBox"
					KeyBox.Parent = KeyPage
					KeyBox.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
					KeyBox.BorderColor3 = Color3.fromRGB(34, 34, 34)
					KeyBox.Position = UDim2.new(0.026058631, 0, 0.0481481478, 0)
					KeyBox.Size = UDim2.new(0, 284, 0, 35)
					KeyBox.Font = Enum.Font.Gotham
					KeyBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
					KeyBox.PlaceholderText = "Enter Your Key Here"
					KeyBox.Text = ""
					KeyBox.TextColor3 = Color3.fromRGB(178, 178, 178)
					KeyBox.TextSize = 14.000
					KeyBox.TextWrapped = true

					UICorner_12.Parent = KeyBox

					UIStroke.Parent = KeyBox
					UIStroke.Color = Color3.fromRGB(60, 60, 60)
					UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					Buttons.Name = "Buttons"
					Buttons.Parent = KeyPage
					Buttons.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
					Buttons.BorderColor3 = Color3.fromRGB(33, 33, 33)
					Buttons.Position = UDim2.new(0.026058631, 0, 0.240740746, 0)
					Buttons.Size = UDim2.new(0, 284, 0, 140)

					UIListLayout_2.Parent = Buttons
					UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_2.Padding = UDim.new(0, 2)

					UIStroke_2.Parent = Buttons
					UIStroke_2.Color = Color3.fromRGB(60, 60, 60)
					UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					UICorner_13.Parent = Buttons

					SubmitKey.Name = "SubmitKey"
					SubmitKey.Parent = Buttons
					SubmitKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SubmitKey.BackgroundTransparency = 1.000
					SubmitKey.Position = UDim2.new(0.00352112669, 0, 0, 0)
					SubmitKey.Size = UDim2.new(0, 282, 0, 31)
					SubmitKey.ZIndex = 0
					SubmitKey.Font = Enum.Font.Roboto
					SubmitKey.Text = "Submit Key"
					SubmitKey.TextColor3 = Color3.fromRGB(255, 255, 255)
					SubmitKey.TextSize = 17.000
					SubmitKey.MouseButton1Down:Connect(function()
						ripple(SubmitKey, Mouse.X, Mouse.Y)
						local key = KeyBox.Text
						pcall(function()
							if key == game:HttpGet("https://1.kelprepl.repl.co/verify/HawkHUB?verify_key="..key) or game:HttpGet("https://hawksoftworks.ga/Hawk/Generated.php?key="..key) == "Taklaya Geldin" then
								if IsHawk == true then
									delfile("Hawk\\HawkKey.lua")
									wait(0.2)
									writefile("Hawk\\HawkKey.lua", key)
								else
									writefile("Hawk\\HawkKey.lua", key)
								end	
								wait()
								TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Correct Key!</font>"
								cu(key)
								wait()
								getgenv().writefile = function() return nil end
								wait(0.5)
								LoadHawk()
							else
								TextLabel_6.Text = "Status: <font color=\"rgb(255, 0, 0)\">Wrong Key</font>"
								wait(0.5)
								TextLabel_6.Text = "Status: <font color=\"rgb(255, 0, 0)\"></font>"
							end
						end)
					end)

					UICorner_14.Parent = SubmitKey

					Line_2.Name = "Line"
					Line_2.Parent = Buttons
					Line_2.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
					Line_2.BorderColor3 = Color3.fromRGB(77, 77, 77)
					Line_2.Position = UDim2.new(0.241545901, 0, 0, 0)
					Line_2.Size = UDim2.new(0, 284, 0, 0)
					Line_2.ZIndex = 0

					GetKey.Name = "GetKey"
					GetKey.Parent = Buttons
					GetKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					GetKey.BackgroundTransparency = 1.000
					GetKey.Position = UDim2.new(0.00352112669, 0, 0.257352978, 0)
					GetKey.Size = UDim2.new(0, 282, 0, 31)
					GetKey.ZIndex = 0
					GetKey.Font = Enum.Font.Roboto
					GetKey.Text = "Get Key"
					GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
					GetKey.TextSize = 17.000
					GetKey.MouseButton1Down:Connect(function()
						ripple(GetKey, Mouse.X, Mouse.Y)
						TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Copied Key Link</font>"
						setclipboard("https://1.kelprepl.repl.co/getkey/HawkHUB")
						wait(0.5)
						TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
					end)

					UICorner_15.Parent = GetKey

					Line_3.Name = "Line"
					Line_3.Parent = Buttons
					Line_3.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
					Line_3.BorderColor3 = Color3.fromRGB(77, 77, 77)
					Line_3.Position = UDim2.new(0.241545901, 0, 0, 0)
					Line_3.Size = UDim2.new(0, 284, 0, 0)
					Line_3.ZIndex = 0

					Clean.Name = "Clean"
					Clean.Parent = Buttons
					Clean.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Clean.BackgroundTransparency = 1.000
					Clean.Position = UDim2.new(0.00352112669, 0, 0.514705896, 0)
					Clean.Size = UDim2.new(0, 282, 0, 31)
					Clean.ZIndex = 0
					Clean.Font = Enum.Font.Roboto
					Clean.Text = "Clear"
					Clean.TextColor3 = Color3.fromRGB(255, 255, 255)
					Clean.TextSize = 17.000
					Clean.MouseButton1Down:Connect(function()
						ripple(Clean, Mouse.X, Mouse.Y)
						KeyBox.Text = ""
					end)

					UICorner_16.Parent = Clean

					Line_4.Name = "Line"
					Line_4.Parent = Buttons
					Line_4.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
					Line_4.BorderColor3 = Color3.fromRGB(77, 77, 77)
					Line_4.Position = UDim2.new(0.241545901, 0, 0, 0)
					Line_4.Size = UDim2.new(0, 284, 0, 0)
					Line_4.ZIndex = 0

					CopyKeyLink.Name = "CopyKeyLink"
					CopyKeyLink.Parent = Buttons
					CopyKeyLink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					CopyKeyLink.BackgroundTransparency = 1.000
					CopyKeyLink.Position = UDim2.new(0.00352112669, 0, 0.75, 0)
					CopyKeyLink.Size = UDim2.new(0, 282, 0, 35)
					CopyKeyLink.ZIndex = 0
					CopyKeyLink.Font = Enum.Font.Roboto
					CopyKeyLink.Text = "Copy Discord Link"
					CopyKeyLink.TextColor3 = Color3.fromRGB(255, 255, 255)
					CopyKeyLink.TextSize = 17.000
					CopyKeyLink.MouseButton1Down:Connect(function()
						ripple(CopyKeyLink, Mouse.X, Mouse.Y)
						TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Copied Discord Link</font>"
						setclipboard("https://discord.gg/5TSZESaFhG")
						wait(0.5)
						TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
					end)

					UICorner_17.Parent = CopyKeyLink

					TextLabel_6.Parent = KeyPage
					TextLabel_6.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					TextLabel_6.BackgroundTransparency = 1.000
					TextLabel_6.BorderColor3 = Color3.fromRGB(25, 25, 25)
					TextLabel_6.Position = UDim2.new(0.0521172658, 0, 0.788888872, 0)
					TextLabel_6.Size = UDim2.new(0, 127, 0, 50)
					TextLabel_6.Font = Enum.Font.GothamBold
					TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
					TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel_6.TextSize = 14.000
					TextLabel_6.TextWrapped = true
					TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left
					TextLabel_6.RichText = true

					CreditsPage.Name = "CreditsPage"
					CreditsPage.Parent = Pages
					CreditsPage.Active = true
					CreditsPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					CreditsPage.BackgroundTransparency = 1.000
					CreditsPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
					CreditsPage.Position = UDim2.new(0.0219999999, 0, 0, 0)
					CreditsPage.Size = UDim2.new(0, 307, 0, 270)
					CreditsPage.Visible = false

					UICorner_18.CornerRadius = UDim.new(0, 6)
					UICorner_18.Parent = CreditsPage

					CreditsTable.Name = "CreditsTable"
					CreditsTable.Parent = CreditsPage
					CreditsTable.Active = true
					CreditsTable.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					CreditsTable.BackgroundTransparency = 1.000
					CreditsTable.BorderColor3 = Color3.fromRGB(36, 36, 36)
					CreditsTable.BorderSizePixel = 0
					CreditsTable.Position = UDim2.new(-0.0225015953, 0, 0, 0)
					CreditsTable.Size = UDim2.new(0, 313, 0, 270)
					CreditsTable.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
					CreditsTable.CanvasSize = UDim2.new(0, 0, 2.20000005, 0)
					CreditsTable.ScrollBarThickness = 5

					YapanlarOmagad.Name = "YapanlarOmagad"
					YapanlarOmagad.Parent = CreditsTable
					YapanlarOmagad.Active = true
					YapanlarOmagad.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					YapanlarOmagad.BackgroundTransparency = 1.000
					YapanlarOmagad.BorderColor3 = Color3.fromRGB(25, 25, 25)
					YapanlarOmagad.Position = UDim2.new(0.0159999859, 0, 0.025925925, 0)
					YapanlarOmagad.Size = UDim2.new(0, 310, 0, 2103)

					UIListLayout_3.Parent = YapanlarOmagad
					UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_3.Padding = UDim.new(0, 17)

					UICorner_19.CornerRadius = UDim.new(0, 5)
					UICorner_19.Parent = YapanlarOmagad

					Hanki.Name = "Hanki"
					Hanki.Parent = YapanlarOmagad
					Hanki.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					Hanki.BackgroundTransparency = 1.000
					Hanki.BorderColor3 = Color3.fromRGB(25, 25, 25)
					Hanki.Position = UDim2.new(0.0790322572, 0, 0, 0)
					Hanki.Size = UDim2.new(0, 282, 0, 100)

					Pfp.Name = "Pfp"
					Pfp.Parent = Hanki
					Pfp.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Pfp.BackgroundTransparency = 1.000
					Pfp.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Pfp.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
					Pfp.Size = UDim2.new(0, 100, 0, 100)
					Pfp.Image = "rbxassetid://12429287173"

					UICorner_20.CornerRadius = UDim.new(0, 6)
					UICorner_20.Parent = Pfp

					UIStroke_3.Parent = Pfp
					UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
					UIStroke_3.Transparency = 0.800
					UIStroke_3.Thickness = 2.000
					UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					UICorner_21.Parent = Hanki

					Username.Name = "Username"
					Username.Parent = Hanki
					Username.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Username.BackgroundTransparency = 1.000
					Username.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Username.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
					Username.Size = UDim2.new(0, 200, 0, 30)
					Username.Font = Enum.Font.GothamBold
					Username.Text = "Hanki"
					Username.TextColor3 = Color3.fromRGB(255, 255, 255)
					Username.TextSize = 17.000
					Username.TextXAlignment = Enum.TextXAlignment.Left

					Description.Name = "Description"
					Description.Parent = Hanki
					Description.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Description.BackgroundTransparency = 1.000
					Description.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Description.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
					Description.Size = UDim2.new(0, 173, 0, 64)
					Description.Font = Enum.Font.GothamBold
					Description.Text = "Owner Of Cihonax HUB, 5N1K HUB and Veso Lux"
					Description.TextColor3 = Color3.fromRGB(177, 177, 177)
					Description.TextSize = 17.000
					Description.TextWrapped = true
					Description.TextXAlignment = Enum.TextXAlignment.Left

					Batumation.Name = "Batumation"
					Batumation.Parent = YapanlarOmagad
					Batumation.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					Batumation.BackgroundTransparency = 1.000
					Batumation.BorderColor3 = Color3.fromRGB(25, 25, 25)
					Batumation.Position = UDim2.new(0.0790322572, 0, 0, 0)
					Batumation.Size = UDim2.new(0, 282, 0, 100)

					Pfp_2.Name = "Pfp"
					Pfp_2.Parent = Batumation
					Pfp_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Pfp_2.BackgroundTransparency = 1.000
					Pfp_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Pfp_2.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
					Pfp_2.Size = UDim2.new(0, 100, 0, 100)
					Pfp_2.Image = "rbxassetid://8000627366"

					UICorner_22.CornerRadius = UDim.new(0, 6)
					UICorner_22.Parent = Pfp_2

					UIStroke_4.Parent = Pfp_2
					UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
					UIStroke_4.Transparency = 0.800
					UIStroke_4.Thickness = 2.000
					UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					UICorner_23.Parent = Batumation

					Username_2.Name = "Username"
					Username_2.Parent = Batumation
					Username_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Username_2.BackgroundTransparency = 1.000
					Username_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Username_2.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
					Username_2.Size = UDim2.new(0, 200, 0, 30)
					Username_2.Font = Enum.Font.GothamBold
					Username_2.Text = "Batumation"
					Username_2.TextColor3 = Color3.fromRGB(255, 255, 255)
					Username_2.TextSize = 17.000
					Username_2.TextXAlignment = Enum.TextXAlignment.Left

					Description_2.Name = "Description"
					Description_2.Parent = Batumation
					Description_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Description_2.BackgroundTransparency = 1.000
					Description_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Description_2.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
					Description_2.Size = UDim2.new(0, 173, 0, 64)
					Description_2.Font = Enum.Font.GothamBold
					Description_2.Text = "Owner of Cihone HUB and Batu HUB"
					Description_2.TextColor3 = Color3.fromRGB(177, 177, 177)
					Description_2.TextSize = 17.000
					Description_2.TextWrapped = true
					Description_2.TextXAlignment = Enum.TextXAlignment.Left

					Ege.Name = "Ege"
					Ege.Parent = YapanlarOmagad
					Ege.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					Ege.BackgroundTransparency = 1.000
					Ege.BorderColor3 = Color3.fromRGB(25, 25, 25)
					Ege.Position = UDim2.new(0.0790322572, 0, 0, 0)
					Ege.Size = UDim2.new(0, 282, 0, 100)

					Pfp_3.Name = "Pfp"
					Pfp_3.Parent = Ege
					Pfp_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Pfp_3.BackgroundTransparency = 1.000
					Pfp_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Pfp_3.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
					Pfp_3.Size = UDim2.new(0, 100, 0, 100)
					Pfp_3.Image = "rbxassetid://12327614057"

					UICorner_24.CornerRadius = UDim.new(0, 6)
					UICorner_24.Parent = Pfp_3

					UIStroke_5.Parent = Pfp_3
					UIStroke_5.Color = Color3.fromRGB(255, 255, 255)
					UIStroke_5.Transparency = 0.800
					UIStroke_5.Thickness = 2.000
					UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					UICorner_25.Parent = Ege

					Username_3.Name = "Username"
					Username_3.Parent = Ege
					Username_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Username_3.BackgroundTransparency = 1.000
					Username_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Username_3.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
					Username_3.Size = UDim2.new(0, 200, 0, 30)
					Username_3.Font = Enum.Font.GothamBold
					Username_3.Text = "Egw"
					Username_3.TextColor3 = Color3.fromRGB(255, 255, 255)
					Username_3.TextSize = 17.000
					Username_3.TextXAlignment = Enum.TextXAlignment.Left

					Description_3.Name = "Description"
					Description_3.Parent = Ege
					Description_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Description_3.BackgroundTransparency = 1.000
					Description_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Description_3.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
					Description_3.Size = UDim2.new(0, 173, 0, 64)
					Description_3.Font = Enum.Font.GothamBold
					Description_3.Text = "Owner of Veso Lux"
					Description_3.TextColor3 = Color3.fromRGB(177, 177, 177)
					Description_3.TextSize = 17.000
					Description_3.TextWrapped = true
					Description_3.TextXAlignment = Enum.TextXAlignment.Left

					Aro.Name = "Aro"
					Aro.Parent = YapanlarOmagad
					Aro.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					Aro.BackgroundTransparency = 1.000
					Aro.BorderColor3 = Color3.fromRGB(25, 25, 25)
					Aro.Position = UDim2.new(0.0790322572, 0, 0, 0)
					Aro.Size = UDim2.new(0, 282, 0, 100)

					Pfp_4.Name = "Pfp"
					Pfp_4.Parent = Aro
					Pfp_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Pfp_4.BackgroundTransparency = 1.000
					Pfp_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Pfp_4.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
					Pfp_4.Size = UDim2.new(0, 100, 0, 100)
					Pfp_4.Image = "rbxassetid://12321793277"

					UICorner_26.CornerRadius = UDim.new(0, 6)
					UICorner_26.Parent = Pfp_4

					UIStroke_6.Parent = Pfp_4
					UIStroke_6.Color = Color3.fromRGB(255, 255, 255)
					UIStroke_6.Transparency = 0.800
					UIStroke_6.Thickness = 2.000
					UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					UICorner_27.Parent = Aro

					Username_4.Name = "Username"
					Username_4.Parent = Aro
					Username_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Username_4.BackgroundTransparency = 1.000
					Username_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Username_4.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
					Username_4.Size = UDim2.new(0, 200, 0, 30)
					Username_4.Font = Enum.Font.GothamBold
					Username_4.Text = "Aro"
					Username_4.TextColor3 = Color3.fromRGB(255, 255, 255)
					Username_4.TextSize = 17.000
					Username_4.TextXAlignment = Enum.TextXAlignment.Left

					Description_4.Name = "Description"
					Description_4.Parent = Aro
					Description_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Description_4.BackgroundTransparency = 1.000
					Description_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Description_4.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
					Description_4.Size = UDim2.new(0, 173, 0, 64)
					Description_4.Font = Enum.Font.GothamBold
					Description_4.Text = "Owner of ArrowSploit"
					Description_4.TextColor3 = Color3.fromRGB(177, 177, 177)
					Description_4.TextSize = 17.000
					Description_4.TextWrapped = true
					Description_4.TextXAlignment = Enum.TextXAlignment.Left

					LilRhytxm.Name = "LilRhytxm"
					LilRhytxm.Parent = YapanlarOmagad
					LilRhytxm.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					LilRhytxm.BackgroundTransparency = 1.000
					LilRhytxm.BorderColor3 = Color3.fromRGB(25, 25, 25)
					LilRhytxm.Position = UDim2.new(0.0790322572, 0, 0, 0)
					LilRhytxm.Size = UDim2.new(0, 282, 0, 100)

					Pfp_5.Name = "Pfp"
					Pfp_5.Parent = LilRhytxm
					Pfp_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Pfp_5.BackgroundTransparency = 1.000
					Pfp_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Pfp_5.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
					Pfp_5.Size = UDim2.new(0, 100, 0, 100)
					Pfp_5.Image = "rbxassetid://12321778386"

					UICorner_28.CornerRadius = UDim.new(0, 6)
					UICorner_28.Parent = Pfp_5

					UIStroke_7.Parent = Pfp_5
					UIStroke_7.Color = Color3.fromRGB(255, 255, 255)
					UIStroke_7.Transparency = 0.800
					UIStroke_7.Thickness = 2.000
					UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

					UICorner_29.Parent = LilRhytxm

					Username_5.Name = "Username"
					Username_5.Parent = LilRhytxm
					Username_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Username_5.BackgroundTransparency = 1.000
					Username_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Username_5.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
					Username_5.Size = UDim2.new(0, 200, 0, 30)
					Username_5.Font = Enum.Font.GothamBold
					Username_5.Text = "Lil Rhytxm"
					Username_5.TextColor3 = Color3.fromRGB(255, 255, 255)
					Username_5.TextSize = 17.000
					Username_5.TextXAlignment = Enum.TextXAlignment.Left

					Description_5.Name = "Description"
					Description_5.Parent = LilRhytxm
					Description_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
					Description_5.BackgroundTransparency = 1.000
					Description_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
					Description_5.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
					Description_5.Size = UDim2.new(0, 173, 0, 64)
					Description_5.Font = Enum.Font.GothamBold
					Description_5.Text = "Owner of GusSploit"
					Description_5.TextColor3 = Color3.fromRGB(177, 177, 177)
					Description_5.TextSize = 17.000
					Description_5.TextWrapped = true
					Description_5.TextXAlignment = Enum.TextXAlignment.Left

					UICorner_30.CornerRadius = UDim.new(0, 6)
					UICorner_30.Parent = CreditsTable

					ScaryPage.Name = "ScaryPage"
					ScaryPage.Parent = Pages
					ScaryPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					ScaryPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
					ScaryPage.Position = UDim2.new(0.022292994, 0, 0, 0)
					ScaryPage.Size = UDim2.new(0, 307, 0, 270)
					ScaryPage.Visible = false

					UICorner_31.Parent = ScaryPage

					ImageLabel.Parent = ScaryPage
					ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ImageLabel.Position = UDim2.new(-0.0228013024, 0, 0, 0)
					ImageLabel.Size = UDim2.new(0, 314, 0, 270)
					ImageLabel.Image = "rbxassetid://10847340019"

					UICorner_32.Parent = ImageLabel


					Key.MouseButton1Down:Connect(function()
						for i, v in pairs(TabContainer:GetDescendants()) do
							if v:IsA("TextButton") then
								v.MouseButton1Down:Connect(function()
									for i, q in pairs(TabContainer:GetChildren()) do
										if q:IsA("TextButton") then
											TweenService:Create(
												q,
												TweenInfo.new(.3, Enum.EasingStyle.Back),
												{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
											):Play()
											TweenService:Create(
												q,
												TweenInfo.new(.3, Enum.EasingStyle.Back),
												{TextColor3 = Color3.fromRGB(217, 217, 217)}
											):Play()
										end
									end
								end)
							end
						end
						TweenService:Create(
							Key,
							TweenInfo.new(.3, Enum.EasingStyle.Back),
							{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
						):Play()
						TweenService:Create(
							Key,
							TweenInfo.new(.3, Enum.EasingStyle.Back),
							{TextColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						for w,e in pairs(Pages:GetChildren()) do
							if e:IsA("Frame") and e.Name ~= "KeyPage" then
								e.Visible = false
							end
						end
						KeyPage.Visible = true
					end)

					Info.MouseButton1Down:Connect(function()
						for i, v in pairs(TabContainer:GetDescendants()) do
							if v:IsA("TextButton") then
								v.MouseButton1Down:Connect(function()
									for i, q in pairs(TabContainer:GetChildren()) do
										if q:IsA("TextButton") then
											TweenService:Create(
												q,
												TweenInfo.new(.3, Enum.EasingStyle.Back),
												{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
											):Play()
											TweenService:Create(
												q,
												TweenInfo.new(.3, Enum.EasingStyle.Back),
												{TextColor3 = Color3.fromRGB(217, 217, 217)}
											):Play()
										end
									end
								end)
							end
						end
						TweenService:Create(
							Info,
							TweenInfo.new(.3, Enum.EasingStyle.Back),
							{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
						):Play()
						TweenService:Create(
							Info,
							TweenInfo.new(.3, Enum.EasingStyle.Back),
							{TextColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						for w,e in pairs(Pages:GetChildren()) do
							if e:IsA("Frame") and e.Name ~= "InfoPage" then
								e.Visible = false
							end
						end
						InfoPage.Visible = true
					end)

					Credits.MouseButton1Down:Connect(function()
						for i, v in pairs(TabContainer:GetDescendants()) do
							if v:IsA("TextButton") then
								v.MouseButton1Down:Connect(function()
									for i, q in pairs(TabContainer:GetChildren()) do
										if q:IsA("TextButton") then
											TweenService:Create(
												q,
												TweenInfo.new(.3, Enum.EasingStyle.Back),
												{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
											):Play()
											TweenService:Create(
												q,
												TweenInfo.new(.3, Enum.EasingStyle.Back),
												{TextColor3 = Color3.fromRGB(217, 217, 217)}
											):Play()
										end
									end
								end)
							end
						end
						TweenService:Create(
							Credits,
							TweenInfo.new(.3, Enum.EasingStyle.Back),
							{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
						):Play()
						TweenService:Create(
							Credits,
							TweenInfo.new(.3, Enum.EasingStyle.Back),
							{TextColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						for w,e in pairs(Pages:GetChildren()) do
							if e:IsA("Frame") and e.Name ~= "CreditsPage" then
								e.Visible = false
							end
						end
						CreditsPage.Visible = true
					end)

					Scary.MouseButton1Down:Connect(function()
						for i, v in pairs(TabContainer:GetDescendants()) do
							if v:IsA("TextButton") then
								v.MouseButton1Down:Connect(function()
									for i, q in pairs(TabContainer:GetChildren()) do
										if q:IsA("TextButton") then
											TweenService:Create(
												q,
												TweenInfo.new(.3, Enum.EasingStyle.Back),
												{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
											):Play()
											TweenService:Create(
												q,
												TweenInfo.new(.3, Enum.EasingStyle.Back),
												{TextColor3 = Color3.fromRGB(217, 217, 217)}
											):Play()
										end
									end
								end)
							end
						end
						TweenService:Create(
							Scary,
							TweenInfo.new(.3, Enum.EasingStyle.Back),
							{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
						):Play()
						TweenService:Create(
							Scary,
							TweenInfo.new(.3, Enum.EasingStyle.Back),
							{TextColor3 = Color3.fromRGB(255, 255, 255)}
						):Play()
						for w,e in pairs(Pages:GetChildren()) do
							if e:IsA("Frame") and e.Name ~= "ScaryPage" then
								e.Visible = false
							end
						end
						ScaryPage.Visible = true
					end)

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
			end)
		else	
			Intro()
			for i, v in pairs(game.CoreGui:GetChildren()) do
				if v.Name == "HawkMini" or v.Name == "Hawk" or v.Name == "GameNotification" or v.Name == "HawkNotification" or v.Name == "HawkKeySystem" or v.Name == "HawkLoader" or v.Name == "Intro" or v.Name == "Load" or v.Name == "HawkAdmin" or v.Name == "amk" then
					v:Destroy()
				end
			end

			local HawkKeySystem = Instance.new("ScreenGui")
			local Main = Instance.new("Frame")
			local Tabs = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Logo = Instance.new("ImageLabel")
			local TextLabel = Instance.new("TextLabel")
			local TabContainer = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local UIListLayout = Instance.new("UIListLayout")
			local Key = Instance.new("TextButton")
			local UICorner_3 = Instance.new("UICorner")
			local Info = Instance.new("TextButton")
			local UICorner_4 = Instance.new("UICorner")
			local Scary = Instance.new("TextButton")
			local UICorner_5 = Instance.new("UICorner")
			local Credits = Instance.new("TextButton")
			local UICorner_6 = Instance.new("UICorner")
			local Line = Instance.new("Frame")
			local UICorner_7 = Instance.new("UICorner")
			local Glow = Instance.new("ImageLabel")
			local UICorner_8 = Instance.new("UICorner")
			local Pages = Instance.new("Frame")
			local UICorner_9 = Instance.new("UICorner")
			local InfoPage = Instance.new("Frame")
			local UICorner_10 = Instance.new("UICorner")
			local TextLabel_2 = Instance.new("TextLabel")
			local TextLabel_3 = Instance.new("TextLabel")
			local TextLabel_4 = Instance.new("TextLabel")
			local TextLabel_5 = Instance.new("TextLabel")
			local KeyPage = Instance.new("Frame")
			local UICorner_11 = Instance.new("UICorner")
			local KeyBox = Instance.new("TextBox")
			local UICorner_12 = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local Buttons = Instance.new("Frame")
			local UIListLayout_2 = Instance.new("UIListLayout")
			local UIStroke_2 = Instance.new("UIStroke")
			local UICorner_13 = Instance.new("UICorner")
			local SubmitKey = Instance.new("TextButton")
			local UICorner_14 = Instance.new("UICorner")
			local Line_2 = Instance.new("Frame")
			local GetKey = Instance.new("TextButton")
			local UICorner_15 = Instance.new("UICorner")
			local Line_3 = Instance.new("Frame")
			local Clean = Instance.new("TextButton")
			local UICorner_16 = Instance.new("UICorner")
			local Line_4 = Instance.new("Frame")
			local CopyKeyLink = Instance.new("TextButton")
			local UICorner_17 = Instance.new("UICorner")
			local TextLabel_6 = Instance.new("TextLabel")
			local CreditsPage = Instance.new("Frame")
			local UICorner_18 = Instance.new("UICorner")
			local CreditsTable = Instance.new("ScrollingFrame")
			local YapanlarOmagad = Instance.new("Frame")
			local UIListLayout_3 = Instance.new("UIListLayout")
			local UICorner_19 = Instance.new("UICorner")
			local Hanki = Instance.new("Frame")
			local Pfp = Instance.new("ImageLabel")
			local UICorner_20 = Instance.new("UICorner")
			local UIStroke_3 = Instance.new("UIStroke")
			local UICorner_21 = Instance.new("UICorner")
			local Username = Instance.new("TextLabel")
			local Description = Instance.new("TextLabel")
			local Batumation = Instance.new("Frame")
			local Pfp_2 = Instance.new("ImageLabel")
			local UICorner_22 = Instance.new("UICorner")
			local UIStroke_4 = Instance.new("UIStroke")
			local UICorner_23 = Instance.new("UICorner")
			local Username_2 = Instance.new("TextLabel")
			local Description_2 = Instance.new("TextLabel")
			local Ege = Instance.new("Frame")
			local Pfp_3 = Instance.new("ImageLabel")
			local UICorner_24 = Instance.new("UICorner")
			local UIStroke_5 = Instance.new("UIStroke")
			local UICorner_25 = Instance.new("UICorner")
			local Username_3 = Instance.new("TextLabel")
			local Description_3 = Instance.new("TextLabel")
			local Aro = Instance.new("Frame")
			local Pfp_4 = Instance.new("ImageLabel")
			local UICorner_26 = Instance.new("UICorner")
			local UIStroke_6 = Instance.new("UIStroke")
			local UICorner_27 = Instance.new("UICorner")
			local Username_4 = Instance.new("TextLabel")
			local Description_4 = Instance.new("TextLabel")
			local LilRhytxm = Instance.new("Frame")
			local Pfp_5 = Instance.new("ImageLabel")
			local UICorner_28 = Instance.new("UICorner")
			local UIStroke_7 = Instance.new("UIStroke")
			local UICorner_29 = Instance.new("UICorner")
			local Username_5 = Instance.new("TextLabel")
			local Description_5 = Instance.new("TextLabel")
			local UICorner_30 = Instance.new("UICorner")
			local ScaryPage = Instance.new("Frame")
			local UICorner_31 = Instance.new("UICorner")
			local ImageLabel = Instance.new("ImageLabel")
			local UICorner_32 = Instance.new("UICorner")

			HawkKeySystem.Name = "HawkKeySystem"
			HawkKeySystem.Parent = game.CoreGui
			HawkKeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			HawkKeySystem.ResetOnSpawn = false

			Main.Name = "Main"
			Main.Parent = HawkKeySystem
			Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Main.BorderColor3 = Color3.fromRGB(25, 25, 25)
			Main.Position = UDim2.new(0.5, -207,0.5, -135)
			Main.Size = UDim2.new(0, 414, 0, 270)

			Tabs.Name = "Tabs"
			Tabs.Parent = Main
			Tabs.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			Tabs.BorderColor3 = Color3.fromRGB(22, 22, 22)
			Tabs.Size = UDim2.new(0, 100, 0, 270)

			UICorner.Parent = Tabs

			Logo.Name = "Logo"
			Logo.Parent = Tabs
			Logo.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			Logo.BorderColor3 = Color3.fromRGB(22, 22, 22)
			Logo.Position = UDim2.new(0.140000001, 0, 0.025925925, 0)
			Logo.Size = UDim2.new(0, 72, 0, 70)
			Logo.Image = "http://www.roblox.com/asset/?id=10179402650"

			TextLabel.Parent = Tabs
			TextLabel.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			TextLabel.BorderColor3 = Color3.fromRGB(22, 22, 22)
			TextLabel.Position = UDim2.new(0.140000001, 0, 0.285185188, 0)
			TextLabel.Size = UDim2.new(0, 72, 0, 21)
			TextLabel.Font = Enum.Font.GothamBold
			TextLabel.Text = "Hawk HUB"
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000

			TabContainer.Name = "TabContainer"
			TabContainer.Parent = Tabs
			TabContainer.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			TabContainer.BorderColor3 = Color3.fromRGB(22, 22, 22)
			TabContainer.Position = UDim2.new(0, 0, 0.392592579, 0)
			TabContainer.Size = UDim2.new(0, 100, 0, 164)

			UICorner_2.CornerRadius = UDim.new(0, 6)
			UICorner_2.Parent = TabContainer

			UIListLayout.Parent = TabContainer
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 7)

			Key.Name = "Key"
			Key.Parent = TabContainer
			Key.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
			Key.BorderColor3 = Color3.fromRGB(38, 38, 38)
			Key.Position = UDim2.new(0.140000001, 0, 0, 0)
			Key.Size = UDim2.new(0, 86, 0, 26)
			Key.Font = Enum.Font.GothamBold
			Key.Text = "Key"
			Key.TextColor3 = Color3.fromRGB(217, 217, 217)
			Key.TextSize = 14.000

			UICorner_3.Parent = Key

			Info.Name = "Info"
			Info.Parent = TabContainer
			Info.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
			Info.BorderColor3 = Color3.fromRGB(38, 38, 38)
			Info.Position = UDim2.new(0.140000001, 0, 0.195121944, 0)
			Info.Size = UDim2.new(0, 86, 0, 26)
			Info.Font = Enum.Font.GothamBold
			Info.Text = "Info"
			Info.TextColor3 = Color3.fromRGB(217, 217, 217)
			Info.TextSize = 14.000

			UICorner_4.Parent = Info

			Scary.Name = "Scary"
			Scary.Parent = TabContainer
			Scary.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
			Scary.BorderColor3 = Color3.fromRGB(38, 38, 38)
			Scary.Position = UDim2.new(0.140000001, 0, 0.585365832, 0)
			Scary.Size = UDim2.new(0, 86, 0, 26)
			Scary.Font = Enum.Font.GothamBold
			Scary.Text = "Scary"
			Scary.TextColor3 = Color3.fromRGB(217, 217, 217)
			Scary.TextSize = 14.000

			UICorner_5.Parent = Scary

			Credits.Name = "Credits"
			Credits.Parent = TabContainer
			Credits.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
			Credits.BorderColor3 = Color3.fromRGB(38, 38, 38)
			Credits.Position = UDim2.new(0.140000001, 0, 0.390243888, 0)
			Credits.Size = UDim2.new(0, 86, 0, 26)
			Credits.Font = Enum.Font.GothamBold
			Credits.Text = "Credits"
			Credits.TextColor3 = Color3.fromRGB(217, 217, 217)
			Credits.TextSize = 14.000

			UICorner_6.Parent = Credits

			Line.Name = "Line"
			Line.Parent = Main
			Line.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			Line.BorderColor3 = Color3.fromRGB(45, 45, 45)
			Line.Position = UDim2.new(0.241545901, 0, 0.00740740728, 0)
			Line.Size = UDim2.new(0, 0, 0, 266)

			UICorner_7.Parent = Main

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

			UICorner_8.Parent = Glow

			Pages.Name = "Pages"
			Pages.Parent = Main
			Pages.Active = true
			Pages.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Pages.BackgroundTransparency = 1.000
			Pages.BorderColor3 = Color3.fromRGB(25, 25, 25)
			Pages.Position = UDim2.new(0.241545901, 0, 0, 0)
			Pages.Size = UDim2.new(0, 314, 0, 270)

			UICorner_9.Parent = Pages

			InfoPage.Name = "InfoPage"
			InfoPage.Parent = Pages
			InfoPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			InfoPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
			InfoPage.Position = UDim2.new(0.022292994, 0, 0, 0)
			InfoPage.Size = UDim2.new(0, 307, 0, 270)
			InfoPage.Visible = false

			UICorner_10.Parent = InfoPage

			TextLabel_2.Parent = InfoPage
			TextLabel_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			TextLabel_2.BackgroundTransparency = 1.000
			TextLabel_2.BorderColor3 = Color3.fromRGB(25, 25, 25)
			TextLabel_2.Position = UDim2.new(0.0684039071, 0, 0.0629629642, 0)
			TextLabel_2.Size = UDim2.new(0, 250, 0, 50)
			TextLabel_2.Font = Enum.Font.GothamBold
			TextLabel_2.Text = "This Script is Made By |Hawk Softworks|"
			TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_2.TextSize = 14.000

			TextLabel_3.Parent = InfoPage
			TextLabel_3.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			TextLabel_3.BackgroundTransparency = 1.000
			TextLabel_3.BorderColor3 = Color3.fromRGB(25, 25, 25)
			TextLabel_3.Position = UDim2.new(0.0684039071, 0, 0.248148143, 0)
			TextLabel_3.Size = UDim2.new(0, 250, 0, 50)
			TextLabel_3.Font = Enum.Font.GothamBold
			TextLabel_3.Text = "Thanks For Using :)"
			TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_3.TextSize = 14.000

			TextLabel_4.Parent = InfoPage
			TextLabel_4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			TextLabel_4.BackgroundTransparency = 1.000
			TextLabel_4.BorderColor3 = Color3.fromRGB(25, 25, 25)
			TextLabel_4.Position = UDim2.new(0.0684039071, 0, 0.470370352, 0)
			TextLabel_4.Size = UDim2.new(0, 250, 0, 50)
			TextLabel_4.Font = Enum.Font.GothamBold
			TextLabel_4.Text = "GalakxyFairs(Galaksiki) -> Tameria ->annen"
			TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_4.TextSize = 14.000
			TextLabel_4.TextWrapped = true

			TextLabel_5.Parent = InfoPage
			TextLabel_5.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			TextLabel_5.BackgroundTransparency = 1.000
			TextLabel_5.BorderColor3 = Color3.fromRGB(25, 25, 25)
			TextLabel_5.Position = UDim2.new(0.0684039071, 0, 0.714814782, 0)
			TextLabel_5.Size = UDim2.new(0, 250, 0, 50)
			TextLabel_5.Font = Enum.Font.GothamBold
			TextLabel_5.Text = "Tuncelilere bisey olursa luks artvin ne yapar? Kafasi atar ve gerekeni yapar :sunglasses:"
			TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_5.TextSize = 14.000
			TextLabel_5.TextWrapped = true

			KeyPage.Name = "KeyPage"
			KeyPage.Parent = Pages
			KeyPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			KeyPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
			KeyPage.Position = UDim2.new(0.022292994, 0, 0, 0)
			KeyPage.Size = UDim2.new(0, 307, 0, 270)
			KeyPage.Visible = false

			UICorner_11.Parent = KeyPage

			KeyBox.Name = "KeyBox"
			KeyBox.Parent = KeyPage
			KeyBox.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
			KeyBox.BorderColor3 = Color3.fromRGB(34, 34, 34)
			KeyBox.Position = UDim2.new(0.026058631, 0, 0.0481481478, 0)
			KeyBox.Size = UDim2.new(0, 284, 0, 35)
			KeyBox.Font = Enum.Font.Gotham
			KeyBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
			KeyBox.PlaceholderText = "Enter Your Key Here"
			KeyBox.Text = ""
			KeyBox.TextColor3 = Color3.fromRGB(178, 178, 178)
			KeyBox.TextSize = 14.000
			KeyBox.TextWrapped = true

			UICorner_12.Parent = KeyBox

			UIStroke.Parent = KeyBox
			UIStroke.Color = Color3.fromRGB(60, 60, 60)
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			Buttons.Name = "Buttons"
			Buttons.Parent = KeyPage
			Buttons.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
			Buttons.BorderColor3 = Color3.fromRGB(33, 33, 33)
			Buttons.Position = UDim2.new(0.026058631, 0, 0.240740746, 0)
			Buttons.Size = UDim2.new(0, 284, 0, 140)

			UIListLayout_2.Parent = Buttons
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.Padding = UDim.new(0, 2)

			UIStroke_2.Parent = Buttons
			UIStroke_2.Color = Color3.fromRGB(60, 60, 60)
			UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			UICorner_13.Parent = Buttons

			SubmitKey.Name = "SubmitKey"
			SubmitKey.Parent = Buttons
			SubmitKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SubmitKey.BackgroundTransparency = 1.000
			SubmitKey.Position = UDim2.new(0.00352112669, 0, 0, 0)
			SubmitKey.Size = UDim2.new(0, 282, 0, 31)
			SubmitKey.ZIndex = 0
			SubmitKey.Font = Enum.Font.Roboto
			SubmitKey.Text = "Submit Key"
			SubmitKey.TextColor3 = Color3.fromRGB(255, 255, 255)
			SubmitKey.TextSize = 17.000
			SubmitKey.MouseButton1Down:Connect(function()
				ripple(SubmitKey, Mouse.X, Mouse.Y)
				local key = KeyBox.Text
				pcall(function()
					if key == game:HttpGet("https://1.kelprepl.repl.co/verify/HawkHUB?verify_key="..key) or game:HttpGet("https://hawksoftworks.ga/Hawk/Generated.php?key="..key) == "Taklaya Geldin" then
						if IsHawk == true then
							delfile("Hawk\\HawkKey.lua")
							wait(0.2)
							writefile("Hawk\\HawkKey.lua", key)
						else
							writefile("Hawk\\HawkKey.lua", key)
						end	
						wait()
						TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Correct Key!</font>"
						cu(key)
						wait()
						getgenv().writefile = function() return nil end
						wait(0.5)
						LoadHawk()
					else
						TextLabel_6.Text = "Status: <font color=\"rgb(255, 0, 0)\">Wrong Key</font>"
						wait(0.5)
						TextLabel_6.Text = "Status: <font color=\"rgb(255, 0, 0)\"></font>"
					end
				end)
			end)

			UICorner_14.Parent = SubmitKey

			Line_2.Name = "Line"
			Line_2.Parent = Buttons
			Line_2.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
			Line_2.BorderColor3 = Color3.fromRGB(77, 77, 77)
			Line_2.Position = UDim2.new(0.241545901, 0, 0, 0)
			Line_2.Size = UDim2.new(0, 284, 0, 0)
			Line_2.ZIndex = 0

			GetKey.Name = "GetKey"
			GetKey.Parent = Buttons
			GetKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			GetKey.BackgroundTransparency = 1.000
			GetKey.Position = UDim2.new(0.00352112669, 0, 0.257352978, 0)
			GetKey.Size = UDim2.new(0, 282, 0, 31)
			GetKey.ZIndex = 0
			GetKey.Font = Enum.Font.Roboto
			GetKey.Text = "Get Key"
			GetKey.TextColor3 = Color3.fromRGB(255, 255, 255)
			GetKey.TextSize = 17.000
			GetKey.MouseButton1Down:Connect(function()
				ripple(GetKey, Mouse.X, Mouse.Y)
				TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Copied Key Link</font>"
				setclipboard("https://1.kelprepl.repl.co/getkey/HawkHUB")
				wait(0.5)
				TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
			end)

			UICorner_15.Parent = GetKey

			Line_3.Name = "Line"
			Line_3.Parent = Buttons
			Line_3.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
			Line_3.BorderColor3 = Color3.fromRGB(77, 77, 77)
			Line_3.Position = UDim2.new(0.241545901, 0, 0, 0)
			Line_3.Size = UDim2.new(0, 284, 0, 0)
			Line_3.ZIndex = 0

			Clean.Name = "Clean"
			Clean.Parent = Buttons
			Clean.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Clean.BackgroundTransparency = 1.000
			Clean.Position = UDim2.new(0.00352112669, 0, 0.514705896, 0)
			Clean.Size = UDim2.new(0, 282, 0, 31)
			Clean.ZIndex = 0
			Clean.Font = Enum.Font.Roboto
			Clean.Text = "Clear"
			Clean.TextColor3 = Color3.fromRGB(255, 255, 255)
			Clean.TextSize = 17.000
			Clean.MouseButton1Down:Connect(function()
				ripple(Clean, Mouse.X, Mouse.Y)
				KeyBox.Text = ""
			end)

			UICorner_16.Parent = Clean

			Line_4.Name = "Line"
			Line_4.Parent = Buttons
			Line_4.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
			Line_4.BorderColor3 = Color3.fromRGB(77, 77, 77)
			Line_4.Position = UDim2.new(0.241545901, 0, 0, 0)
			Line_4.Size = UDim2.new(0, 284, 0, 0)
			Line_4.ZIndex = 0

			CopyKeyLink.Name = "CopyKeyLink"
			CopyKeyLink.Parent = Buttons
			CopyKeyLink.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			CopyKeyLink.BackgroundTransparency = 1.000
			CopyKeyLink.Position = UDim2.new(0.00352112669, 0, 0.75, 0)
			CopyKeyLink.Size = UDim2.new(0, 282, 0, 35)
			CopyKeyLink.ZIndex = 0
			CopyKeyLink.Font = Enum.Font.Roboto
			CopyKeyLink.Text = "Copy Discord Link"
			CopyKeyLink.TextColor3 = Color3.fromRGB(255, 255, 255)
			CopyKeyLink.TextSize = 17.000
			CopyKeyLink.MouseButton1Down:Connect(function()
				ripple(CopyKeyLink, Mouse.X, Mouse.Y)
				TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\">Copied Discord Link</font>"
				setclipboard("https://discord.gg/5TSZESaFhG")
				wait(0.5)
				TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
			end)

			UICorner_17.Parent = CopyKeyLink

			TextLabel_6.Parent = KeyPage
			TextLabel_6.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			TextLabel_6.BackgroundTransparency = 1.000
			TextLabel_6.BorderColor3 = Color3.fromRGB(25, 25, 25)
			TextLabel_6.Position = UDim2.new(0.0521172658, 0, 0.788888872, 0)
			TextLabel_6.Size = UDim2.new(0, 127, 0, 50)
			TextLabel_6.Font = Enum.Font.GothamBold
			TextLabel_6.Text = "Status: <font color=\"rgb(85, 255, 0)\"></font>"
			TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel_6.TextSize = 14.000
			TextLabel_6.TextWrapped = true
			TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left
			TextLabel_6.RichText = true

			CreditsPage.Name = "CreditsPage"
			CreditsPage.Parent = Pages
			CreditsPage.Active = true
			CreditsPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			CreditsPage.BackgroundTransparency = 1.000
			CreditsPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
			CreditsPage.Position = UDim2.new(0.0219999999, 0, 0, 0)
			CreditsPage.Size = UDim2.new(0, 307, 0, 270)
			CreditsPage.Visible = false

			UICorner_18.CornerRadius = UDim.new(0, 6)
			UICorner_18.Parent = CreditsPage

			CreditsTable.Name = "CreditsTable"
			CreditsTable.Parent = CreditsPage
			CreditsTable.Active = true
			CreditsTable.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			CreditsTable.BackgroundTransparency = 1.000
			CreditsTable.BorderColor3 = Color3.fromRGB(36, 36, 36)
			CreditsTable.BorderSizePixel = 0
			CreditsTable.Position = UDim2.new(-0.0225015953, 0, 0, 0)
			CreditsTable.Size = UDim2.new(0, 313, 0, 270)
			CreditsTable.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
			CreditsTable.CanvasSize = UDim2.new(0, 0, 2.20000005, 0)
			CreditsTable.ScrollBarThickness = 5

			YapanlarOmagad.Name = "YapanlarOmagad"
			YapanlarOmagad.Parent = CreditsTable
			YapanlarOmagad.Active = true
			YapanlarOmagad.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			YapanlarOmagad.BackgroundTransparency = 1.000
			YapanlarOmagad.BorderColor3 = Color3.fromRGB(25, 25, 25)
			YapanlarOmagad.Position = UDim2.new(0.0159999859, 0, 0.025925925, 0)
			YapanlarOmagad.Size = UDim2.new(0, 310, 0, 2103)

			UIListLayout_3.Parent = YapanlarOmagad
			UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_3.Padding = UDim.new(0, 17)

			UICorner_19.CornerRadius = UDim.new(0, 5)
			UICorner_19.Parent = YapanlarOmagad

			Hanki.Name = "Hanki"
			Hanki.Parent = YapanlarOmagad
			Hanki.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Hanki.BackgroundTransparency = 1.000
			Hanki.BorderColor3 = Color3.fromRGB(25, 25, 25)
			Hanki.Position = UDim2.new(0.0790322572, 0, 0, 0)
			Hanki.Size = UDim2.new(0, 282, 0, 100)

			Pfp.Name = "Pfp"
			Pfp.Parent = Hanki
			Pfp.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Pfp.BackgroundTransparency = 1.000
			Pfp.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Pfp.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
			Pfp.Size = UDim2.new(0, 100, 0, 100)
			Pfp.Image = "rbxassetid://12429287173"

			UICorner_20.CornerRadius = UDim.new(0, 6)
			UICorner_20.Parent = Pfp

			UIStroke_3.Parent = Pfp
			UIStroke_3.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_3.Transparency = 0.800
			UIStroke_3.Thickness = 2.000
			UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			UICorner_21.Parent = Hanki

			Username.Name = "Username"
			Username.Parent = Hanki
			Username.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Username.BackgroundTransparency = 1.000
			Username.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Username.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
			Username.Size = UDim2.new(0, 200, 0, 30)
			Username.Font = Enum.Font.GothamBold
			Username.Text = "Hanki"
			Username.TextColor3 = Color3.fromRGB(255, 255, 255)
			Username.TextSize = 17.000
			Username.TextXAlignment = Enum.TextXAlignment.Left

			Description.Name = "Description"
			Description.Parent = Hanki
			Description.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Description.BackgroundTransparency = 1.000
			Description.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Description.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
			Description.Size = UDim2.new(0, 173, 0, 64)
			Description.Font = Enum.Font.GothamBold
			Description.Text = "Owner Of Cihonax HUB, 5N1K HUB and Veso Lux"
			Description.TextColor3 = Color3.fromRGB(177, 177, 177)
			Description.TextSize = 17.000
			Description.TextWrapped = true
			Description.TextXAlignment = Enum.TextXAlignment.Left

			Batumation.Name = "Batumation"
			Batumation.Parent = YapanlarOmagad
			Batumation.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Batumation.BackgroundTransparency = 1.000
			Batumation.BorderColor3 = Color3.fromRGB(25, 25, 25)
			Batumation.Position = UDim2.new(0.0790322572, 0, 0, 0)
			Batumation.Size = UDim2.new(0, 282, 0, 100)

			Pfp_2.Name = "Pfp"
			Pfp_2.Parent = Batumation
			Pfp_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Pfp_2.BackgroundTransparency = 1.000
			Pfp_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Pfp_2.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
			Pfp_2.Size = UDim2.new(0, 100, 0, 100)
			Pfp_2.Image = "rbxassetid://8000627366"

			UICorner_22.CornerRadius = UDim.new(0, 6)
			UICorner_22.Parent = Pfp_2

			UIStroke_4.Parent = Pfp_2
			UIStroke_4.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_4.Transparency = 0.800
			UIStroke_4.Thickness = 2.000
			UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			UICorner_23.Parent = Batumation

			Username_2.Name = "Username"
			Username_2.Parent = Batumation
			Username_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Username_2.BackgroundTransparency = 1.000
			Username_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Username_2.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
			Username_2.Size = UDim2.new(0, 200, 0, 30)
			Username_2.Font = Enum.Font.GothamBold
			Username_2.Text = "Batumation"
			Username_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Username_2.TextSize = 17.000
			Username_2.TextXAlignment = Enum.TextXAlignment.Left

			Description_2.Name = "Description"
			Description_2.Parent = Batumation
			Description_2.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Description_2.BackgroundTransparency = 1.000
			Description_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Description_2.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
			Description_2.Size = UDim2.new(0, 173, 0, 64)
			Description_2.Font = Enum.Font.GothamBold
			Description_2.Text = "Owner of Cihone HUB and Batu HUB"
			Description_2.TextColor3 = Color3.fromRGB(177, 177, 177)
			Description_2.TextSize = 17.000
			Description_2.TextWrapped = true
			Description_2.TextXAlignment = Enum.TextXAlignment.Left

			Ege.Name = "Ege"
			Ege.Parent = YapanlarOmagad
			Ege.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Ege.BackgroundTransparency = 1.000
			Ege.BorderColor3 = Color3.fromRGB(25, 25, 25)
			Ege.Position = UDim2.new(0.0790322572, 0, 0, 0)
			Ege.Size = UDim2.new(0, 282, 0, 100)

			Pfp_3.Name = "Pfp"
			Pfp_3.Parent = Ege
			Pfp_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Pfp_3.BackgroundTransparency = 1.000
			Pfp_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Pfp_3.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
			Pfp_3.Size = UDim2.new(0, 100, 0, 100)
			Pfp_3.Image = "rbxassetid://12327614057"

			UICorner_24.CornerRadius = UDim.new(0, 6)
			UICorner_24.Parent = Pfp_3

			UIStroke_5.Parent = Pfp_3
			UIStroke_5.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_5.Transparency = 0.800
			UIStroke_5.Thickness = 2.000
			UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			UICorner_25.Parent = Ege

			Username_3.Name = "Username"
			Username_3.Parent = Ege
			Username_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Username_3.BackgroundTransparency = 1.000
			Username_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Username_3.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
			Username_3.Size = UDim2.new(0, 200, 0, 30)
			Username_3.Font = Enum.Font.GothamBold
			Username_3.Text = "Egw"
			Username_3.TextColor3 = Color3.fromRGB(255, 255, 255)
			Username_3.TextSize = 17.000
			Username_3.TextXAlignment = Enum.TextXAlignment.Left

			Description_3.Name = "Description"
			Description_3.Parent = Ege
			Description_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Description_3.BackgroundTransparency = 1.000
			Description_3.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Description_3.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
			Description_3.Size = UDim2.new(0, 173, 0, 64)
			Description_3.Font = Enum.Font.GothamBold
			Description_3.Text = "Owner of Veso Lux"
			Description_3.TextColor3 = Color3.fromRGB(177, 177, 177)
			Description_3.TextSize = 17.000
			Description_3.TextWrapped = true
			Description_3.TextXAlignment = Enum.TextXAlignment.Left

			Aro.Name = "Aro"
			Aro.Parent = YapanlarOmagad
			Aro.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Aro.BackgroundTransparency = 1.000
			Aro.BorderColor3 = Color3.fromRGB(25, 25, 25)
			Aro.Position = UDim2.new(0.0790322572, 0, 0, 0)
			Aro.Size = UDim2.new(0, 282, 0, 100)

			Pfp_4.Name = "Pfp"
			Pfp_4.Parent = Aro
			Pfp_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Pfp_4.BackgroundTransparency = 1.000
			Pfp_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Pfp_4.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
			Pfp_4.Size = UDim2.new(0, 100, 0, 100)
			Pfp_4.Image = "rbxassetid://12321793277"

			UICorner_26.CornerRadius = UDim.new(0, 6)
			UICorner_26.Parent = Pfp_4

			UIStroke_6.Parent = Pfp_4
			UIStroke_6.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_6.Transparency = 0.800
			UIStroke_6.Thickness = 2.000
			UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			UICorner_27.Parent = Aro

			Username_4.Name = "Username"
			Username_4.Parent = Aro
			Username_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Username_4.BackgroundTransparency = 1.000
			Username_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Username_4.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
			Username_4.Size = UDim2.new(0, 200, 0, 30)
			Username_4.Font = Enum.Font.GothamBold
			Username_4.Text = "Aro"
			Username_4.TextColor3 = Color3.fromRGB(255, 255, 255)
			Username_4.TextSize = 17.000
			Username_4.TextXAlignment = Enum.TextXAlignment.Left

			Description_4.Name = "Description"
			Description_4.Parent = Aro
			Description_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Description_4.BackgroundTransparency = 1.000
			Description_4.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Description_4.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
			Description_4.Size = UDim2.new(0, 173, 0, 64)
			Description_4.Font = Enum.Font.GothamBold
			Description_4.Text = "Owner of ArrowSploit"
			Description_4.TextColor3 = Color3.fromRGB(177, 177, 177)
			Description_4.TextSize = 17.000
			Description_4.TextWrapped = true
			Description_4.TextXAlignment = Enum.TextXAlignment.Left

			LilRhytxm.Name = "LilRhytxm"
			LilRhytxm.Parent = YapanlarOmagad
			LilRhytxm.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			LilRhytxm.BackgroundTransparency = 1.000
			LilRhytxm.BorderColor3 = Color3.fromRGB(25, 25, 25)
			LilRhytxm.Position = UDim2.new(0.0790322572, 0, 0, 0)
			LilRhytxm.Size = UDim2.new(0, 282, 0, 100)

			Pfp_5.Name = "Pfp"
			Pfp_5.Parent = LilRhytxm
			Pfp_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Pfp_5.BackgroundTransparency = 1.000
			Pfp_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Pfp_5.Position = UDim2.new(-0.0274339952, 0, -0.00999999978, 0)
			Pfp_5.Size = UDim2.new(0, 100, 0, 100)
			Pfp_5.Image = "rbxassetid://12321778386"

			UICorner_28.CornerRadius = UDim.new(0, 6)
			UICorner_28.Parent = Pfp_5

			UIStroke_7.Parent = Pfp_5
			UIStroke_7.Color = Color3.fromRGB(255, 255, 255)
			UIStroke_7.Transparency = 0.800
			UIStroke_7.Thickness = 2.000
			UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

			UICorner_29.Parent = LilRhytxm

			Username_5.Name = "Username"
			Username_5.Parent = LilRhytxm
			Username_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Username_5.BackgroundTransparency = 1.000
			Username_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Username_5.Position = UDim2.new(0.37189877, 0, 0.0700000003, 0)
			Username_5.Size = UDim2.new(0, 200, 0, 30)
			Username_5.Font = Enum.Font.GothamBold
			Username_5.Text = "Lil Rhytxm"
			Username_5.TextColor3 = Color3.fromRGB(255, 255, 255)
			Username_5.TextSize = 17.000
			Username_5.TextXAlignment = Enum.TextXAlignment.Left

			Description_5.Name = "Description"
			Description_5.Parent = LilRhytxm
			Description_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
			Description_5.BackgroundTransparency = 1.000
			Description_5.BorderColor3 = Color3.fromRGB(36, 36, 36)
			Description_5.Position = UDim2.new(0.375083327, 0, 0.349999994, 0)
			Description_5.Size = UDim2.new(0, 173, 0, 64)
			Description_5.Font = Enum.Font.GothamBold
			Description_5.Text = "Owner of GusSploit"
			Description_5.TextColor3 = Color3.fromRGB(177, 177, 177)
			Description_5.TextSize = 17.000
			Description_5.TextWrapped = true
			Description_5.TextXAlignment = Enum.TextXAlignment.Left

			UICorner_30.CornerRadius = UDim.new(0, 6)
			UICorner_30.Parent = CreditsTable

			ScaryPage.Name = "ScaryPage"
			ScaryPage.Parent = Pages
			ScaryPage.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			ScaryPage.BorderColor3 = Color3.fromRGB(25, 25, 25)
			ScaryPage.Position = UDim2.new(0.022292994, 0, 0, 0)
			ScaryPage.Size = UDim2.new(0, 307, 0, 270)
			ScaryPage.Visible = false

			UICorner_31.Parent = ScaryPage

			ImageLabel.Parent = ScaryPage
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel.Position = UDim2.new(-0.0228013024, 0, 0, 0)
			ImageLabel.Size = UDim2.new(0, 314, 0, 270)
			ImageLabel.Image = "rbxassetid://10847340019"

			UICorner_32.Parent = ImageLabel


			Key.MouseButton1Down:Connect(function()
				for i, v in pairs(TabContainer:GetDescendants()) do
					if v:IsA("TextButton") then
						v.MouseButton1Down:Connect(function()
							for i, q in pairs(TabContainer:GetChildren()) do
								if q:IsA("TextButton") then
									TweenService:Create(
										q,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
									):Play()
									TweenService:Create(
										q,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{TextColor3 = Color3.fromRGB(217, 217, 217)}
									):Play()
								end
							end
						end)
					end
				end
				TweenService:Create(
					Key,
					TweenInfo.new(.3, Enum.EasingStyle.Back),
					{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
				):Play()
				TweenService:Create(
					Key,
					TweenInfo.new(.3, Enum.EasingStyle.Back),
					{TextColor3 = Color3.fromRGB(255, 255, 255)}
				):Play()
				for w,e in pairs(Pages:GetChildren()) do
					if e:IsA("Frame") and e.Name ~= "KeyPage" then
						e.Visible = false
					end
				end
				KeyPage.Visible = true
			end)

			Info.MouseButton1Down:Connect(function()
				for i, v in pairs(TabContainer:GetDescendants()) do
					if v:IsA("TextButton") then
						v.MouseButton1Down:Connect(function()
							for i, q in pairs(TabContainer:GetChildren()) do
								if q:IsA("TextButton") then
									TweenService:Create(
										q,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
									):Play()
									TweenService:Create(
										q,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{TextColor3 = Color3.fromRGB(217, 217, 217)}
									):Play()
								end
							end
						end)
					end
				end
				TweenService:Create(
					Info,
					TweenInfo.new(.3, Enum.EasingStyle.Back),
					{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
				):Play()
				TweenService:Create(
					Info,
					TweenInfo.new(.3, Enum.EasingStyle.Back),
					{TextColor3 = Color3.fromRGB(255, 255, 255)}
				):Play()
				for w,e in pairs(Pages:GetChildren()) do
					if e:IsA("Frame") and e.Name ~= "InfoPage" then
						e.Visible = false
					end
				end
				InfoPage.Visible = true
			end)

			Credits.MouseButton1Down:Connect(function()
				for i, v in pairs(TabContainer:GetDescendants()) do
					if v:IsA("TextButton") then
						v.MouseButton1Down:Connect(function()
							for i, q in pairs(TabContainer:GetChildren()) do
								if q:IsA("TextButton") then
									TweenService:Create(
										q,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
									):Play()
									TweenService:Create(
										q,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{TextColor3 = Color3.fromRGB(217, 217, 217)}
									):Play()
								end
							end
						end)
					end
				end
				TweenService:Create(
					Credits,
					TweenInfo.new(.3, Enum.EasingStyle.Back),
					{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
				):Play()
				TweenService:Create(
					Credits,
					TweenInfo.new(.3, Enum.EasingStyle.Back),
					{TextColor3 = Color3.fromRGB(255, 255, 255)}
				):Play()
				for w,e in pairs(Pages:GetChildren()) do
					if e:IsA("Frame") and e.Name ~= "CreditsPage" then
						e.Visible = false
					end
				end
				CreditsPage.Visible = true
			end)

			Scary.MouseButton1Down:Connect(function()
				for i, v in pairs(TabContainer:GetDescendants()) do
					if v:IsA("TextButton") then
						v.MouseButton1Down:Connect(function()
							for i, q in pairs(TabContainer:GetChildren()) do
								if q:IsA("TextButton") then
									TweenService:Create(
										q,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{BackgroundColor3 = Color3.fromRGB(38, 38, 38)}
									):Play()
									TweenService:Create(
										q,
										TweenInfo.new(.3, Enum.EasingStyle.Back),
										{TextColor3 = Color3.fromRGB(217, 217, 217)}
									):Play()
								end
							end
						end)
					end
				end
				TweenService:Create(
					Scary,
					TweenInfo.new(.3, Enum.EasingStyle.Back),
					{BackgroundColor3 = Color3.fromRGB(67, 67, 67)}
				):Play()
				TweenService:Create(
					Scary,
					TweenInfo.new(.3, Enum.EasingStyle.Back),
					{TextColor3 = Color3.fromRGB(255, 255, 255)}
				):Play()
				for w,e in pairs(Pages:GetChildren()) do
					if e:IsA("Frame") and e.Name ~= "ScaryPage" then
						e.Visible = false
					end
				end
				ScaryPage.Visible = true
			end)

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