firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent,tostring("Hawk HUB Has Been Loaded!!"),2) 
wait(3)
firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent,tostring("Have Fun!!"),2) 
wait(2)

local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:FindFirstChildOfClass("Humanoid") or char:WaitForChild("Humanoid")

local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()

local Notificatin = Hawk:Notification()

	Notificatin:Notification("Hey!\n","Q for \n Toggle the menu \n u can change in Main","Notification",5)
	local Window = Hawk:Window("Hawk HUB | Doors")
	local Tab1 = Window:Tab("Main")
	local Tab2 = Window:Tab("Character")
	local Tab3 = Window:Tab("Misc")
	local Tab4 = Window:Tab("Esp")
	local Tab5 = Window:Tab("Settings")
	local Tab6 = Window:Tab("Credits")


function esp(what,color,core,name)
	local parts

	if typeof(what) == "Instance" then
		if what:IsA("Model") then
			parts = what:GetChildren()
		elseif what:IsA("BasePart") then
			parts = {what,table.unpack(what:GetChildren())}
		end
	elseif typeof(what) == "table" then
		parts = what
	end

	local bill
	local boxes = {}

	for i,v in pairs(parts) do
		if v:IsA("BasePart") then
			local box = Instance.new("BoxHandleAdornment")
			box.Size = v.Size
			box.AlwaysOnTop = true
			box.ZIndex = 1
			box.AdornCullingMode = Enum.AdornCullingMode.Never
			box.Color3 = color
			box.Transparency = 0.7
			box.Adornee = v
			box.Parent = game.CoreGui

			table.insert(boxes,box)

			task.spawn(function()
				while box do
					if box.Adornee == nil or not box.Adornee:IsDescendantOf(workspace) then
						box.Adornee = nil
						box.Visible = false
						box:Destroy()
					end  
					task.wait()
				end
			end)
		end
	end

	if core and name then
		bill = Instance.new("BillboardGui",game.CoreGui)
		bill.AlwaysOnTop = true
		bill.Size = UDim2.new(0,400,0,100)
		bill.Adornee = core
		bill.MaxDistance = 2000

		local mid = Instance.new("Frame",bill)
		mid.AnchorPoint = Vector2.new(0.5,0.5)
		mid.BackgroundColor3 = color
		mid.Size = UDim2.new(0,8,0,8)
		mid.Position = UDim2.new(0.5,0,0.5,0)
		Instance.new("UICorner",mid).CornerRadius = UDim.new(1,0)
		Instance.new("UIStroke",mid)

		local txt = Instance.new("TextLabel",bill)
		txt.AnchorPoint = Vector2.new(0.5,0.5)
		txt.BackgroundTransparency = 1
		txt.BackgroundColor3 = color
		txt.TextColor3 = color
		txt.Size = UDim2.new(1,0,0,20)
		txt.Position = UDim2.new(0.5,0,0.7,0)
		txt.Text = name
		txt.Font = Enum.Font.GothamBold
		Instance.new("UIStroke",txt)

		task.spawn(function()
			while bill do
				if bill.Adornee == nil or not bill.Adornee:IsDescendantOf(workspace) then
					bill.Enabled = false
					bill.Adornee = nil
					bill:Destroy() 
				end  
				task.wait()
			end
		end)
	end

	local ret = {}

	ret.delete = function()
		for i,v in pairs(boxes) do
			v.Adornee = nil
			v.Visible = false
			v:Destroy()
		end

		if bill then
			bill.Enabled = false
			bill.Adornee = nil
			bill:Destroy() 
		end
	end

	return ret 
end

local entityinfo = game.ReplicatedStorage:WaitForChild("EntityInfo")
function message(text)
	firesignal(entityinfo.Caption.OnClientEvent,tostring(text)) 
end


local flags = {
	speed = 0,
	espdoors = false,
	espkeys = false,
	espitems = false,
	espbooks = false,
	esprush = false,
	espchest = false,
	esplocker = false,
	esphumans = false,
	espgold = false,
	goldespvalue = 0,
	hintrush = false,
	light = false,
	instapp = false,
	noseek = false,
	nogates = false,
	nopuzzle = false,
	noa90 = false,
	noskeledoors = false,
	noscreech = false,
	getcode = false,
	roomsnolock = false,
	draweraura = false,
	autorooms = false,
}

