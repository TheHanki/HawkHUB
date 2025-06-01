repeat task.wait() until game:IsLoaded() 
getgenv().maps = {
	"Lost Woods",
	"Axiom",
	"Castle Tides",
	"Poisonous Valley",
	"Marred Dreams",
	"Buried Oasis",
	"Forsaken Era",
	"Eerie Peaks",
	"Polar Industry",
	"Zemblanity",
	"Retro Coast",
	"Infiltration",
	"Cave System",
	"Flood Island",
	"Oriental Grove",
	"Sky Sanctuary",
	"Decrepit Seas",
	"Mysterium",
	"Forgotten Tombs",
	"Construction Thrill",
	"Toxic Woods",
	"Fall Equinox",
	"Northern Workshop",
	"Lava Tower",
	"Crystal Caverns",
	"Snowy Peaks",
	"Dark Sci-Forest",
	"Graveyard Cliffside",
	"Wild Savannah",
	"Sedimentary Temple",
	"Sunken Citadel",
	"Relic Valley",
	"Poisonous Forest",
	"Abandoned Facility",
	"Familiar Ruins",
	"Lost Desert",
	"Gloomy Manor",
	"Sinking Ship",
	"Dark Sci-Facility",
	"Beneath The Ruins",
	"Magmatic Mines",
	"Fallen",
	"Blue Moon",
	"Poisonous Chasm",
	"Ignis Peaks",
	"Sandswept Ruins",
	"Satomi Springs",
	--Highlights
	"Chaoz Japan",
	"Sulphureous Sea",
	"Onama Views",
	"Wind Swept Valley",
	"Archipelago"	
}

wait = task.wait

local clmain = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts:FindFirstChild("CL_MAIN_GameScript")) or wait()
local save = clmain.newAlert
clmain.newAlert = function(text)
	save(text,nil,nil,'rainbow')
end
if getrenv().wow and debugmode == false then
	clmain.newAlert('Already Executed!',Color3.new(1,0,0))
	error('Already Executed')
else
	getrenv().wow=''
end
-- TAS file minifier 
-- Starting from this line to ending line code was made by ian
local HttpService = game:GetService("HttpService")
local function round(x)
	local factorOfTen = 10^(3)
	return math.floor(x * factorOfTen + .5) / factorOfTen
end
local function minfile(file)
	local tasFile = HttpService:JSONDecode(file)
	local minTasFile = {}
	for t,data in ipairs(tasFile) do
		local minData = {}
		for key,val in pairs(data) do
			local minVal = nil
			if type(val) == "table" then
				minVal = {}
				for f,x in ipairs(val) do
					if type(x) == "number" then table.insert(minVal, round(x))
					else table.insert(minVal, x) end    
				end
			else
				minVal = round(val)
			end
			minData[key] = minVal
		end
		table.insert(minTasFile, minData)
	end
	return HttpService:JSONEncode(minTasFile)
end
-- ending line
local char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:wait()
local bb = game:service("VirtualUser")
game:service("Players").LocalPlayer.Idled:connect(function()
	bb:CaptureController()
	bb:ClickButton2(Vector2.new())
end)
-- new anticheat bypass all credits to altlexon
game.ReplicatedStorage.Remote.ReqCharVars.OnClientInvoke = function()
	return {}
end
getgenv().oof = false
local votemap = game.Players.LocalPlayer.PlayerGui.GameGui.VoteMap
local key = -game:GetService("ReplicatedStorage").Remote.ReqPasskey:InvokeServer()
function vote()
	wait(1)
	game:GetService("ReplicatedStorage").Remote.UpdMapVote:FireServer(key, 8, 0)
	if not game.Workspace.Multiplayer:WaitForChild("NewMap", 7) then
		game:GetService("ReplicatedStorage").Remote.UpdMapVote:FireServer(key, 2, 0)
	end
end
game.Players.PlayerAdded:Connect(function()
	if getgenv().autoleave == true then
		game.Players.LocalPlayer:Kick("Auto-Leave is enabled. So you were kicked because a player joined.")	
	end
end)
votemap.Changed:Connect(function(change)
	if change == "Visible" then
		if votemap.Visible == true and getgenv().oof == true then
			print("Voting..")
			wait()
			vote()
		end
	end
end)
print("Loaded!")
local lp = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local TS = game:GetService("TweenService")
local function Time(targetpos)
	local tme = (targetpos - lp.Character.HumanoidRootPart.Position).Magnitude / math.random(16, 20)
	return tme
