--Wait Game Load--
repeat task.wait() until game:IsLoaded() == true

-- Destroy GUI already exist --
if game:service'CoreGui':FindFirstChild("FinityUI") then game:service'CoreGui':FindFirstChild("FinityUI"):Destroy() end

--Anti Afk--
local a=game:GetService'VirtualUser'game:service"Players".LocalPlayer.Idled:connect(function()a:CaptureController()a:ClickButton2(Vector2.new())wait(2)end)

--------------------------------------------------------------------------


--Functions And Scripts
Players = game:GetService("Players")

if game:GetService("Workspace") then
	local manualgravity = game:GetService("Workspace").Gravity
	game:GetService("Workspace").Gravity = manualgravity
end

getgenv().infectauralol = nil
getgenv().hitauralol = nil
getgenv().toggleautocollectcoins = nil
getgenv().toggledisableincect = nil
getgenv().toggledisableantismilers = nil
getgenv().normaltoggle = nil
getgenv().InfiniteJumpToggle = nil

function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end

function SN(target)
	for i,v in pairs(game.Players:GetChildren())do
		if v.Name:lower():sub(1, #target) == target:lower() then
			return v.Name
		end
	end
end


--locals

local WS = game:GetService("Workspace")
local LP = game:GetService("Players").LocalPlayer
local HumanoidRootPartLocalp = LP.Character:FindFirstChild('HumanoidRootPart')--LP.Character:WaitForChild('HumanoidRootPart')

--loadstrings
local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/HawkLib.lua", true))()

local Window = Hawk:Window({
	ScriptName = "Hawk HUB | Infectious Smile",
	DestroyIfExists = true,
	Theme = "Dark"
})

Window:Close({
	visibility = true,
	Callback = function()
		Window:Destroy()
	end,
})
Window:Minimize({
	visibility = true,
	OpenButton = true,
	Callback = function()
	end,
})
local tab1 = Window:Tab("Main")
local tab2 = Window:Tab("Teleports")
local tab3 = Window:Tab("Player")
local tab4 = Window:Tab("Extra")
local tab5 = Window:Tab("Settings")
local tab6 = Window:Tab("Credits")

function checkInfectors()
	if game:GetService("Workspace"):FindFirstChild("Map"):FindFirstChild("Infectors") then
		return "DEVAMET"
	else
		return "DEVAMETME"
	end
end

function makeinfected()
	if checkInfectors() == "DEVAMET" then
		--game:GetService("InsertService"):FindFirstChild("Infectors"):Clone().Parent = game:GetService("Workspace"):FindFirstChild("Map")

		for _,v in pairs(game:GetService("Workspace"):FindFirstChild("Map"):FindFirstChild("Infectors"):GetDescendants()) do

			if v:IsA("TouchTransmitter") then
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) 
				wait()
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) 
				return
			end
		end
	end
end

tab1:Section("Inject")

tab1:Button("Inject","Injects",function()
	makeinfected()
end)

function bypass()
	pcall(function()
		for i, v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
			if v.Name == "AntiHack" then
				v:Destroy()
			end
		end
		for i, v in pairs(game:GetService("Workspace").Map:GetDescendants()) do
			if v.Name == "KillBricks" then
				v:Destroy()
			end
		end
	--[[ --old bypass
    if game:GetService("Workspace").Map:FindFirstChild("AntiHack") then
        game:GetService("Workspace").Map.AntiHack:Destroy()    
    end
    if game:GetService("Workspace"):FindFirstChild("Map"):FindFirstChild("KillBricks") then
        game:GetService("Workspace"):FindFirstChild("Map"):FindFirstChild("KillBricks"):Destroy()
    end
    ]]
	end)
end
bypass()
print("Bypassed AntiCheat.")
------------------------------------------------------------------
tab1:Line()

tab1:Button("Reset","Resets your character",function()
	game:GetService("Players").LocalPlayer.Character.Ragdoll.Ragdoll:FireServer()
end)

tab1:Button("Reset2","Resets your character by removing your head",function()
	game.Players.LocalPlayer.Character.Head:Destroy()
end)