local DELFLAGS = {table.unpack(flags)}
local esptable = {doors={},keys={},items={},books={},entity={},chests={},lockers={},people={},gold={}}

Tab5:KeyBind("UIKeybind","Q",function()
		Hawk:ToggleUI()
	end)
	Tab1:Slider("SpeedBoost",0,6,function(speed)
		game.Players.LocalPlayer.Character.Humanoid:SetAttribute("SpeedBoost", speed)
	end)

	Tab2:Toggle("No Acceleration",function(Value)
		if not Value then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CustomPhysicalProperties = PhysicalProperties.new(0.7,0.5,1,0.3,1)
		else
			game.Players.LocalPlayer.Character.HumanoidRootPart.CustomPhysicalProperties = PhysicalProperties.new(100,0,0,0,0)
		end
	end)

	Tab2:Toggle("Noclip",function(Value)
		if Value then
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("BasePart") then
					v.CanCollide = false
				end
			end
		else
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("BasePart") then
					v.CanCollide = true 
				end
			end
		end
	end)

	Tab2:Toggle("Instant ProximityPrompt",function(Value)
		if Value then
			PromptButtonHoldBegan = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
				fireproximityprompt(prompt)
			end)
		else
			PromptButtonHoldBegan:Disconnect()
		end

end)

Tab2:Toggle("Glow (Only you can see)",function(toggle)
	if toggle == true then
		local l = Instance.new("PointLight")
		l.Name = "zort"
		l.Range = 10000
		l.Brightness = 2
		l.Parent = char.PrimaryPart
	else 
		char.PrimaryPart:FindFirstChild("zort"):Destroy()
	end
end)

	--Tab3
	Tab3:Button("Rejoin",function()
		game:GetService("ReplicatedStorage").EntityInfo.PlayAgain:FireServer()
		firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'Rejoining...',true,3.5)
	end)

Tab4:Label("Esp")
Tab4:Toggle("Door Esp",function(toggle)
	flags.espdoors = toggle
	if toggle then
	local function setup(room)
		local door = room:WaitForChild("Door"):WaitForChild("Door")

		task.wait(0.1)
		local h = esp(door,Color3.fromRGB(255, 170, 0),door,"Door")
		table.insert(esptable.doors,h)

		door:WaitForChild("Open").Played:Connect(function()
			h.delete()
		end)

		door.AncestryChanged:Connect(function()
			h.delete()
		end)
	end

	local addconnect
	addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
		setup(room)
	end)

	for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
		if room:FindFirstChild("Assets") then
			setup(room) 
		end
	end

	repeat task.wait() until not flags.espdoors
	addconnect:Disconnect()

	for i,v in pairs(esptable.doors) do
		v.delete()
	end 	
end
end)
Tab4:Toggle("Key & Lever Esp",function(toggle)
	flags.espkeys = toggle

	if toggle then
		local function check(v)
			if v:IsA("Model") and (v.Name == "LeverForGate" or v.Name == "KeyObtain") then
				task.wait(0.1)
				if v.Name == "KeyObtain" then
					local hitbox = v:WaitForChild("Hitbox")
					local parts = hitbox:GetChildren()
					table.remove(parts,table.find(parts,hitbox:WaitForChild("PromptHitbox")))

					local h = esp(parts,Color3.fromRGB(90,255,40),hitbox,"Key")
					table.insert(esptable.keys,h)

				elseif v.Name == "LeverForGate" then
					local h = esp(v,Color3.fromRGB(90,255,40),v.PrimaryPart,"Lever")
					table.insert(esptable.keys,h)

					v.PrimaryPart:WaitForChild("SoundToPlay").Played:Connect(function()
						h.delete()
					end) 
				end
			end
		end

		local function setup(room)
			local assets = room:WaitForChild("Assets")

			assets.DescendantAdded:Connect(function(v)
				check(v) 
			end)

			for i,v in pairs(assets:GetDescendants()) do
				check(v)
			end 
		end

		local addconnect
		addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
			setup(room)
		end)

		for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
			if room:FindFirstChild("Assets") then
				setup(room) 
			end
		end

		repeat task.wait() until not flags.espkeys
		addconnect:Disconnect()

		for i,v in pairs(esptable.keys) do
			v.delete()
		end 
	end