end
local function tween(pos)
	local toof = TS:Create(lp.Character.HumanoidRootPart, TweenInfo.new(Time(pos), Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
		CFrame = CFrame.new(pos)
	})
	toof:Play()
	return toof
end

function oof()
	print(game.Workspace.Multiplayer:WaitForChild("Map",9e9).Name)
	wait()
	Map = workspace.Multiplayer.Map	

	if Map:FindFirstChild("Settings") ~= nil then
		print(Map.Settings.MapName.Value)
	end
	for i, v in pairs(Map:GetDescendants()) do
		if v:IsA("Part") and v:FindFirstChild("TouchInterest") ~= nil and v.Parent:IsA("Model") then
			local m = game:service("TweenService")
			local n = game.Players.LocalPlayer.Character.HumanoidRootPart
			local o = TweenInfo.new(.5, Enum.EasingStyle.Linear)
			local p = {CFrame = v.CFrame}
			m:Create(n, o, p):Play()
			firetouchinterest(lp.Character.HumanoidRootPart,v,1)
			wait()
			firetouchinterest(lp.Character.HumanoidRootPart,v,0)
			v:Destroy()
		end
	end
	if Map:FindFirstChild("ExitRegion", true) then
		local oos = tween(Map:FindFirstChild("ExitRegion", true).Position, Map:FindFirstChild("ExitRegion", true).CFrame)
		oos.Completed:wait()
		wait()
		Map:FindFirstChild("ExitRegion", true):Destroy()
		if getgenv().active == true then
			return
		end
	end
end

getgenv().active = false
task.spawn(function()
	while wait(1) do
		if getgenv().active == true then
			Map = workspace.Multiplayer.Map	
			for i, v in pairs(Map:GetDescendants()) do
				if v:IsA("Part") and v:FindFirstChild("TouchInterest") ~= nil and v.Parent ~= nil then
					local m = game:service("TweenService")
					local n = game.Players.LocalPlayer.Character.HumanoidRootPart
					local o = TweenInfo.new(.1, Enum.EasingStyle.Linear)
					local p = {CFrame = v.CFrame}
					m:Create(n, o, p):Play()
					firetouchinterest(n,v,0)	
					wait()
					firetouchinterest(n,v,1)	
					v:Destroy()
				end
			end
			wait()
			if Map:FindFirstChild("ExitRegion", true) == nil then
				repeat
					wait()
				until game.Workspace.Multiplayer:WaitForChild("OldMap")
				game.Players.LocalPlayer.Character.Humanoid.Health = 0
				game.Players.LocalPlayer.CharacterAdded:Wait()
				wait(.1)
				game:GetService("ReplicatedStorage").Remote.AddedWaiting:FireServer(-game:GetService("ReplicatedStorage").Remote.ReqPasskey:InvokeServer())
				wait(.3)
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.GameGui.Waiting.UI.Content.Buttons.MapVote.MouseButton1Click)) do
					v:Fire()
				end
			end
		else
			break
		end
	end
end)
local UIS = game:GetService'UserInputService'
local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()

local Notificatin = Hawk:Notification()

local Window = Hawk:Window("Hawk HUB | Flood Escape 2")
local Main = Window:Tab("Auto")
local Player = Window:Tab("Player")
local Blatant = Window:Tab("Blatant")
local Settings = Window:Tab("Settings")
local Credits = Window:Tab("Credits")

a = false

Player:Toggle("Specate Player Toggle",function(izle)
	if izle == true then
		a = true
	else
		a = false   
		workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character
	end
end)

Player:TextBox("Speactate Player","Plr Name",function(PlrName)
	workspace.CurrentCamera.CameraSubject = game:GetService("Players")[PlrName].Character
end)

getgenv().wow = true

getgenv().ui = true
Player:Slider("Walkspeed", 20, 100, function(t)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)
Player:Slider("JumpPower", 50, 200, function(t)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
end)