function changeWalkSpeed(speed)
	if isNumber(speed) then
		getgenv().playerspeedtoggle = speed
		LP.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
	end
	wait()
	game:GetService("RunService").RenderStepped:Connect(function()
		for i,v in pairs(LP.Character:GetChildren()) do
			if v.Name == "Humanoid" then
				if isNumber(getgenv().playerspeedtoggle) then
					LP.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = getgenv().playerspeedtoggle
				else
					LP.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = getgenv().playerspeedtoggle
				end
			end
		end
	end)
end

tab1:Line()

tab3:Slider("WalkSpeed",16,200,function(speedo)
	changeWalkSpeed(speedo)
end)

tab3:Button("Player Speed 25","Sets your speed as 25",function()
	changeWalkSpeed(25)
end)

function changeJumpPower(jumppower)
	if isNumber(jumppower) then
		getgenv().playerjumptoggle = jumppower
		LP.Character:FindFirstChildOfClass('Humanoid').JumpPower = jumppower
	end
	wait()
	game:GetService("RunService").RenderStepped:Connect(function()
		for i,v in pairs(LP.Character:GetChildren()) do
			if v.Name == "Humanoid" then
				if isNumber(getgenv().playerjumptoggle) then
					LP.Character:FindFirstChildOfClass('Humanoid').JumpPower = getgenv().playerjumptoggle
				else
					LP.Character:FindFirstChildOfClass('Humanoid').JumpHeight = getgenv().playerjumptoggle
				end
			end
		end
	end)
end

tab3:Slider("JumpPower",40,200,function(jumpoo)
	changeJumpPower(jumpoo)
end)

tab3:Button("Player Jump 80","Sets your jumppower as 80",function()
	changeJumpPower(80)
end)

tab3:Slider("Gravity",0,200,function(gravity)
	if isNumber(gravity) then
		getgenv().playergravitytoggle = gravity
		game.Workspace.Gravity = gravity
	end
	wait()
	game:GetService("RunService").RenderStepped:Connect(function()
		for i,v in pairs(LP.Character:GetChildren()) do
			if v:FindFirstChildOfClass('Humanoid') then --if v.Name == "Humanoid" then
				if isNumber(getgenv().playergravitytoggle) then
					game.Workspace.Gravity = getgenv().playergravitytoggle
				else
					game.Workspace.Gravity = getgenv().playergravitytoggle
				end
			end
		end
	end)
end)

tab3:Line()

tab3:Toggle("Infinite Jump",true,function(state)
	getgenv().InfiniteJumpToggle = state

	game:GetService("UserInputService").JumpRequest:Connect(function()
		if getgenv().InfiniteJumpToggle == true then
			game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
		end
	end)
end)


function unequipTools()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = game:GetService("Players").LocalPlayer.Backpack
		end
	end
	wait()
	return "YEAH"
end

tab4:Button("OP Bat",function()
	if unequipTools() == "YEAH" then
		if game.Players.LocalPlayer.Backpack:FindFirstChild("Bat") then
			game.Players.LocalPlayer.Backpack.Bat.MaxUses:Destroy() game.Players.LocalPlayer.Backpack.Bat.Cooldown.Value = 0
		else
			print("you need to get bat")
		end
	end
end)

tab4:Button("OP Bottle",function()
	if unequipTools() == "YEAH" then
		if game.Players.LocalPlayer.Backpack:FindFirstChild("Bottle") then
			game.Players.LocalPlayer.Backpack.Bottle.MaxUses:Destroy() game.Players.LocalPlayer.Backpack.Bottle.Cooldown.Value = 0
		else
			print("you need to get bottle")
		end
	end
end)

tab4:Button("Bat Hitbox Size increase",function()
	local b = game:GetService("Players").LocalPlayer
	local c = game:GetService("RunService")
	b.Character:FindFirstChild("Humanoid"):UnequipTools()
	local e = b.Backpack:FindFirstChild("Bat")
	if not e then
		return;
	end
	if not e.BodyAttach:FindFirstChild("SelectionBox") then
		local a = Instance.new("SelectionBox", e.BodyAttach)
		a.Adornee = e.BodyAttach
	end
	e.Parent = b.Backpack
	e.BodyAttach.Transparency = 1
	e.BodyAttach.Size = Vector3.new(25, 25, 25) 
	e.BodyAttach.Massless = true
	e.Parent = b.Character
	for f = 1, 10 do
		b.Character.HumanoidRootPart.CFrame = d
		c.RenderStepped:Wait()
	end
end)

