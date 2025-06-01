--loadstring
_Hawk = "ohhahtuhthttouttpwuttuaunbotwo"

local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()
local notifica = Hawk:AddNotifications()

notifica:Notification("Loaded!","TPS Street Soccer","Done",2)
wait()
notifica:Notification("Ludolf is so retarded",":skull:","Done",2)
wait()
notifica:Notification("DinzyHeroExploits","Is on TOP","Done",2)
--------------------------------------------------------------------------
local ballhitbox = Instance.new("Part")
local Config = {
	TPSReach = false,
	LegionReach = false,
	LegionReact = false,
	Antiballfling = false,
	Curve = false,
	CurveMultiplier = 3,	
	ReachStuds = 3,
	TPSReact = false,

}

game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0

--Wait Game Load--
repeat task.wait() until game:IsLoaded() == true

-- TPS Street Soccer --
function legreach()
	if Config.TPSReach == true then
		Runstepped2 = game:GetService("RunService").RenderStepped:Connect(function()
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= Config.ReachStuds then
					if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
						firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.TPSSystem.TPS,0)
						firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.TPSSystem.TPS,1)
					elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
						firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.TPSSystem.TPS,0)
						firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.TPSSystem.TPS,1)

					end
				end
			end
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= Config.ReachStuds then
					if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
						firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
						firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 1)
					elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
						firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
						firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 1)

					end
				end
			end
		end)
	end
end

function legreact()
	if Config.TPSReact == true then
		Runstepped2 = game:GetService("RunService").RenderStepped:Connect(function()
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= 3 then
					if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
						firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.TPSSystem.TPS,0)
						firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.TPSSystem.TPS,1)
					elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
						firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.TPSSystem.TPS,0)
						firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.TPSSystem.TPS,1)

					end
				end
			end
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude <= 3 then
					if game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 1 then
						firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
						firetouchinterest(game.Players.LocalPlayer.Character["RightLowerLeg"], game.Workspace.TPSSystem.TPS, 1)
					elseif game.Lighting[game.Players.LocalPlayer.Name].PreferredFoot.Value == 2 then
						firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 0)
						firetouchinterest(game.Players.LocalPlayer.Character["LeftLowerLeg"], game.Workspace.TPSSystem.TPS, 1)

					end
				end
			end
		end)
	end
end

function curve()
	if Config.Curve == true then
		local CurveMultiplier = Config.CurveMultiplier -- Recommended 3.75 - 4 --
		local Humanoid = game.Players.LocalPlayer.Character.Humanoid
		AnimationCurveLoop = Humanoid.AnimationPlayed:Connect(function(AnimationTrack)
			if AnimationTrack.Name == "OldMKickL" or AnimationTrack.Name == "OldMKick" or AnimationTrack.Name == "OldLKickL" or AnimationTrack.Name == "OldLKick" or AnimationTrack.Name == "MKickL" or AnimationTrack.Name == "MKick" or AnimationTrack.Name == "LKickL" or AnimationTrack.Name == "LKick" or AnimationTrack.Name == "OldDribbleL" or AnimationTrack.Name == "OldDribble" or AnimationTrack.Name == "DribbleL" or AnimationTrack.Name == "Dribble" then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.TPSSystem.TPS.Position).Magnitude < CurveMultiplier then
					if game.Players.LocalPlayer.Backpack.Curving.Value == 2 then
						wait(0.1)
						local A_1T = game:GetService("Workspace").TPSSystem.TPS
						local A_2T = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
						local EventT = game:GetService("Workspace").FE.Actions.KickC1
						EventT:FireServer(A_1T, A_2T)
						wait(0.2)
						EventT:FireServer(A_1T, A_2T)

					elseif game.Players.LocalPlayer.Backpack.Curving.Value == 1 then
						wait(0.1)
						local A_1 = game:GetService("Workspace").TPSSystem.TPS
						local A_2 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
						local Event = game:GetService("Workspace").FE.Actions.KickC2
						Event:FireServer(A_1, A_2)
						wait(0.2)
						Event:FireServer(A_1, A_2)

					end
				end
			end
		end)
	end
end




-- Legion Street Soccer --
function legreach2()
	if Config.LegionReach == true then
		Runstepped3 = game:GetService("RunService").RenderStepped:Connect(function()
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.Ball.Position).Magnitude <= Config.ReachStuds then
					firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.Ball,0)
					firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.Ball,1)
				end
			end
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.Ball.Position).Magnitude <= Config.ReachStuds then
					firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.Ball,0)
					firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.Ball,1)
				end
			end
		end)
	end
end

