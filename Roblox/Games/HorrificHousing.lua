--loadstring
local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/HawkLib.lua", true))()

--------------------------------------------------------------------------

--Creating Window
local Window = Hawk:Window({
	ScriptName = "Hawk HUB | Horrific Housing",
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


--Wait Game Load--
repeat task.wait() until game:IsLoaded() == true

-- Destroy GUI already exist --
if game:service'CoreGui':FindFirstChild("FinityUI") then game:service'CoreGui':FindFirstChild("FinityUI"):Destroy() end

--Anti Afk--
local a=game:GetService'VirtualUser'game:service"Players".LocalPlayer.Idled:connect(function()a:CaptureController()a:ClickButton2(Vector2.new())wait(2)end)


--------------------------------------------------------------------------
local player = game:GetService("Players").LocalPlayer
local plrs = game:GetService("Players")
local lighting = game:GetService("Lighting")
local replicatedStorage = game:GetService("ReplicatedStorage")
local Finity = loadstring(game:HttpGet("https://github.com/bloodball/UI-Librarys/raw/main/Finity%20UI%20Lib"))()
local esp = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()


local catChar = Window:Tab("Main")
local catChar0 = Window:Tab("Free Items")
local catChar01 = Window:Tab("Cosmetics")
local catChar1 = Window:Tab("Random Fetures")
local catChar001 = Window:Tab("ESP")
local Settings = Window:Tab("Settings")
local Credits = Window:Tab("Credits")

local EGGS = {"Furniture", "Ornament", "Spooky", "Death", "House", "Winter", "Easter", "Autumn", "WinterChest", "HouseChest"}
local OBJECTS_TO_IGNORE = {"Plate", "NpcSpawn", "PlayerSpawn", "House", "AcidRainFall", "MiniTaco", "Taco", "DuelArena", "snow", "Part", "Snow", "Pavement", "slime", "PatchOfGrass"}
local PLATES_TO_IGNORE = {"Supermarket", "road", "Pavement", "PatchOfGrass"}
local AUDIO_BLACKLIST = {"Climbing", "Died", "GettingUp", "Swimming", "Jumping", "Landing", "Splash", "FreeFalling", "Running"}
-- vars
local pets = {}
local ornaments = {}
local deatheffects = {"SnapDeath", "RagdollDeath", "FadeDeath", "BlackholeDeath"}
local furniture = {}
local materials = {}
local colours = {}
local houseConfig = {
	currentMaterial = "SmoothPlastic",
	reflectance = 0,
	transparency = 0
}
local plr = plrs.LocalPlayer
local plrGui = plr.PlayerGui
local camera = game.Workspace.CurrentCamera
local listeners = {}
local toDestroy = {}
esp.Names = true
esp.TeamColor = false
esp.Color = Color3.fromRGB(0, 255, 0)

-- functions
local function resetLighting()
	print("resetting lighting...")
	lighting.Atmosphere.Density = 0.4
	lighting.TimeOfDay = "-09:00:00"
	lighting.FogEnd = 250
	game.Workspace.Terrain.Clouds.Color = Color3.new(1, 1, 1)
end
local function toggleDestroyWhenAddedToWorkspace(name, string, toggle, boolean)
	if toggle then
		if
			workspace:FindFirstChild(name, true) and
			not workspace:FindFirstChild(name, true):IsA("RemoteEvent") and
			not workspace:FindFirstChild(name, true):IsA("RemoteFunction")
		then
			workspace:FindFirstChild(name, true):Destroy()
		end
		if table.find(toDestroy, name) then
			warn(name.." was already in toDestroy, returning")
			return
		end
		table.insert(toDestroy, name)
	else
		if not table.find(toDestroy, name) then
			warn(name.." was not in toDestroy")
			return
		end
		table.remove(toDestroy, table.find(toDestroy, name))
	end
end
local function itemEsp(item)
	task.wait(0.02)
	local line = Drawing.new("Line")
	line.Visible = false
	line.Color = Color3.fromRGB(255, 0, 0)
	line.Thickness = 1.5
	line.Transparency = 1
	local text = Drawing.new("Text")
	text.Visible = false
	text.Size = 18
	text.Color = Color3.fromRGB(255, 0, 0)
	text.Outline = true
	text.Center = true
	text.Transparency = 1
	text.Text = item.Name
	local part
	if item:IsA("Model") and not item.PrimaryPart then
		-- grab random part or smth idk
		local function randomPart()
			task.wait()
			part = item:GetChildren()[math.random(#item:GetChildren())]
			if not part:IsA("BasePart") or not part:IsA("Model") then
				randomPart()
			end
		end
		randomPart()
	end
	local function draw()
		local stepped
		stepped = game:GetService("RunService").RenderStepped:Connect(function()
			if objEspEnabled == true then
				if item:FindFirstAncestor("Workspace") then
					local vector, onScreen
					if item:IsA("Model") and item.PrimaryPart then
						vector, onScreen = camera:worldToViewportPoint(item.PrimaryPart.Position)
					elseif item:IsA("Model") and not item.PrimaryPart then
						vector, onScreen = camera:worldToViewportPoint(part.Position)
					elseif item:IsA("Model") and #item:GetChildren() == 0 then
						line.Visible = false
						text.Visible = false
						line:Remove()
						text:Remove()
						line = nil
						text = nil
						stepped:Disconnect()
						stepped = nil
						draw = nil
						return
					elseif item:IsA("BasePart") or item:IsA("MeshPart") then
						vector, onScreen = camera:worldToViewportPoint(item.Position)
					end
					if onScreen then
						line.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y) --Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2) * 2 / 3 ?
						line.To = Vector2.new(vector.X, vector.Y)
						text.Position = Vector2.new(vector.X, vector.Y)
						line.Visible = true
						text.Visible = true
					else
						line.Visible = false
						text.Visible = false
					end
				else
					line.Visible = false
					text.Visible = false
					line:Remove()
					text:Remove()
					line = nil
					text = nil
					stepped:Disconnect()
					stepped = nil
					draw = nil
					return
				end
			else
				line.Visible = false
				text.Visible = false
				line:Remove()
				text:Remove()
				line = nil
				text = nil
				stepped:Disconnect()
				stepped = nil
				draw = nil
				return
			end
		end)
	end
	coroutine.wrap(draw)()
end
local function findObjects(plate)
	if table.find(PLATES_TO_IGNORE, plate.Name) == nil then
		for _, child in pairs(plate:GetChildren()) do
			if table.find(OBJECTS_TO_IGNORE, child.Name) == nil then
				itemEsp(child)
			end
		end
		plate.ChildAdded:Connect(function(child)
			if table.find(OBJECTS_TO_IGNORE, child.Name) == nil then
				itemEsp(child)
			end
		end)
	end
end
local function loopThruPlates()
	if not game.Workspace:FindFirstChild("Plates") then error("plates folder does not exist in workspace, make sure it is in workspace before running loopThruPlates()") end -- expect plates folder to exist
	for _, plate in pairs(game.Workspace:FindFirstChild("Plates"):GetChildren()) do
		findObjects(plate)
	end
end
workspace.DescendantAdded:Connect(function(descendant)
	if table.find(toDestroy, descendant.Name) and
		not descendant:IsA("RemoteEvent") and
		not descendant:IsA("RemoteFunction")
	then
		task.wait()
		print("destroying "..descendant.Name)
		descendant:Destroy()
	end
end)
--------------------------------------------------------------------------
--catChar


local secChar00 = catChar:Section("Mods")


local secChar01 = catChar01:Section("Cosmetics")

local secChar1 = catChar0:Section("Free items")

local secChar2 = catChar1:Section("Random Fetures")

local secChar001 = catChar001:Section("ESP")

local SettingsSector = Settings:Section("Settings")

local CreditsSector = Credits:Section("Credits")



--Creating Notifications
local Notifications = Hawk:AddNotifications()

-----------------------------------------

Notifications:Notification("Horrific Housing","Made By falpearx","Done",1)
wait()
Notifications:Notification("Horrific Housing","Have Fun ;)","Done",1)



secChar00:Button("Espace Portal",function()
	if not workspace:FindFirstChild("Portal") then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Hey!";
			Text = "There needs to be a black hole spawned in for this to work"; -- Baslık
			Duration = 10; -- Ekrandan Gitme Hızı
		})
		return
	end
	local portal = workspace.Portal:FindFirstChild("EscapePortal")
	if firetouchinterest then
		firetouchinterest(plr.Character.Head, portal, 1)
		task.wait()
		firetouchinterest(plr.Character.Head, portal, 0)
	else
		plr.Character.HumanoidRootPart.CFrame = portal.CFrame
	end
end)