tab4:Line()

tab4:Button("Get All Items",function()
	local Weapon = {"Bat","BatCollection"}

	if game:GetService("Workspace").Map.HumanBase.Vendor:FindFirstChild(Weapon[2]) and game:GetService("Workspace").Map.HumanBase.Vendor:FindFirstChild(Weapon[2]):FindFirstChild("ClickDetector") then
		local oldframe =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local count = 0

		repeat
			count = count + 1
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HumanBase.Vendor[Weapon[2]].HitBox.CFrame
			wait(0.1)
			fireclickdetector(workspace.Map.HumanBase.Vendor[Weapon[2]].ClickDetector)
		until game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon[1]) or count == 3 or game.Players.LocalPlayer.Character.Humanoid.Health == 0 
		wait()

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldframe
		print("Success")
	end
	wait()
	local Weapon = {"Bottle","BottleCollection"}

	if game:GetService("Workspace").Map.HumanBase.Vendor:FindFirstChild(Weapon[2]) and game:GetService("Workspace").Map.HumanBase.Vendor:FindFirstChild(Weapon[2]):FindFirstChild("ClickDetector") then
		local oldframe =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local count = 0

		repeat
			count = count + 1
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HumanBase.Vendor[Weapon[2]].HitBox.CFrame
			wait(0.1)
			fireclickdetector(workspace.Map.HumanBase.Vendor[Weapon[2]].ClickDetector)
		until game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon[1]) or count == 3 or game.Players.LocalPlayer.Character.Humanoid.Health == 0 
		wait()

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldframe
		print("Success")
	end
end)

tab4:Button("Get Bat",function()
	local Weapon = {"Bat","BatCollection"}

	if game:GetService("Workspace").Map.HumanBase.Vendor:FindFirstChild(Weapon[2]) and game:GetService("Workspace").Map.HumanBase.Vendor:FindFirstChild(Weapon[2]):FindFirstChild("ClickDetector") then
		local oldframe =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local count = 0

		repeat
			count = count + 1
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HumanBase.Vendor[Weapon[2]].HitBox.CFrame
			wait(0.1)
			fireclickdetector(workspace.Map.HumanBase.Vendor[Weapon[2]].ClickDetector)
		until game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon[1]) or count == 3 or game.Players.LocalPlayer.Character.Humanoid.Health == 0 
		wait()

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldframe
		print("Success")
	end
end)

tab4:Button("Get Bottle",function()
	local Weapon = {"Bottle","BottleCollection"}

	if game:GetService("Workspace").Map.HumanBase.Vendor:FindFirstChild(Weapon[2]) and game:GetService("Workspace").Map.HumanBase.Vendor:FindFirstChild(Weapon[2]):FindFirstChild("ClickDetector") then
		local oldframe =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local count = 0

		repeat
			count = count + 1
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.HumanBase.Vendor[Weapon[2]].HitBox.CFrame
			wait(0.1)
			fireclickdetector(workspace.Map.HumanBase.Vendor[Weapon[2]].ClickDetector)
		until game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon[1]) or count == 3 or game.Players.LocalPlayer.Character.Humanoid.Health == 0 
		wait()

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldframe
		print("Success")
	end
end)

tab4:Line()

function getHitTools()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name == "Bat" or "Bottle" then
				return v.Name
			end
		end
	end
	wait()
end

tab4:Toggle("Hit Aura",false,function(state)
	getgenv().hitauralol = state

	spawn(function()
		while getgenv().hitauralol do wait(0)
			local Players = game:GetService("Players")
			local LocalPlayer = Players.LocalPlayer
			local DISTANCE_THRESHOLD = 5

			local function isPlayerNearby(player)
				local localCharacter = LocalPlayer.Character
				local otherCharacter = player.Character
				if localCharacter and otherCharacter then
					local localPosition = localCharacter.PrimaryPart.Position
					local otherPosition = otherCharacter.PrimaryPart.Position
					local distance = (localPosition - otherPosition).Magnitude
					if distance <= DISTANCE_THRESHOLD then
						return true
					end
				end
				return false
			end

			local function fireIfNearby(player)
				if isPlayerNearby(player) then

					if getHitTools() == "Bat" then
						for i = 1,5 do 
							game:GetService("Players").LocalPlayer.Character.Bat.SwingEvent:FireServer()
						end
					elseif getHitTools() == "Bottle" then
						for i = 1,5 do 
							game:GetService("Players").LocalPlayer.Character.Bottle.SwingEvent:FireServer()
						end
					end

					--print(player.Name) --debug mode
				end
			end

			local function checkProximity()
				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= LocalPlayer then
						fireIfNearby(player)
					end
				end
			end

			checkProximity()

		end
	end)
end)