function legreact2()
	if Config.LegionReact == true then
		Runstepped3 = game:GetService("RunService").RenderStepped:Connect(function()
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.Ball.Position).Magnitude <= 3 then
					firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.Ball,0)
					firetouchinterest(game.Players.LocalPlayer.Character["Right Leg"],game.Workspace.Ball,1)
				end
			end
			if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - game.Workspace.Ball.Position).Magnitude <= 3 then
					firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.Ball,0)
					firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.Ball,1)
				end
			end
		end)
	end
end


-- Both Script --


function antiballfling()
	if Config.AntiBallFling == true then
		local speaker = game.Players.LocalPlayer
		local RunService = game:GetService("RunService")
		Clip = false
		wait(0.1)
		local function NoclipLoop()
			if Clip == false and speaker.Character ~= nil then
				for _, child in pairs(speaker.Character:GetDescendants()) do
					if child:IsA("BasePart") and child.CanCollide == false and child.Name == "Right Leg" or child.Name == "Right Arm" or child.Name == "Left Arm" or child.Name == "Right Arm" or child.Name == "Torso" then
						child.CanCollide = false
					end
				end
			end
		end
		Noclipping = RunService.Stepped:Connect(NoclipLoop)
	end    
end


function purplesky()
	if Config.PurpleSky.Enabled == true then
		local skybox = Instance.new("Sky")
		skybox.Parent = game.Lighting
		skybox.SkyboxBk = "http://www.roblox.com/asset/?id=159454299"
		skybox.SkyboxDn = "http://www.roblox.com/asset/?id=159454296"
		skybox.SkyboxFt = "http://www.roblox.com/asset/?id=159454293"
		skybox.SkyboxLf = "http://www.roblox.com/asset/?id=159454286"
		skybox.SkyboxRt = "http://www.roblox.com/asset/?id=159454300"
		skybox.SkyboxUp = "http://www.roblox.com/asset/?id=159454288"
		skybox.StarCount = 5000
	end
end

function animesky()
	local skybox = Instance.new("Sky")
	skybox.Parent = game.Lighting
	skybox.SkyboxBk = "http://www.roblox.com/asset/?id=14526483030"
	skybox.SkyboxDn = "http://www.roblox.com/asset/?id=14526483030"
	skybox.SkyboxFt = "http://www.roblox.com/asset/?id=14526483030"
	skybox.SkyboxLf = "http://www.roblox.com/asset/?id=14526483030"
	skybox.SkyboxRt = "http://www.roblox.com/asset/?id=14526483030"
	skybox.SkyboxUp = "http://www.roblox.com/asset/?id=14526483030"
	skybox.StarCount = 5000
end




--Creating Window
local Window = Hawk:Window({
	ScriptName = "Hawk HUB | TPS: Street Soccer",
	DestroyIfExists = true, --if false, gui wont disappear
	Theme = "Dark" --Themes: Pink, White, Dark
})

--Creating Close Button
Window:Close({
	visibility = true, --if false, close button will disappear
	Callback = function()
		Window:Destroy() --Destroying Gui Function
	end,
})

--Creating Minimize Button
Window:Minimize({
	visibility = true, --if false, close button will disappear
	OpenButton = true, -- Visible = false etc, open button.
	Callback = function()
	end,
})

--Creating Tab
local tab1 = Window:Tab("Reach Settings")
local tab2 = Window:Tab("Multipliers")
local tab3 = Window:Tab("Others")
local tab4 = Window:Tab("Credits")
local tab5 = Window:Tab("Updates")

tab1:Section("Reach Settings")

tab1:Paragraph("Reachs",{"Hello friends", "There are reachs"})

tab1:Toggle("Reach",nil,function(func)
	if func == false then
		Config.TPSReach = false
		Config.LegionReach = false
		Runstepped2:Disconnect()
		Runstepped3:Disconnect()
	else
		Config.TPSReach = true
		Config.LegionReach = true
		legreach()
	end
end)

tab1:Slider("Stud",3,70,function(lol)
	Config.ReachStuds = lol
end)

tab1:Line()




tab1:Slider(
	"Ball Hitbox",
	1,
	30,
	function(value)
		ballhitbox.Size = Vector3.new((value), (value), (value))
	end
)

ballhitbox.Touched:Connect(function()
	firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.Ball,0)
	firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"],game.Workspace.Ball,1)
end)


tab1:Button("Enables Legion Reach","The Reach Of Legion",function()
	Config.LegionReach = true
	legreach2()
end)



--Creating Slider
tab1:Slider("Legit Slider",1,25,function(value)
	Config.ReachStuds = value
end)

--Creating Slider
tab1:Slider("Rage Slider",1,1000,function(ss)
	Config.ReachStuds = ss
end)

tab2:Section("Multipliers")
tab2:Paragraph("Multipliers",{"Curve script only works on tps"})

tab2:Toggle("React",nil,function(lol)
	if lol == true then
		Config.TPSReact = true
		legreact()
	else
		Config.TPSReact = false
		Runstepped2:Disconnect()
	end
end)
	
	
tab2:Button("Enable Antiballfling","Easy Skills But IDK",function()
	Config.Antiballfling = true
	antiballfling()
end)