secChar00:Button("Inf Flute","Use infinite flute",function()
	local args = {[1] = 0}
	game:GetService("Players").LocalPlayer.Character.Flute.Remote:FireServer(unpack(args))
end)

secChar00:Toggle("Anti Sans",false,function(state)
	toggleDestroyWhenAddedToWorkspace("GasterBlaster", state)
end)

secChar00:Button("Anti Gun Damage",function()
	replicatedStorage.damageMe:Destroy()
end)

secChar00:Toggle("Show Player Health",false,function(state)
	if state then
		listeners.charAdded = {}
		for _, plr in pairs(game:GetService("Players"):GetPlayers()) do
			if plr.Character.Humanoid then
				plr.Character.Humanoid.HealthDisplayDistance = math.huge
			end
			local added = plr.CharacterAdded:Connect(function(char)
				char:WaitForChild("Humanoid").HealthDisplayDistance = math.huge
			end)
			table.insert(listeners.charAdded, added)
		end
	else
		for _, plr in pairs(game:GetService("Players"):GetPlayers()) do
			if plr.Character and plr.Character:FindFirstChild("Humanoid") then
				plr.Character.Humanoid.HealthDisplayDistance = 100
				plr.Character.Humanoid.HealthDisplayType = Enum.HumanoidHealthDisplayType.AlwaysOn
			end
		end
		if listeners.charAdded then
			for _, connection in pairs(listeners.charAdded) do
				connection:Disconnect()
				connection = nil
			end
		end
	end
end)

