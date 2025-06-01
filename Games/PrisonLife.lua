function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end

function loadedbro()
	if getgenv().walkspeedloop then getgenv().walkspeedloop:Disconnect() end
	if getgenv().jumppowerloop then getgenv().jumppowerloop:Disconnect() end
	if getgenv().gravityloop then getgenv().gravityloop:Disconnect() end
end

local MainPlayer = game:GetService("Players").LocalPlayer

local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()

local Notificatin = Hawk:Notification()

	Notificatin:Notification("Place Founded!","Prison Life","Done",1)

	loadedbro()

	local Window = Hawk:Window("Hawk HUB | Prison Life")

	function SN(target)
		for i,v in pairs(game.Players:GetChildren())do
			if v.Name:lower():sub(1, #target) == target:lower() then
				return v.Name
			end
		end
	end


	local main = Window:Tab("Main")

	main:Label("Main")

	getgenv().killaura = false


	local KillAuraWhitelisted = {""}

	function IsKillAuraWhitelisted(plr)
		if table.find(KillAuraWhitelisted, (SN(plr.Name) or plr.UserId)) then
			return true
		end
		return false
	end

	local function KillAuraWhitelistSaveSettings()
		local JSON -- is nil
		local HttpService = game:service('HttpService')
		--Decode
		JSON = HttpService:JSONEncode(KillAuraWhitelisted)

		writefile('HawkHubPrisonLife.lua',JSON)
	end

	local function KillAuraWhitelistLoadSettings()
		local HttpService = game:service('HttpService')



		if isfile('HawkHubPrisonLife.lua') then

			KillAuraWhitelisted = HttpService:JSONDecode(readfile('HawkHubPrisonLife.lua'))
		end
	end


	main:Toggle("Kill Aura",function(status)
		getgenv().killaura = status

		while getgenv().killaura do wait(0)
			local Players = game:GetService("Players")
			local LocalPlayer = Players.LocalPlayer
			local DISTANCE_THRESHOLD = 10

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
						game.ReplicatedStorage.meleeEvent:FireServer(player)
					end
					--print(player.Name) --debug mode
				end
			end

			local function checkProximity()
				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= LocalPlayer and not IsKillAuraWhitelisted(player) then
						fireIfNearby(player)
					end
				end
			end

			checkProximity()

		end
	end)

	main:Line()
	getgenv().selectedPlayer = nil
	main:Label("Kill Player")
	main:TextBox("Select Player","Name",function(Text)
		for i,v in pairs(game.Players:GetChildren()) do
			local textt = SN(Text)
			local playerName = SN(v.Name)

			local textheing = #textt

			if string.sub(playerName,1,textheing) == textt then
				if game.Players:FindFirstChild(SN(textt)) == nil then
					Notificatin:Notification("Kill Player", "We Cant Find The Player.","Done",5)
				else
					getgenv().selectedPlayer = SN(textt)
					Notificatin:Notification("Kill Player", playerName.." Selected Player.","Done",5)
				end
			end
		end
	end)

	--MainTab1:Line()
	main:Button("Kill All Players",function()
		local Player = game.Players.LocalPlayer
		local prevCFrame = Player.Character.HumanoidRootPart.CFrame
		for i,v in pairs(game.Players:GetChildren()) do
			if v.Name ~= game.Players.LocalPlayer.Name then
				if not v.Character:FindFirstChild("ForceField") then
					local playerName = v.Name
					local PlayerToKill = game.Players:FindFirstChild(playerName)



					repeat
						if Player.Character.Humanoid.Sit == true then
							Player.Character.Humanoid.Sit = false
						end
						Player.Character.HumanoidRootPart.CFrame = PlayerToKill.Character.HumanoidRootPart.CFrame
						for h = 1,10 do
							game.ReplicatedStorage.meleeEvent:FireServer(PlayerToKill)
						end
						game:GetService("RunService").RenderStepped:wait()
					until PlayerToKill.Character.Humanoid.Health == 0 or v == nil

					Player.Character.HumanoidRootPart.CFrame = prevCFrame
				end
			end
		end
	end)


	main:Button("Kill Selected Player",function()
		local plrman = getgenv().selectedPlayer
		local target
		if SN(plrman) ~= nil then
			target = game.Players:FindFirstChild(SN(plrman))
		end


		if target ~= nil then
			local Player = game.Players.LocalPlayer
			for i,v in pairs(game.Players:GetChildren()) do
				if v.Name == target.Name then
					if not v.Character:FindFirstChild("ForceField") then

						local PlayerToKill = game.Players:FindFirstChild(target.Name)
						local prevCFrame = Player.Character.HumanoidRootPart.CFrame


						repeat
							if Player.Character.Humanoid.Sit == true then
								Player.Character.Humanoid.Sit = false
							end
							Player.Character.HumanoidRootPart.CFrame = PlayerToKill.Character.HumanoidRootPart.CFrame
							for h = 1,10 do
								game.ReplicatedStorage.meleeEvent:FireServer(PlayerToKill)
							end
							wait()
						until PlayerToKill.Character.Humanoid.Health == 0 or v == nil
						wait()
						Player.Character.HumanoidRootPart.CFrame = prevCFrame
					end
				end
			end
		else
			Notificatin:Notification("Kill Player", "Player isnt in game.","Done",5)
		end
	end)


	main:Button("Arrest All Criminals",function()
		local Player = game.Players.LocalPlayer
		local prevCFrame = Player.Character.HumanoidRootPart.CFrame
		for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
			if v.Name ~= game.Players.LocalPlayer.Name then
				if not v.Character:FindFirstChild("ForceField") then
					local playerName = v.Name
					local PlayerToKill = game.Players:FindFirstChild(playerName)

					local countlol = 10
					repeat
						if Player.Character.Humanoid.Sit == true then
							Player.Character.Humanoid.Sit = false
						end
						countlol = countlol-1
						Player.Character.HumanoidRootPart.CFrame = PlayerToKill.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
						for h = 1,10 do
							game.Workspace.Remote.arrest:InvokeServer(PlayerToKill.Character.HumanoidRootPart)
						end
						game:GetService("RunService").RenderStepped:wait()
					until PlayerToKill.Character.Humanoid.Health == 0 or PlayerToKill == nil or countlol == 0 

					Player.Character.HumanoidRootPart.CFrame = prevCFrame
				end
			end
		end
	end)

	main:Button("Arrest Selected Player",function()
		if not game.Players.LocalPlayer.Team == "Guards" then
			return nil;
		end
		local plrman = getgenv().selectedPlayer
		local target
		if SN(plrman) ~= nil then
			target = game.Players:FindFirstChild(SN(plrman))
		end


		if target ~= nil then
			local Player = game.Players.LocalPlayer
			for i,v in pairs(game.Players:GetChildren()) do
				if v.Name == target.Name then
					if not v.Character:FindFirstChild("ForceField") then

						local PlayerToKill = game.Players:FindFirstChild(target.Name)
						local prevCFrame = Player.Character.HumanoidRootPart.CFrame

						local countlol = 10
						repeat
							if Player.Character.Humanoid.Sit == true then
								Player.Character.Humanoid.Sit = false
							end
							countlol = countlol-1
							Player.Character.HumanoidRootPart.CFrame = PlayerToKill.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
							for h = 1,10 do
								game.Workspace.Remote.arrest:InvokeServer(PlayerToKill.Character.HumanoidRootPart)
							end

						until PlayerToKill.Character.Humanoid.Health == 0 or PlayerToKill == nil or countlol == 0 
						wait()
						Player.Character.HumanoidRootPart.CFrame = prevCFrame
					end
				end
			end
		else
			Notificatin:Notification("Kill Player", "Player isnt in game.","Done",5)
		end
	end)

	main:Line()
	main:Label("Kill Aura Whitelist")
	main:TextBox("Whitelist","Add/Remove",function(Text)
		if table.find(KillAuraWhitelisted, (SN(Text))) then
			table.remove(KillAuraWhitelisted, table.find(KillAuraWhitelisted, SN(Text)))
			KillAuraWhitelistSaveSettings()
			Notificatin:Notification("Kill Aura Whitelist", '"'..Text..'"' .." Removed From Whitelist.","Done",5)
		else
			table.insert(KillAuraWhitelisted, SN(Text))
			KillAuraWhitelistSaveSettings()
			Notificatin:Notification("Kill Aura Whitelist", '"'..Text..'"' .." Added To Whitelist.","Done",5)
		end
	end)

	main:Button("Remove All Whitelisted People",function()
		KillAuraWhitelisted = {}
		KillAuraWhitelistSaveSettings()
		Notificatin:Notification("Kill Aura Whitelist", "People Removed From Whitelist.","Done",5)
	end)

	KillAuraWhitelistLoadSettings()

	

		local Tabo = Window:Tab("Combat")


	Tabo:Toggle("Anti Arrest",function(status)
			while status do
				wait()
				if game.Players.LocalPlayer.Character.Head:FindFirstChild("handcuffedGui") and status == true then
					local countBro = 0
			
					local currentTeamName = game.Players.LocalPlayer.Team.Name
					local currentTeamColor = game.Players.LocalPlayer.Team.Color
					Notificatin:Notification("Anti Arrest Actived","","Done",1)
					local lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					wait(0.1)
					workspace:WaitForChild("Remote"):WaitForChild("TeamEvent"):FireServer(currentTeamColor)
					repeat countBro = countBro + 1 wait() until game.Players.LocalPlayer.Team.Color == currentTeamColor or countBro == 10
					wait(0.1)
					for i = 1,5 do
						game.Players.LocalPlayer.Character:PivotTo(lastpos)
					end
				end
			end

		end)

		local respwn = false

	Tabo:Toggle("Respawn",function(status)
			while status do
				wait()
				if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Humanoid.Health <= 0 and status == true and respwn == false then
					respwn = true
					local lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					if game.Players.LocalPlayer.Team.Name == "Inmates" then
						repeat wait() until game.Players.LocalPlayer.Character.Humanoid.Health >= 1
						for i = 1,5 do
							game.Players.LocalPlayer.Character:PivotTo(lastpos)
						end
						Notificatin:Notification("Respawned","","Done",1)
					elseif game.Players.LocalPlayer.Team.Name == "Guards" then
						workspace:WaitForChild("Remote"):WaitForChild("TeamEvent"):FireServer("Bright orange")
						repeat wait() until game.Players.LocalPlayer.Team.Name == "Inmates"
						workspace:WaitForChild("Remote"):WaitForChild("TeamEvent"):FireServer("Bright blue")
						repeat wait() until game.Players.LocalPlayer.Team.Name == "Guards"
						for i = 1,5 do
							game.Players.LocalPlayer.Character:PivotTo(lastpos)
						end
						Notificatin:Notification("Respawned","","Done",1)
					elseif game.Players.LocalPlayer.Team.Name == "Criminals" then
						workspace:WaitForChild("Remote"):WaitForChild("TeamEvent"):FireServer("Bright orange")
						repeat wait() until game.Players.LocalPlayer.Team.Name == "Inmates"
						for i = 1,5 do
							game.Players.LocalPlayer.Character:PivotTo(CFrame.new(-975.191223, 109.323769, 2070.4834, -0.00161088258, -1.10652358e-08, -0.999998689, -6.32785344e-08, 1, -1.09633156e-08, 0.999998689, 6.32607922e-08, -0.00161088258))
						end
						for i = 1,5 do
							wait(0.1)
							game.Players.LocalPlayer.Character:PivotTo(lastpos)
						end
						Notificatin:Notification("Respawned","","Done",1)
					end
					respwn = false
				end
			end
	end)
	
	
	
local Tab1 = Window:Tab("Player")


	local savedDefultSpeed = 16
	local savedDefultJump = 50


	getgenv().walkspeedloop = nil
	getgenv().jumppowerloop = nil
	getgenv().gravityloop = nil


	Tab1:Slider("Speed",5,200,function(speed)
		if isNumber(speed) then
			getgenv().playerspeedtoggle = speed
			MainPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
		end
		wait()
		if getgenv().walkspeedloop then getgenv().walkspeedloop:Disconnect() end
		getgenv().walkspeedloop = game:GetService("RunService").RenderStepped:Connect(function()
			for i,v in pairs(MainPlayer.Character:GetChildren()) do
				if v.Name == "Humanoid" then
					if isNumber(getgenv().playerspeedtoggle) then
						MainPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = getgenv().playerspeedtoggle
					else
						MainPlayer.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = getgenv().playerspeedtoggle
					end
				end
			end
		end)
	end)

	Tab1:Slider("JumpPower",5,200,function(jumppower)
		if isNumber(jumppower) then
			getgenv().playerjumptoggle = jumppower
			MainPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = jumppower
		end
		wait()
		if getgenv().jumppowerloop then getgenv().jumppowerloop:Disconnect() end
		getgenv().jumppowerloop = game:GetService("RunService").RenderStepped:Connect(function()
			for i,v in pairs(MainPlayer.Character:GetChildren()) do
				if v.Name == "Humanoid" then
					if isNumber(getgenv().playerjumptoggle) then
						MainPlayer.Character:FindFirstChildOfClass('Humanoid').JumpPower = getgenv().playerjumptoggle
					else
						MainPlayer.Character:FindFirstChildOfClass('Humanoid').JumpHeight = getgenv().playerjumptoggle
					end
				end
			end
		end)
	end)

	Tab1:Slider("Gravity",5,200,function(gravity)
		if isNumber(gravity) then
			getgenv().playergravitytoggle = gravity
			game.Workspace.Gravity = gravity
		end
		wait()
		if getgenv().gravityloop then getgenv().gravityloop:Disconnect() end
		getgenv().gravityloop = game:GetService("RunService").RenderStepped:Connect(function()
			for i,v in pairs(MainPlayer.Character:GetChildren()) do
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

	Tab1:Line()
	Tab1:Button("Reset All Player Stats",function()
		if getgenv().walkspeedloop then getgenv().walkspeedloop:Disconnect() end
		if getgenv().jumppowerloop then getgenv().jumppowerloop:Disconnect() end
		if getgenv().gravityloop then getgenv().gravityloop:Disconnect() end
		wait()
		game.Workspace.Gravity = 196.2
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = savedDefultSpeed
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = savedDefultJump
		Notificatin:Notification("Player Stats", "Success.","Done",5)
	end)

	Tab1:Line()
	Tab1:Label("Team Change")

	Tab1:Button("Change Team To Criminal",function()
		local prevposition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975, 112, 2055)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevposition
		Notificatin:Notification("Player Stats", "Success.","Done",5)
	end)

	Tab1:Button("Change Team To Guard",function()
		workspace.Remote:WaitForChild("TeamEvent"):FireServer("Bright blue")
		Notificatin:Notification("Player Stats", "Success.","Done",5)
	end)


	Tab1:Button("Change Team To Inmate",function()
		workspace.Remote:WaitForChild("TeamEvent"):FireServer("Bright orange")
		Notificatin:Notification("Player Stats", "Success.","Done",5)
	end)




	local TabWeapon = Window:Tab("Weapon")

	TabWeapon:Label("Get Guns")

	--[[ getgenv().gettingweapon = false ]]

	TabWeapon:Button("Get Ak-47",function()
		local oldframe =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

--[[         if getgenv().gettingweapon then
            return nil;
        end
        getgenv().gettingweapon = true ]]
		local Weapon = {"AK-47"}
		repeat
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Prison_ITEMS.giver[Weapon[1]].ITEMPICKUP.CFrame
			wait(0.1)
			for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
				if v.Name == Weapon[1] then
					local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
				end
			end
		until game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon[1]) or game.Players.LocalPlayer.Character.Humanoid.Health == 0 
		wait()
		--[[ getgenv().gettingweapon = false ]]
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldframe
		Notificatin:Notification("Gun Service", "Success.","Done",5)
	end)

	TabWeapon:Button("Get Remington 870",function()
		local oldframe =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

--[[         if getgenv().gettingweapon then
            return nil;
        end
        getgenv().gettingweapon = true ]]
		local Weapon = {"Remington 870"}
		repeat
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Prison_ITEMS.giver[Weapon[1]].ITEMPICKUP.CFrame
			wait(0.1)
			for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
				if v.Name == Weapon[1] then
					local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
				end
			end
		until game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon[1]) or  game.Players.LocalPlayer.Character.Humanoid.Health == 0 
		wait()
		--[[         getgenv().gettingweapon = false ]]
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldframe
		Notificatin:Notification("Gun Service", "Success.","Done",5)
	end)


	TabWeapon:Button("Get M9",function()
		local oldframe =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
--[[         if getgenv().gettingweapon then
            return nil;
        end
        getgenv().gettingweapon = true ]]
		local Weapon = {"M9"}
		repeat
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Prison_ITEMS.giver[Weapon[1]].ITEMPICKUP.CFrame
			wait(0.1)
			for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
				if v.Name == Weapon[1] then
					local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
				end
			end
		until game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon[1]) or  game.Players.LocalPlayer.Character.Humanoid.Health == 0 
		wait()
		--[[         getgenv().gettingweapon = false ]]
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldframe
		Notificatin:Notification("Gun Service", "Success.","Done",5)
	end)


	TabWeapon:Button("Get M4A1 (Need Riot Police Gamepass)",function()
		local oldframe =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local count = 0

--[[         if getgenv().gettingweapon then
            return nil;
        end
        getgenv().gettingweapon = true ]]
		local Weapon = {"M4A1"}
		repeat
			count = count + 1
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Prison_ITEMS.giver[Weapon[1]].ITEMPICKUP.CFrame
			wait(0.1)
			for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
				if v.Name == Weapon[1] then
					local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
				end
			end
		until game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon[1]) or count == 3 or game.Players.LocalPlayer.Character.Humanoid.Health == 0 
		wait()
		--[[         getgenv().gettingweapon = false ]]
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldframe
		Notificatin:Notification("Gun Service", "Success.","Done",5)
	end)


	TabWeapon:Button("Get All Weapons",function()
		local oldframe =  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

		local Weapon = {"AK-47"}
		repeat
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Prison_ITEMS.giver[Weapon[1]].ITEMPICKUP.CFrame
			wait(0.1)
			for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
				if v.Name == Weapon[1] then
					local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
				end
			end
		until game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon[1]) or game.Players.LocalPlayer.Character.Humanoid.Health == 0 
		wait()
		local Weapon = {"Remington 870"}
		repeat
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Prison_ITEMS.giver[Weapon[1]].ITEMPICKUP.CFrame
			wait(0.1)
			for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
				if v.Name == Weapon[1] then
					local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
				end
			end
		until game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon[1]) or  game.Players.LocalPlayer.Character.Humanoid.Health == 0 
		wait()
		local Weapon = {"M9"}
		repeat
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Prison_ITEMS.giver[Weapon[1]].ITEMPICKUP.CFrame
			wait(0.1)
			for i,v in pairs(workspace.Prison_ITEMS.giver:GetChildren()) do
				if v.Name == Weapon[1] then
					local lol = workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
				end
			end
		until game.Players.LocalPlayer.Backpack:FindFirstChild(Weapon[1]) or  game.Players.LocalPlayer.Character.Humanoid.Health == 0 
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldframe
		Notificatin:Notification("Gun Service", "Success.","Done",5)
	end)


	local Tab2 = Window:Tab("Teleports")

	Tab2:TextBox("Player Teleport","Name",function(txt)
		for i,v in pairs(game.Players:GetChildren()) do
			local text = SN(txt)
			local playerName = SN(v.Name)

			local textheing = #text

			if string.sub(playerName,1,textheing) == text then
				game.Players.LocalPlayer.Character:PivotTo(v.Character.HumanoidRootPart.CFrame)
			end
		end
	end)

	Tab2:Label("Locations")

	local Teleports = {
		["Secret Room"] = CFrame.new(681, 100, 2330);
		["Cafeteria"] = CFrame.new(874, 99, 2319);
		["Cells"] = CFrame.new(914, 99, 2444);
		["Country Yard"] = CFrame.new(778, 97, 2498);
		["Camping Tower"] = CFrame.new(821, 130, 2587);
		["Guards Room"] = CFrame.new(821, 99, 2274);
		["Prison OutSide"] = CFrame.new(250.307159, 72.5167007, 2315.7168, -0.00264732447, -1.0803479e-08, -0.999996483, 6.72370781e-09, 1, -1.08213163e-08, 0.999996483, -6.75233158e-09, -0.00264732447);
		["Prison"] = CFrame.new(892.391541, 99.9899368, 2256.14624, -0.999982297, -2.14377245e-08, -0.00595229631, -2.14176552e-08, 1, -3.43556494e-09, 0.00595229631, -3.30801986e-09, -0.999982297);
		["Criminal Base"] = CFrame.new(-975.191223, 109.323769, 2070.4834, -0.00161088258, -1.10652358e-08, -0.999998689, -6.32785344e-08, 1, -1.09633156e-08, 0.999998689, 6.32607922e-08, -0.00161088258);
	}

	for i,v in pairs(Teleports) do
		Tab2:Button(i,function()
			game.Players.LocalPlayer.Character:PivotTo(v)
		end)
	end


	local Tab4 = Window:Tab("Misc")

	local PStatus = false

	Tab4:Toggle("Esp",function(status)
		PStatus = status
		print(PStatus)
		if status == true then
			for i,v in pairs(game.Players:GetChildren()) do
				spawn(function()
					if v.Character and not v.Character:FindFirstChild("Highlight") and v ~= game.Players.LocalPlayer then
						local hl = Instance.new("Highlight")
						hl.Parent = v.Character
						hl.Enabled = true

						if v.Team.Name == "Criminals" then
							hl.FillColor = Color3.new(1, 0, 0)
							hl.OutlineColor = Color3.new(0.223529, 0, 0)
						elseif v.Team.Name == "Guards" then
							hl.FillColor = Color3.new(0.00392157, 0.235294, 1)
							hl.OutlineColor = Color3.new(0, 0.0784314, 0.337255)
						elseif v.Team.Name == "Inmates" then
							hl.FillColor = Color3.new(0.631373, 0.384314, 0.184314)
							hl.OutlineColor = Color3.new(1, 0.654902, 0.352941)
						end

						v.Changed:Connect(function()
							if v.Team ~= nil and v.Team.Name == "Criminals" then
								hl.FillColor = Color3.new(1, 0, 0)
								hl.OutlineColor = Color3.new(0.223529, 0, 0)
							elseif v.Team.Name == "Guards" then
								hl.FillColor = Color3.new(0.00392157, 0.235294, 1)
								hl.OutlineColor = Color3.new(0, 0.0784314, 0.337255)
							elseif v.Team.Name == "Inmates" then
								hl.FillColor = Color3.new(0.631373, 0.384314, 0.184314)
								hl.OutlineColor = Color3.new(1, 0.654902, 0.352941)
							end
						end)

						v.CharacterAdded:Connect(function(char)
							if PStatus == true then
								local hl = Instance.new("Highlight")
								hl.Parent = v.Character
								hl.Enabled = true

								if v.Team.Name == "Criminals" then
									hl.FillColor = Color3.new(1, 0, 0)
									hl.OutlineColor = Color3.new(0.223529, 0, 0)
								elseif v.Team.Name == "Guards" then
									hl.FillColor = Color3.new(0.00392157, 0.235294, 1)
									hl.OutlineColor = Color3.new(0, 0.0784314, 0.337255)
								elseif v.Team.Name == "Inmates" then
									hl.FillColor = Color3.new(0.631373, 0.384314, 0.184314)
									hl.OutlineColor = Color3.new(1, 0.654902, 0.352941)
								end

								v.Changed:Connect(function()
									if v.Team ~= nil and v.Team.Name == "Criminals" then
										hl.FillColor = Color3.new(1, 0, 0)
										hl.OutlineColor = Color3.new(0.223529, 0, 0)
									elseif v.Team.Name == "Guards" then
										hl.FillColor = Color3.new(0.00392157, 0.235294, 1)
										hl.OutlineColor = Color3.new(0, 0.0784314, 0.337255)
									elseif v.Team.Name == "Inmates" then
										hl.FillColor = Color3.new(0.631373, 0.384314, 0.184314)
										hl.OutlineColor = Color3.new(1, 0.654902, 0.352941)
									end
								end)
							end
						end)
					end
				end)
			end
		elseif status == false then
			for i,v in pairs(game.Players:GetChildren()) do
				for i,v in pairs(v.Character:GetChildren()) do
					if v:IsA("Highlight") then
						v:Destroy()
					end
				end
			end
		end
	end)

	local PStatus2 = false

	Tab4:Toggle("NameTags",function(status)
		PStatus2 = status
		if status == true then
			for i,v in pairs(game.Players:GetChildren()) do
				spawn(function()
					if v.Character and not v.Character:FindFirstChild("NameTAG00") and v ~= game.Players.LocalPlayer then
						local plname = v.Name
						local NameTAG00 = Instance.new("BillboardGui")
						local Name = Instance.new("TextLabel")

						repeat wait() until v.Character and v.Character.Head
						NameTAG00.Name = "NameTAG00"
						NameTAG00.Parent = v.Character
						NameTAG00.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
						NameTAG00.Active = true
						NameTAG00.AlwaysOnTop = true
						NameTAG00.LightInfluence = 1.000
						NameTAG00.Size = UDim2.new(0, 500, 0, 100)

						Name.Name = "Name"
						Name.Parent = NameTAG00
						Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Name.BackgroundTransparency = 1.000
						Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Name.BorderSizePixel = 0
						Name.Position = UDim2.new(0.368816525, 0, 0.382417589, 0)
						Name.Size = UDim2.new(0.13212274, 0, 0.233516484, 0)
						Name.Font = Enum.Font.SourceSans
						Name.Text = plname
						Name.TextColor3 = Color3.fromRGB(255, 0, 0)
						Name.TextScaled = true
						Name.TextSize = 14.000
						Name.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
						Name.TextStrokeTransparency = 0.000
						Name.TextWrapped = true


						if v.Team.Name == "Criminals" then
							Name.TextColor3 = Color3.new(1, 0, 0)
						elseif v.Team.Name == "Guards" then
							Name.TextColor3 = Color3.new(0.00392157, 0.235294, 1)
						elseif v.Team.Name == "Inmates" then
							Name.TextColor3 = Color3.new(0.631373, 0.384314, 0.184314)
						end

						v.Changed:Connect(function()
							if v.Team ~= nil and v.Team.Name == "Criminals" then
								Name.TextColor3 = Color3.new(1, 0, 0)
							elseif v.Team.Name == "Guards" then
								Name.TextColor3 = Color3.new(0.00392157, 0.235294, 1)
							elseif v.Team.Name == "Inmates" then
								Name.TextColor3 = Color3.new(0.631373, 0.384314, 0.184314)
							end
						end)

						v.CharacterAdded:Connect(function(char)
							if PStatus2 == true then
								local NameTAG00 = Instance.new("BillboardGui")
								local Name = Instance.new("TextLabel")

								NameTAG00.Name = "NameTAG00"
								NameTAG00.Parent = v.Character.Head
								NameTAG00.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
								NameTAG00.Active = true
								NameTAG00.AlwaysOnTop = true
								NameTAG00.LightInfluence = 1.000
								NameTAG00.Size = UDim2.new(0, 500, 0, 100)

								Name.Name = "Name"
								Name.Parent = NameTAG00
								Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								Name.BackgroundTransparency = 1.000
								Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
								Name.BorderSizePixel = 0
								Name.Position = UDim2.new(0.368816525, 0, 0.382417589, 0)
								Name.Size = UDim2.new(0.13212274, 0, 0.233516484, 0)
								Name.Font = Enum.Font.SourceSans
								Name.Text = plname
								Name.TextColor3 = Color3.fromRGB(255, 0, 0)
								Name.TextScaled = true
								Name.TextSize = 14.000
								Name.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
								Name.TextStrokeTransparency = 0.000
								Name.TextWrapped = true

								if v.Team ~= nil and v.Team.Name == "Criminals" then
									Name.TextColor3 = Color3.new(1, 0, 0)
								elseif v.Team.Name == "Guards" then
									Name.TextColor3 = Color3.new(0.00392157, 0.235294, 1)
								elseif v.Team.Name == "Inmates" then
									Name.TextColor3 = Color3.new(0.631373, 0.384314, 0.184314)
								end

								v.Changed:Connect(function()
									if v.Team ~= nil and v.Team.Name == "Criminals" then
										Name.TextColor3 = Color3.new(1, 0, 0)
									elseif v.Team.Name == "Guards" then
										Name.TextColor3 = Color3.new(0.00392157, 0.235294, 1)
									elseif v.Team.Name == "Inmates" then
										Name.TextColor3 = Color3.new(0.631373, 0.384314, 0.184314)
									end
								end)
							end
						end)
					end
				end)
			end
		elseif status == false then
			for i,v in pairs(game.Players:GetChildren()) do
				for i,v in pairs(v.Character:GetChildren()) do
					if v.Name == "NameTAG00" then
						v:Destroy()
					end
				end
			end
		end
	end)


	local Tab3 = Window:Tab("Settings")

	Tab3:KeyBind("UIKeybind","E",function()
		Hawk:ToggleUI()
	end)

	Tab3:Label("Colors")

	Tab3:ColorPicker("Glow",Color3.new(0,0,0),function(xd)
		for i, v in pairs(game.CoreGui.Hawk.Main:GetChildren()) do
			if v.Name == "Glow" or v.Name == "Glow_2" or v.Name == "glow" or v.Name == "glow2" then
				v.ImageColor3 = xd
			end
		end
	end)
	Tab3:ColorPicker("TitleBar",Color3.fromRGB(39, 39, 39),function(xd)
		for i, v in pairs(game.CoreGui.Hawk.Main:GetChildren()) do
			if v.Name == "TitleBar" then
				v.BackgroundColor3 = xd
			elseif v.Name == "Tabs" then
				v.BackgroundColor3 = xd
			end
		end
	end)


--[[
local args = {
	[1] = game:GetService("Players").Blizz_Chan
}

game:GetService("ReplicatedStorage").meleeEvent:FireServer(unpack(args))
--]]