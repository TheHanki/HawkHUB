local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()

local Notificatin = Hawk:Notification()

	local Window = Hawk:Window("Hawk HUB | Egoist Football")
	local Tab1 = Window:Tab("Usefull stuff")
	Tab1:KeyBind("Tween Teleport","E",function()
		local Ball = game:GetService("Workspace").ClientBalls:GetChildren()[1]

		local TweenService = game:GetService("TweenService")
		local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
		{CFrame = Ball.CFrame}):Play()
	end)
	Tab1:KeyBind("Instant Teleport","R",function()
		local Ball = game:GetService("Workspace").ClientBalls:GetChildren()[1]

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Ball.CFrame
	end)
	local Tab1 = Window:Tab("Player Adjustments")
	Tab1:Slider("Speed",16,100,function(speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end)