end)
local entitynames = {"RushMoving","AmbushMoving","Snare","A60","A120"}
Tab4:Toggle("Entity Esp",function(val)
	flags.esprush = val

	if val then
		local addconnect
		addconnect = workspace.ChildAdded:Connect(function(v)
			if table.find(entitynames,v.Name) then
				task.wait(0.1)

				local h = esp(v,Color3.fromRGB(255,25,25),v.PrimaryPart,v.Name:gsub("Moving",""))
				table.insert(esptable.entity,h)
			end
		end)

		local function setup(room)
			if room.Name == "50" or room.Name == "100" then
				local figuresetup = room:WaitForChild("FigureSetup")

				if figuresetup then
					local fig = figuresetup:WaitForChild("FigureRagdoll")
					task.wait(0.1)

					local h = esp(fig,Color3.fromRGB(255,25,25),fig.PrimaryPart,"Figure")
					table.insert(esptable.entity,h)
				end 
			else
				local assets = room:WaitForChild("Assets")

				local function check(v)
					if v:IsA("Model") and table.find(entitynames,v.Name) then
						task.wait(0.1)

						local h = esp(v:WaitForChild("Base"),Color3.fromRGB(255,25,25),v.Base,"Snare")
						table.insert(esptable.entity,h)
					end
				end

				assets.DescendantAdded:Connect(function(v)
					check(v) 
				end)

				for i,v in pairs(assets:GetDescendants()) do
					check(v)
				end
			end 
		end

		local roomconnect
		roomconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
			setup(room)
		end)

		for i,v in pairs(workspace.CurrentRooms:GetChildren()) do
			setup(room) 
		end

		repeat task.wait() until not flags.esprush
		addconnect:Disconnect()
		roomconnect:Disconnect()

		for i,v in pairs(esptable.entity) do
			v.delete()
		end 
	end
end)
Tab4:Toggle("Player Esp",function(val)
	flags.esphumans = val

	if val then
		local function personesp(v)
			v.CharacterAdded:Connect(function(vc)
				local vh = vc:WaitForChild("Humanoid")
				local torso = vc:WaitForChild("UpperTorso")
				task.wait(0.1)

				local h = esp(vc,Color3.fromRGB(170, 255, 0),torso,v.DisplayName)
				table.insert(esptable.people,h) 
			end)

			if v.Character then
				local vc = v.Character
				local vh = vc:WaitForChild("Humanoid")
				local torso = vc:WaitForChild("UpperTorso")
				task.wait(0.1)

				local h = esp(vc,Color3.fromRGB(170, 255, 0),torso,v.DisplayName)
				table.insert(esptable.people,h) 
			end
		end

		local addconnect
		addconnect = game.Players.PlayerAdded:Connect(function(v)
			if v ~= plr then
				personesp(v)
			end
		end)

		for i,v in pairs(game.Players:GetPlayers()) do
			if v ~= plr then
				personesp(v) 
			end
		end

		repeat task.wait() until not flags.esphumans
		addconnect:Disconnect()

		for i,v in pairs(esptable.people) do
			v.delete()
		end 
	end
end)
Tab4:Toggle("Chest Esp",function(val)
	flags.espchest = val

	if val then
		local function check(v)
			if v:IsA("Model") then
				task.wait(0.1)
				if v.Name == "ChestBox" then
					warn(v.Name)
					local h = esp(v,Color3.fromRGB(205,120,255),v.PrimaryPart,"Chest")
					table.insert(esptable.chests,h) 
				elseif v.Name == "ChestBoxLocked" then
					local h = esp(v,Color3.fromRGB(255,120,205),v.PrimaryPart,"Locked Chest")
					table.insert(esptable.chests,h) 
				end
			end
		end

		local function setup(room)
			local subaddcon
			subaddcon = room.DescendantAdded:Connect(function(v)
				check(v) 
			end)

			for i,v in pairs(room:GetDescendants()) do
				check(v)
			end

			task.spawn(function()
				repeat task.wait() until not flags.espchest
				subaddcon:Disconnect()  
			end)  
		end

		local addconnect
		addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
			setup(room)
		end)

		for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
			if room:FindFirstChild("Assets") then
				setup(room) 
			end
		end

		repeat task.wait() until not flags.espchest
		addconnect:Disconnect()

		for i,v in pairs(esptable.chests) do
			v.delete()
		end 
	end
