local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()

local Notificatin = Hawk:Notification()

Notificatin:Notification("Hawk Loaded!","Have Fun!","Notification",2)
game:GetService("ReplicatedStorage").Loaded:Destroy()
wait()
game:GetService("ReplicatedStorage").StartShutdown:Destroy()

	local Window = Hawk:Window("Hawk HUB | Block Eating Simulator")
	local Tab1 = Window:Tab("Main")
	
	Tab1:Button("Autofarm",function(toggl)
	for i, v in pairs(game:GetService("Workspace").Parts:GetChildren()) do
		if v:IsA("Part") then
			wait()
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
			wait()
		end
	end
end)

	Tab1:Slider("Speed",16,100,function(speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end)
	Tab1:Slider("Jump Power",16,50,function(speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end)