secChar00:Toggle("No melee weapon cooldown",nil, function(state)
	if state then
		listeners.noCooldown = game:GetService("UserInputService").InputBegan:Connect(function(input, gpe)
			if gpe == true then return end
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				for _, item in pairs(plr.Character:GetChildren()) do
                    --[[if table.find(weapons, item.Name) then
                        item.Event:FireServer()
                    end--]]
					if item:IsA("Tool") then
						if item:FindFirstChild("Event") then
							item.Event:FireServer()
						elseif item:FindFirstChild("Remote") then
							item.Remote:FireServer()
						end
					end
				end
			end
		end)
	else
		if listeners.noCooldown then listeners.noCooldown:Disconnect() end
	end
end)

local cheatbox = secChar00:Toggle("Anti maintenance", nil, function(state)
	if state then
		listeners.outageListener = plrGui.ChildAdded:Connect(function(child) -- expensive
			if child.Name == "MaintenanceUi" then
				task.wait()
				child:Destroy()
			end
		end)
	else
		if listeners.outageListener then listeners.outageListener:Disconnect() end
	end
end)

local cheatbox = secChar00:Toggle("Anti paranoia",nil, function(state)
	if state then
		local atmosphere = lighting.Atmosphere
		resetLighting()
		listeners.paranoia = atmosphere:GetPropertyChangedSignal("Density"):Connect(function()
			if math.floor(atmosphere.Density * 10) == 8 then
				resetLighting()
			end
		end)
	else
		if listeners.paranoia then listeners.paranoia:Disconnect() end
	end
end)

local cheatbox = secChar00:Toggle("Delete Lava",nil, function(state)
	toggleDestroyWhenAddedToWorkspace("LavaPlate", state)
end)

local cheatbox = secChar00:Toggle("Delete sweeper",nil, function(state)
	toggleDestroyWhenAddedToWorkspace("Spinner", state)
end)

local cheatbox = secChar00:Toggle("Delete flood",nil, function(state)
	toggleDestroyWhenAddedToWorkspace("Kill", state)
end)

local cheatbox = secChar00:Toggle("Delete ice spike",nil, function(state)
	toggleDestroyWhenAddedToWorkspace("spike", state)
end)

local cheatbox = secChar00:Toggle("Delete Slime",nil, function(state)
	toggleDestroyWhenAddedToWorkspace("slime", state)
end)

local cheatbox = secChar00:Toggle("Delete gas",nil, function(state)
	toggleDestroyWhenAddedToWorkspace("Gas", state)
end)

local cheatbox = secChar00:Toggle("Safety net",nil, function(state)
	if state then
		local part = Instance.new("Part")
		part.Size = Vector3.new(500, 1, 500)
		part.Position = Vector3.new(0, -5, 0)
		part.Anchored = true
		part.Transparency = 1
		part.Name = "safety net"
		part.Parent = game.Workspace
	else
		if not game.Workspace:FindFirstChild("safety net") then return end
		game.Workspace:FindFirstChild("safety net"):Destroy()
	end
end)