end)
Tab4:Toggle("Locker Esp",function(val)
	flags.esplocker = val

	if val then
		local function check(v)
			if v:IsA("Model") then
				task.wait(0.1)
				if v.Name == "Wardrobe" then
					local h = esp(v.PrimaryPart,Color3.fromRGB(145,100,25),v.PrimaryPart,"Closet")
					table.insert(esptable.lockers,h) 
				elseif (v.Name == "Rooms_Locker" or v.Name == "Rooms_Locker_Fridge") then
					local h = esp(v.PrimaryPart,Color3.fromRGB(145,100,25),v.PrimaryPart,"Locker")
					table.insert(esptable.lockers,h) 
				end
			end
		end

		local function setup(room)
			local assets = room:WaitForChild("Assets")

			if assets then
				local subaddcon
				subaddcon = assets.DescendantAdded:Connect(function(v)
					check(v) 
				end)

				for i,v in pairs(assets:GetDescendants()) do
					check(v)
				end

				task.spawn(function()
					repeat task.wait() until not flags.esplocker
					subaddcon:Disconnect()  
				end) 
			end 
		end

		local addconnect
		addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
			setup(room)
		end)

		for i,v in pairs(workspace.CurrentRooms:GetChildren()) do
			setup(room) 
		end

		repeat task.wait() until not flags.esplocker
		addconnect:Disconnect()

		for i,v in pairs(esptable.lockers) do
			v.delete()
		end 
	end
end)
Tab4:Toggle("Book & Breaker Esp",function(val)
	flags.espbooks = val

	if val then
		local function check(v)
			if v:IsA("Model") and (v.Name == "LiveHintBook" or v.Name == "LiveBreakerPolePickup") then
				task.wait(0.1)

				local h = esp(v,Color3.fromRGB(85, 255, 0),v.PrimaryPart,"Book")
				table.insert(esptable.books,h)

				v.AncestryChanged:Connect(function()
					if not v:IsDescendantOf(room) then
						h.delete() 
					end
				end)
			end
		end

		local function setup(room)
			if room.Name == "50" or room.Name == "100" then
				room.DescendantAdded:Connect(function(v)
					check(v) 
				end)

				for i,v in pairs(room:GetDescendants()) do
					check(v)
				end
			end
		end

		local addconnect
		addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
			setup(room)
		end)

		for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
			setup(room) 
		end

		repeat task.wait() until not flags.espbooks
		addconnect:Disconnect()

		for i,v in pairs(esptable.books) do
			v.delete()
		end 
	end
end)
Tab4:Toggle("Item Esp",function(val)
	flags.espitems = val

	if val then
		local function check(v)
			if v:IsA("Model") and (v:GetAttribute("Pickup") or v:GetAttribute("PropType")) then
				task.wait(0.1)

				local part = (v:FindFirstChild("Handle") or v:FindFirstChild("Prop"))
				local h = esp(part,Color3.fromRGB(170, 255, 255),part,v.Name)
				table.insert(esptable.items,h)
			end
		end

		local function setup(room)
			local assets = room:WaitForChild("Assets")

			if assets then  
				local subaddcon
				subaddcon = assets.DescendantAdded:Connect(function(v)
					check(v) 
				end)

				for i,v in pairs(assets:GetDescendants()) do
					check(v)
				end

				task.spawn(function()
					repeat task.wait() until not flags.espitems
					subaddcon:Disconnect()  
				end) 
			end 
		end

		local addconnect
		addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
			setup(room)
		end)

		for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
			if room:FindFirstChild("Assets") then
				setup(room) 
			end
		end

		repeat task.wait() until not flags.espitems
		addconnect:Disconnect()

		for i,v in pairs(esptable.items) do
			v.delete()
		end 
	end