local save = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts["CL_MAIN_GameScript"]).takeAir
getgenv().godmode = false
spawn(function()
	while wait(.04) do
		if getgenv().godmode == true then
			getsenv(game:GetService("Players").LocalPlayer.PlayerScripts["CL_MAIN_GameScript"]).takeAir = function()
				return 0
			end
		else
			getsenv(game:GetService("Players").LocalPlayer.PlayerScripts["CL_MAIN_GameScript"]).takeAir = save
		end
	end
end)
Blatant:Toggle("Infinite Air", function(aanan)
	if aanan == true then
		clmain.newAlert("Infinite Air Enabled!", Color3.fromRGB(0, 255, 0))
		getgenv().godmode = true
	else
		clmain.newAlert("Infinite Air Disabled!", Color3.fromRGB(255, 0, 0))
		getgenv().godmode = false
	end
end)

getgenv().noclip = false
Blatant:Toggle("Noclip", function(zort)
	if zort == true then
		lp.Character:WaitForChild("Torso").CanCollide = getgenv().noclip
		lp.Character:WaitForChild("HumanoidRootPart").CanCollide = getgenv().noclip
		clmain.newAlert("Noclip Enabled!", Color3.fromRGB(0, 255, 0))
		getgenv().noclip = true
	else
		lp.Character:WaitForChild("Torso").CanCollide = getgenv().noclip
		lp.Character:WaitForChild("HumanoidRootPart").CanCollide = getgenv().noclip
		clmain.newAlert("Noclip Disabled!", Color3.fromRGB(255, 0, 0))
		getgenv().noclip = false
	end
end)
Blatant:Button("Lag Server", function()
	local key = -game:GetService("ReplicatedStorage").Remote.ReqPasskey:InvokeServer()
	for i = 1, 190, 1 do
		game:GetService("ReplicatedStorage").Remote.ConfirmItem:FireServer(key, 40)
	end
end)
Main:Toggle("Auto-Play", function(t)
	getgenv().play = t
end)
getgenv().play = false
task.spawn(function()
	while task.wait(1) do
		local S,r = pcall(function()
			if getgenv().play ~= false then
				loadstring(game:HttpGet('https://raw.githubusercontent.com/ImMejor35/Flood-GUI/main/TAS/TAS%20Player'))
			end
		end)
		if S ~= true then
			print(r)
		end
	end
end)
getgenv().infjump = false
Blatant:Toggle("Infinite Jump", function(t)
	infjump = not infjump
end)
UIS.InputBegan:connect(function(UserInput,Typed)
	if infjump == true and UserInput.KeyCode == Enum.KeyCode.Space or UserInput.KeyCode == Enum.KeyCode.ButtonA and not Typed then
		lp.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)
Main:Toggle("Auto-Farm (Buggy)", function(t)
	getgenv().active = t
end)
Main:Toggle("Auto-Vote", function(t)
	getgenv().oof = t
end)
Settings:Button("Rejoin", function()
	game:GetService("TeleportService"):Teleport(game:GetService("Players").LocalPlayer)
end)


local oldindex
oldindex = hookmetamethod(game, "__index", function(self, b)
	if tostring(self) == "HumanoidRootPart" and b == "Position" and not checkcaller() then
		if getgenv().swim == true then
			return Vector3.new(-23, -153, 0) -- position of lobby water
		else
			return oldindex(self, b) -- normal player position
		end
	end
	return oldindex(self, b)
end)
Settings:Toggle("Toggle Swim", function(breh)
	if breh == true then
		getgenv().swim = true
	else
		getgenv().swim = false
	end
end)
Settings:Button("Remove Water (TAS)", function()
	for i,v in pairs(game.Workspace:GetDescendants()) do
		if string.match(string.lower(v.Name),"water") then
			v:Destroy()
		end
	end
end)
Settings:Toggle("Auto-Leave", function(t)
	getgenv().autoleave = t
end)
Credits:Label("UI Lib By Hanki")
Credits:Label("New Anti-Kick by AltLexon#6917")
Credits:Label("TAS script by Voiz#5668")
Credits:Label("TAS File Minifier by iaan#8193")
Credits:Label("Everything else by Tomato")
wait()
if debugmode == true then
	clmain.newAlert("Hawk HUB Loaded in Debug Mode!",nil,nil,"rainbow")
	wait(1)
	clmain.newAlert("Credits To Tomato!",nil,nil,"rainbow")
else
	clmain.newAlert("Hawk HUB Loaded!",nil,nil,"rainbow")
	wait(1)
	clmain.newAlert("Credits To Tomato!",nil,nil,"rainbow")
end


--resets character to fix lag bug wow
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health = 0