local cheatbox = secChar00:Toggle("Auto collect souls",nil, function(state)
	if state then
		if not firetouchinterest then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Hey!";
				Text = "Unsupported exploit: missing firetouchinterest"; 
				Duration = 10; 
			})
			return
		end
		listeners.soulAutoCollect = workspace.Souls.ChildAdded:Connect(function(child)
			if child.Name == "Soul" then
				firetouchinterest(plr.Character.Head, child, 1)
				task.wait()
				firetouchinterest(plr.Character.Head, child, 0)
			end
		end)
	end
end)
local secChar0 = catChar:Section("Monor")
local cheatbox = secChar0:Button("Free ImMortal Bosst", function()
	local args = {[1] = 1}
	workspace.Plates.Reward.remote:FireServer(unpack(args))
end)

local cheatbox = secChar0:Button("Free Mine", function()
	local args = {[1] = 2}
	workspace.Plates.Reward.remote:FireServer(unpack(args))
end)

local cheatbox = secChar0:Button("Free 10 Hp Boost", function(state)
	local args = {[1] = 3}
	workspace.Plates.Reward.remote:FireServer(unpack(args))
end)


local cheatbox = secChar2:Button("Grand Prize", function(state)
	local event = game:GetService("ReplicatedStorage").GiveGrandPrize
	event:FireServer()
end)

local cheatbox = secChar2:Button("KO Sword", function(state)
	local anvilExists
	for _, v in pairs(game.Workspace.Plates:GetChildren()) do
		if v:FindFirstChild("Anvil") then
			anvilExists = true
		end
	end
	if not anvilExists then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Hey!";
			Text = "An anvil needs to be spawned in for this to work"; -- Alt Mesaj
			Duration = 10; -- Ekrandan Gitme Hızı
		})
		return
	end
	replicatedStorage.EventRemotes.ForgeUltimateSword:FireServer("Cloner", "Cloner", "Cloner")
end)

local cheatbox = secChar2:Button("Delete all spleef tiles", function(state)
	if not firetouchinterest then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Hey!";
			Text = "Unsupported exploit: missing firetouchinterest"; -- Alt Mesaj
			Duration = 10; -- Ekrandan Gitme Hızı
		})
		return
	end
	if game.Workspace:FindFirstChild("spleef gamemode") then
		for _, tile in ipairs(game:GetService("Workspace")["spleef gamemode"]:GetChildren()) do
			firetouchinterest(plr.Character.Head, tile, 1)
			firetouchinterest(plr.Character.Head, tile, 0)
		end
	end
end)

local cheatbox = secChar2:Button("Trigger all mines", function(state)
	if not firetouchinterest then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Hey!";
			Text = "Unsupported exploit: missing firetouchinterest"; -- Alt Mesaj
			Duration = 10; -- Ekrandan Gitme Hızı
		})
	end
	for _, item in pairs(workspace:GetChildren()) do
		if item.Name == "Handle" and item:FindFirstChild("Beep") then
			firetouchinterest(plr.Character.Head, item, 1)
			task.wait()
			firetouchinterest(plr.Character.Head, item, 0)
		end
	end
end)

local cheatbox = secChar2:Button("Open All Doors", function(state)
	if not fireclickdetector then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Hey!"; -- Baslık
			Text = "Unsupported exploit: missing fireclickdetector."; -- Alt Mesaj üf alttan vurdun :flushed:
			Duration = 10; -- Ekrandan Gitme Hızı sü
		})
	end
	for _, door in pairs(workspace:GetDescendants()) do
		if door.Name == "Doors" then
			fireclickdetector(door.ClickDetector)
		end
	end
end)


local cheatbox = secChar001:Toggle("Player ESP",nil, function(state)
	esp:Toggle(state)
end)

local cheatbox = secChar001:Toggle("Player ESP tracers",nil, function(state)
	esp.Tracers = state
end)

local cheatbox = secChar001:Toggle("Object ESP",nil, function(state)
	if state then
		if not Drawing then
			ui.Banner({
				Text = "Unsupported exploit: missing Drawing" -- artık bunu desteklemeyen exploitde gitsin anasını desteklesin
			})
			return
		end
		objEspEnabled = true
		if game.Workspace:FindFirstChild("Plates") then
			loopThruPlates()
		end
		listeners.plateAdded = game.Workspace.ChildAdded:Connect(function(child) -- "expensive" i say as i add yet another workspace listener evet bende öyle diyecektim tamda bu adam çaldı
			if child.Name == "Plates" then
				task.wait(7)
				loopThruPlates()
			end
		end)
	else
		objEspEnabled = false
		if listeners.plateAdded then listeners.plateAdded:Disconnect() end
	end
end)