end)
Tab4:Toggle("Gold Esp",function(val)
	flags.espgold = val

	if val then
		local function check(v)
			if v:IsA("Model") then
				task.wait(0.1)
				local goldvalue = v:GetAttribute("GoldValue")

				if goldvalue and goldvalue >= flags.goldespvalue then
					local hitbox = v:WaitForChild("Hitbox")
					local h = esp(hitbox:GetChildren(),Color3.fromRGB(255,255,0),hitbox,"GoldPile [".. tostring(goldvalue).."]")
					table.insert(esptable.gold,h)
				end
			end
		end

		local function setup(room)
			local assets = room:WaitForChild("Assets")

			local subaddcon
			subaddcon = assets.DescendantAdded:Connect(function(v)
				check(v) 
			end)

			for i,v in pairs(assets:GetDescendants()) do
				check(v)
			end

			task.spawn(function()
				repeat task.wait() until not flags.espchest
				subaddcon:Disconnect()  
			end)  
		end

		local addconnect
		addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
			setup(room)
		end)

		for i,room in pairs(workspace.CurrentRooms:GetChildren()) do
			if room:FindFirstChild("Assets") then
				setup(room) 
			end
		end

		repeat task.wait() until not flags.espgold
		addconnect:Disconnect()

		for i,v in pairs(esptable.gold) do
			v.delete()
		end 
	end
end)


Tab3:Toggle("Notify Entities!",function(val)
	flags.hintrush = val

	if val then
		local addconnect
		addconnect = workspace.ChildAdded:Connect(function(v)
			if table.find(entitynames,v.Name) then
				repeat task.wait() until plr:DistanceFromCharacter(v:GetPivot().Position) < 1000 or not v:IsDescendantOf(workspace)

				if v:IsDescendantOf(workspace) then
					message(v.Name:gsub("Moving",""):lower().." is coming go hide")
				end
			end
		end) 

		repeat task.wait() until not flags.hintrush
		addconnect:Disconnect()
	end
end)

Tab3:Toggle("Disable Seek Chase!",function(val)
	flags.noseek = val

	if val then
		local addconnect
		addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
			local trigger = room:WaitForChild("TriggerEventCollision",2)

			if trigger then
				trigger:Destroy() 
			end
		end)

		repeat task.wait() until not flags.noseek
		addconnect:Disconnect()
	end
end)

Tab3:Toggle("Delete Gates",function(val)
	flags.nogates = val

	if val then
		local addconnect
		addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
			local gate = room:WaitForChild("Gate",2)

			if gate then
				local door = gate:WaitForChild("ThingToOpen",2)

				if door then
					door:Destroy() 
				end
			end
		end)

		repeat task.wait() until not flags.nogates
		addconnect:Disconnect()
	end
end)

Tab3:Toggle("Delete Puzzle Door",function(val)
	flags.nopuzzle = val

	if val then
		local addconnect
		addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
			local assets = room:WaitForChild("Assets")
			local paintings = assets:WaitForChild("Paintings",2)

			if paintings then
				local door = paintings:WaitForChild("MovingDoor",2)

				if door then
					door:Destroy() 
				end 
			end
		end)

		repeat task.wait() until not flags.nopuzzle
		addconnect:Disconnect()
	end
end)

local screechremote = entityinfo:FindFirstChild("Screech")

if screechremote then
	Tab3:Toggle("Harmless Screech",function(val)
		flags.noscreech = val

		if val then
			screechremote.Parent = nil
			repeat task.wait() until not flags.noscreech
			screechremote.Parent = entityinfo
		end
	end)
end

Tab3:Toggle("Delete Skeleton Doors",function(val)
	flags.noskeledoors = val

	if val then
		local addconnect
		addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
			local door = room:WaitForChild("Wax_Door",2)

			if door then
				door:Destroy() 
			end
		end)

		repeat task.wait() until not flags.noskeledoors
		addconnect:Disconnect()
	end
end)

Tab6:Label("Credits To Lopvii and Hanki")
Tab6:Label("Credits To zoophiliaphobic for making some stuff")

Tab5:ColorPicker("Glow",Color3.new(0,0,0),function(xd)
	for i, v in pairs(game.CoreGui.Hawk.Main:GetChildren()) do
		if v.Name == "Glow" or v.Name == "Glow_2" or v.Name == "glow" or v.Name == "glow2" then
			v.ImageColor3 = xd
		end
	end
end)
Tab5:ColorPicker("TitleBar",Color3.fromRGB(39, 39, 39),function(xd)
	for i, v in pairs(game.CoreGui.Hawk.Main:GetChildren()) do
		if v.Name == "TitleBar" then
			v.BackgroundColor3 = xd
		elseif v.Name == "Tabs" then
			v.BackgroundColor3 = xd
		end
	end
end)