tab2:Section("Curve Multipliers")
tab2:Paragraph("Curve Multipliers",{"This script only working on TPS",})

tab2:Button("Enable Curve Multiplier","The Best",function()
	Config.Curve = true
	curve()
end)

tab2:Button("3 Curve Multiplier","Legit Curve",function()
	Config.CurveMultiplier = 3
end)

tab2:Button("4 Curve Multiplier","Middle Curve",function()
	Config.CurveMultiplier = 4
end)

tab2:Button("5 Curve Multiplier","Middle Curve",function()
	Config.CurveMultiplier = 5
end)

tab2:Slider("Rage Curve",1,1000,function(oo)
	Config.CurveMultiplier = oo
end)

tab2:Button("10000 Curve Multiplier","Rage Curve",function()
	Config.CurveMultiplier = 10000
end)

tab3:Section("Others")
	
tab3:Paragraph("Player",{"WalkSpeed & JumpPower",})		
		
tab3:Slider("WalkSpeed",0,80,function(sped)
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = sped
end)
		
tab3:Slider("JumpPower",50,80,function(jumpo)
	game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = jumpo
end)
		
tab3:Line()
		
tab4:KeyBind("UI Keybind","Q",function()
	Hawk:ToggleUI()
end)

if getcustomasset or syn then
	tab4:Image("Spyro","Hawk",{
		Name = "Spyro (Hanki)",
		FileName = "Spyro.webm",
		CheckFile = false,
		ImageLink = "https://raw.githubusercontent.com/xHzCihan/IDream/main/Owners/SpyroSmirk.webm",
		ImageColor = Color3.fromRGB(255, 255, 255),
		Stroke = Color3.fromRGB(140, 63, 218),
		Description = {"Main Scripter & UI Developer","Discord: __spyro"}
	})
else
	tab4:Image("Spyro","Hawk",{
		Name = "Spyro (Hanki)",
		FileName = "Spyro.webm",
		CheckFile = false,
		ImageLink = 12802604422,
		ImageColor = Color3.fromRGB(255, 255, 255),
		Stroke = Color3.fromRGB(255, 255, 255),
		Description = {"Main Scripter & UI Developer","Discord: __spyro"}
	})
end


tab5:Section("Updates")
tab5:Paragraph("1 - Script",{"Original owner is DinzyHeroExploits","Credits to DinzyHeroExploits for scripts"})

local returnFalse = {"Head", "Torso", "HumanoidRootPart","Left Leg","Right Leg","Left Arm","Right Arm","LeftFoot","LeftHand","LeftLowerArm","LeftLowerLeg","LeftUpperArm","LeftUpperLeg","LowerTorso","RightFoot","RightHand","RightLowerArm","RightLowerLeg","RightUpperArm","RightUpperLeg","UpperTorso"}                                                                                  
local human = game:GetService("Players").LocalPlayer.Character.Humanoid
local humpart = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
local hum = workspace[game.Players.LocalPlayer.Name]
local returnfal = {"TPS"}

local bypass;
bypass = hookmetamethod(game, "__namecall",function(self, ...)
	local args = {...}
	local method = getnamecallmethod();

	if not checkcaller() and (method == "FindFirstChild" and self == hum) and table.find(returnFalse,args[1]) then
		notifica:Notification("Ac tried to kill you",":D","Done",2)
		wait(9e9)
		return true
	end;

	return bypass(self, ...)
end)


print("Bypassing anti jmp")
local index; 
index = hookmetamethod(game, '__index', function(obj, idx)
	if index(obj, 'Name') == 'Humanoid' and idx == 'JumpPower' then
		return 50
	end    
	return index(obj, idx)
end)
--WS Method
print("Bypassing anti sped")
local index; 
index = hookmetamethod(game, '__index', function(obj, idx)
	if index(obj, 'Name') == 'Humanoid' and idx == 'WalkSpeed' then
		return 16
	end    
	return index(obj, idx)
end)

setreadonly(getrawmetatable(game),false)
local mt = getrawmetatable(game)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
	local method = getnamecallmethod()
	local args = {...}

	if method == "FireServer" and tostring(self) == "Banned" or tostring(self) == "RemoteEvent" or tostring(self) == "RemoteEvent1" or tostring(self) == "RemoteEvent2" then
		notifica:Notification("Ac tried to ban you",":scream:","Warn",2)
		return
	end
	return namecall(self, ...)
end)
setreadonly(getrawmetatable(game),true)

--//

game:GetService("RunService").Stepped:Connect(function()
	wait()
	ballhitbox.Position = game.Workspace.Ball
	ballhitbox.Transparency = 1
	ballhitbox.CanCollide = false
end)