local cheatbox = secChar2:Button("Open Vending Machine", function(state)
	if not fireclickdetector then
		game.StarterGui:SetCore("SendNotification", {
			Title = "Hey!";
			Text = "Unsupported exploit: missing fireclickdetector."; -- Baslık çok doğru uwu
			Duration = 10; -- Ekrandan Gitme Hızı Powered By MoonSegs
		})
	end
	local detector = workspace.OtherObjects.OpenVendingMachine.OpenVendingMachine.ClickDetector
	detector.MaxActivationDistance = 1000
	fireclickdetector(detector)
	detector.MaxActivationDistance = 15
end)

local cheatbox = secChar1:Button("Give all obtainable items", function(state)
	for i = 1, 200, 1 do
		for _, v in pairs(EGGS) do
			replicatedStorage.ShopPurchase:FireServer(1e-59, v)
		end
	end
	replicatedStorage.ShopPurchase:FireServer(1e-59, "LunarBundle")
	replicatedStorage.ShopPurchase:FireServer(1e-59, "HeartBalloons")
end)

local cheatbox = secChar2:Button("Potion", function(state)
	local A_1 = "Pass"
	local event = game:GetService("ReplicatedStorage").EventRemotes.Potion
	event:FireServer(A_1)
	local A_1 = "Drink"
	local event = game:GetService("ReplicatedStorage").EventRemotes.Potion
	event:FireServer(A_1)
end)

local cheatbox = secChar2:Button("Invisible House", function(state)
	local A_1 = Color3.new(0, 0, 1)
	local A_2 = "ForceField"
	local A_3 = 1
	local event = game:GetService("ReplicatedStorage").HouseColour
	event:FireServer(A_1, A_2, A_3)
end)

local cheatbox = secChar1:Button("Furniture", function(state)
	local A_1 = 1e-59
	local A_2 = "Furniture"
	local event = game:GetService("ReplicatedStorage").ShopPurchase
	event:FireServer(A_1, A_2)
end)

local cheatbox = secChar1:Button("Ornament", function(state)
	local A_1 = 1e-59
	local A_2 = "Ornament"
	local event = game:GetService("ReplicatedStorage").ShopPurchase
	event:FireServer(A_1, A_2)
end)

local cheatbox = secChar1:Button("Spooky", function(state)
	local A_1 = 1e-59
	local A_2 = "Spooky"
	local event = game:GetService("ReplicatedStorage").ShopPurchase
	event:FireServer(A_1, A_2)
end)

local cheatbox = secChar1:Button("Death", function(state)
	local A_1 = 1e-59
	local A_2 = "Death"
	local event = game:GetService("ReplicatedStorage").ShopPurchase
	event:FireServer(A_1, A_2)
end)

local cheatbox = secChar1:Button("House", function(state)
	local A_1 = 1e-59
	local A_2 = "HouseChest"
	local event = game:GetService("ReplicatedStorage").ShopPurchase
	event:FireServer(A_1, A_2)
end)

local cheatbox = secChar1:Button("Egg", function(state)
	local A_1 = 1e-59
	local A_2 = "Egg"
	local event = game:GetService("ReplicatedStorage").ShopPurchase
	event:FireServer(A_1, A_2)
end)

local cheatbox = secChar1:Button("Winter", function(state)
	local A_1 = 1e-59
	local A_2 = "WinterChest"
	local event = game:GetService("ReplicatedStorage").ShopPurchase
	event:FireServer(A_1, A_2)
end)

local cheatbox = secChar1:Button("Easter", function(state)
	local A_1 = 1e-59
	local A_2 = "Easter"
	local event = game:GetService("ReplicatedStorage").ShopPurchase
	event:FireServer(A_1, A_2)
end)

local cheatbox = secChar1:Button("Autumn", function(state)
	local A_1 = 1e-59
	local A_2 = "Autumn"
	local event = game:GetService("ReplicatedStorage").ShopPurchase
	event:FireServer(A_1, A_2)
end)

local cheatbox = secChar1:Button("Heart Balloons", function(state)
	local A_1 = 1e-59
	local A_2 = "HeartBalloons"
	local event = game:GetService("ReplicatedStorage").ShopPurchase
	event:FireServer(A_1, A_2)
end)