tab4:Toggle("Infect Aura",false,function(state)
	getgenv().infectauralol = state

	spawn(function()
		while getgenv().infectauralol do wait(0)
			local Players = game:GetService("Players")
			local LocalPlayer = Players.LocalPlayer
			local DISTANCE_THRESHOLD = 5

			local function isPlayerNearby(player)
				local localCharacter = LocalPlayer.Character
				local otherCharacter = player.Character
				if localCharacter and otherCharacter then
					local localPosition = localCharacter.PrimaryPart.Position
					local otherPosition = otherCharacter.PrimaryPart.Position
					local distance = (localPosition - otherPosition).Magnitude
					if distance <= DISTANCE_THRESHOLD then
						return true
					end
				end
				return false
			end

			local function fireIfNearby(player)
				if isPlayerNearby(player) then

					for i = 1,5 do 
						game:GetService("Players").LocalPlayer.Character.Infected.InfectEvent:FireServer()
					end

					--print(player.Name) --debug mode
				end
			end

			local function checkProximity()
				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= LocalPlayer and game.Players.LocalPlayer.Team.Name == "Smiling" then
						fireIfNearby(player)
					end
				end
			end

			checkProximity()

		end
	end)
end)

tab4:Toggle("Auto Collect Coins",false,function(state)
	getgenv().toggleautocollectcoins = state
	--functions
	local function checkhumpart() --not working
		for i,v in pairs(LP.Character:GetChildren()) do
			if v.Name == "HumanoidRootPart" then
			else
				task.wait()
			end
		end
	end
	wait()
	spawn(function()
		while getgenv().toggleautocollectcoins do wait(0) -- loop
			--local characterCframe = LP.Character:WaitForChild('HumanoidRootPart').CFrame
			wait()
			checkhumpart()
			for i,v in pairs(game:GetService("Workspace").Map.System:GetDescendants()) do 
				if v.Name == "SmileCoin" then 
					v.CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame
				end
			end
			for i,v in pairs(game:GetService("Workspace").Particles:GetDescendants()) do 
				if v.Name == "SmileCoin" then 
					v.CFrame =game:GetService("Players").LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame
				end
			end
		end
	end)
end)

tab4:Toggle("Disable Injectors",false,function(state)
	getgenv().toggledisableincect = state
	spawn(function()
		while getgenv().toggledisableincect == true or false do wait(0)
			if getgenv().toggledisableincect == true then
				for _,v in pairs(game.workspace:GetDescendants()) do

					if string.find(v.Name,"Infector") then

						for a,n in pairs(v:GetChildren()) do
							if n:IsA("Part") and n.CanTouch == true then
								n.CanTouch = false
								n.CanQuery = false
							end
						end
					end
				end
			elseif getgenv().toggledisableincect == false then
				--getgenv().toggledisableincect = nil
				for _,v in pairs(game.workspace:GetDescendants()) do

					if string.find(v.Name,"Infector") then

						for a,n in pairs(v:GetChildren()) do
							if n:IsA("Part") and n.CanTouch == false then
								n.CanTouch = true
								n.CanQuery = true
							end
						end
					end
				end
				break;
			end
		end
	end)
end)

tab4:Toggle("Disable Smile Killer Parts",false,function(state)
	getgenv().toggledisableantismilers = state
	spawn(function()
		while getgenv().toggledisableantismilers == true or false do wait(0)
			if getgenv().toggledisableantismilers == true then
				for _,v in pairs(game.workspace:GetDescendants()) do

					if string.find(v.Name,"AntiSmiler") then

						for a,n in pairs(v:GetChildren()) do
							if n:IsA("Part") and n.CanTouch == true then
								n.CanTouch = false
								n.CanQuery = false
							end
						end
					end
				end
			elseif getgenv().toggledisableantismilers == false then
				--getgenv().toggledisableincect = nil
				for _,v in pairs(game.workspace:GetDescendants()) do

					if string.find(v.Name,"AntiSmiler") then

						for a,n in pairs(v:GetChildren()) do
							if n:IsA("Part") and n.CanTouch == false then
								n.CanTouch = true
								n.CanQuery = true
							end
						end
					end
				end
				break;
			end
		end
	end)
end)

tab1:Toggle("Disable Final Door",false,function(state)
	if state then
		game:GetService("Workspace").Map.ConstantTerrain.KillGateSwitcher.Gate.CanTouch = false
		game:GetService("Workspace").Map.ConstantTerrain.KillGateSwitcher.Gate.CanQuery = false
	else
		game:GetService("Workspace").Map.ConstantTerrain.KillGateSwitcher.Gate.CanTouch = true
		game:GetService("Workspace").Map.ConstantTerrain.KillGateSwitcher.Gate.CanQuery = true	
	end
end)

tab2:Button("Go to Spawn",function()
	if game:GetService("Players").LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
		local Player = game.Players.LocalPlayer

		for i,v in pairs(game:GetService("Workspace").Map.Spawns:GetChildren()) do
			if Player.Character.Humanoid.Sit == true then
				Player.Character.Humanoid.Sit = false
			end
			if v.Name == "SpawnLocation" then
				indexlol = math.random(5,5)

				if i == indexlol then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,3.8,0) 
				else if i == indexlol then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0,3.8,0)
					end
				end
			end
		end
	end
end)


local Teleports = {
	["Final Room"] = CFrame.new(-346, 3, 23.5, 1, 0, 0, 0, 1, 0, 360, 0, 1);
}

for i,v in pairs(Teleports) do
	tab2:Button(i, function()
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
			game.Players.LocalPlayer.Character:PivotTo(v)
			--game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v)
		end
	end)
end


tab5:Button("Delete This Gui",function()
	Hawk:Destroy()
end)

tab5:Button("Rejoin",function()
	game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService'Players'.LocalPlayer)
end)

tab5:KeyBind("UI Keybind","Q",function()
	Hawk:ToggleUI()
end)


local notifica = Hawk:AddNotifications()

notifica:Notification("Loaded!","Infectious Smile","Done",2)
wait()
notifica:Notification("By falpearx",":D","Done",2)
wait()



if getcustomasset or syn then
	tab6:Image("Falpearx","Hawk",{
		Name = "Alex",
		FileName = "falpearx.webm",
		CheckFile = false,
		ImageLink = "https://raw.githubusercontent.com/xHzCihan/IDream/main/Owners/Egw.webm",
		ImageColor = Color3.fromRGB(255, 255, 255),
		Stroke = Color3.fromRGB(255, 255, 255),
		Volume = 1,
		Description = {"Scripter","Discord: falpearx"}
	})

	tab6:Image("Spyro","Hawk",{
		Name = "Spyro (Hanki)",
		FileName = "Spyro.webm",
		CheckFile = false,
		ImageLink = "https://raw.githubusercontent.com/xHzCihan/IDream/main/Owners/SpyroSmirk.webm",
		ImageColor = Color3.fromRGB(255, 255, 255),
		Stroke = Color3.fromRGB(140, 63, 218),
		Description = {"Main Scripter & UI Developer","Discord: __spyro"}
	})
else
	tab6:Image("Falpearx","Hawk",{
		Name = "Alex",
		ImageLink = 11799911797,
		FileName = "falpearx.webm",
		CheckFile = false,
		ImageColor = Color3.fromRGB(255, 255, 255),
		Stroke = Color3.fromRGB(255, 255, 255),
		Volume = 1,
		Description = {"Scripter","Discord: falpearx"}
	})

	tab6:Image("Spyro","Hawk",{
		Name = "Spyro (Hanki)",
		FileName = "Spyro.webm",
		CheckFile = false,
		ImageLink = 12802604422,
		ImageColor = Color3.fromRGB(255, 255, 255),
		Stroke = Color3.fromRGB(255, 255, 255),
		Description = {"Main Scripter & UI Developer","Discord: __spyro"}
	})
end