local cheatbox = secChar1:Button("Lunar", function(state)
	local A_1 = 1e-59
	local A_2 = "LunarBundle"
	local event = game:GetService("ReplicatedStorage").ShopPurchase
	event:FireServer(A_1, A_2)
end)

for _, v in ipairs(replicatedStorage.Pets:GetChildren()) do
	table.insert(pets, v.Name)
end
local cheatbox = secChar01:Dropdown("Pets", pets, function(state)
	for i, v in next, pets do
		if state == v then
			replicatedStorage.PetChange:FireServer(state)
		end
	end
end)

for _, v in ipairs(replicatedStorage.Ornaments:GetChildren()) do
	table.insert(ornaments, v.Name)
end

local cheatbox = secChar01:Dropdown("Ornaments", ornaments, function(state)
	for i, v in next, ornaments do
		if state == v then
			replicatedStorage.OrnamentChanged:FireServer(tostring(v))
		end
	end
end)


for _, v in ipairs(replicatedStorage.Furniture:GetChildren()) do
	table.insert(furniture, v.Name)
end

local cheatbox = secChar01:Dropdown("Furnitures", furniture, function(state)
	for i, v in next, furniture do
		if state == v then
			replicatedStorage.FurnitureChanged:FireServer(tostring(v))
		end
	end
end)

secChar01:Toggle("DeathEffect",false, function(state)
	game:GetService("ReplicatedStorage").EquipDeathEffect:FireServer(state)
end)

secChar01:TextBox("House Transparency (default 0)","Value",function(txt)
	local number = tonumber(txt)
	if number then
		if number > 1 then
			number = 1
		elseif number < 0 then
			number = 0
		end
		replicatedStorage.HouseColour:FireServer(nil, houseConfig.currentMaterial, number, houseConfig.reflectance)
		houseConfig.transparency = number
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "Hey!";
			Text = "Please specify a number between 0 and 1";
			Duration = 10;
		})
	end
end)

secChar01:TextBox("House Reflectance (default 0)","Value",function(txt)
	local number = tonumber(txt)
	if number then
		if number > 1 then
			number = 1
		elseif number < 0 then
			number = 0
		end
		replicatedStorage.HouseColour:FireServer(nil, houseConfig.currentMaterial, houseConfig.transparency, number)
		houseConfig.reflectance = number
	else
		game.StarterGui:SetCore("SendNotification", {
			Title = "Hey!";
			Text = "Please specify a number between 0 and 1";
			Duration = 10;
		})
	end
end)

for _, v in pairs(plrGui.HouseColour.Frame.Base.House.Materials.Frame:GetChildren()) do
	if v:IsA("ImageButton") then
		table.insert(materials, v.Name)
	end
end

secChar01:Dropdown("House material (default)", materials, function(state)
	for i, v in next, materials do
		if state == v then
			replicatedStorage.HouseColour:FireServer(nil, state, houseConfig.transparency, houseConfig.reflectance)
			houseConfig.currentMaterial = state
		end
	end
end)

for _, v in pairs(plrGui.HouseColour.Frame.Base.House.Colours.Frame:GetChildren()) do
	if v:IsA("ImageButton") then
		table.insert(colours, v.Name)
	end
end

secChar01:Dropdown("House Color", colours, function(state)
	for i, v in next, colours do
		if state == v then
			replicatedStorage.HouseColour:FireServer(plrGui.HouseColour.Frame.Base.House.Colours.Frame[state]["Properties"].Colour.Value)
		end
	end
end)


--------------------------------------------------------------------------
local cheatbox = SettingsSector:Button("Rejoin", function(state)
	game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService'Players'.LocalPlayer)
end)

local cheatbox = SettingsSector:Button("Delete Gui", function(state)
	Hawk:Destroy()
end)
--------------------------------------------------------------------------

-------------------------------------------------------------------------

--[[game.StarterGui:SetCore("SendNotification", {
    Title = "Hey!";
    Text = "An anvil needs to be spawned in for this to work"; -- Alt Mesaj
    Duration = 10; -- Ekrandan Gitme Hızı
    })
]]

SettingsSector:KeyBind("UI Keybind","Q",function()
	Hawk:ToggleUI()
end)

SettingsSector:Label("Keybind Is Q")

--Credits

CreditsSector:Label("By falpearx")
CreditsSector:Label("Made with love by Alex")

-----------------------------End-----------------------------------