--PLAYER






local gby 
local ugby
local pby

local premium,dev = true,true

repeat
	wait()
until game:IsLoaded()
task.spawn(function()
	pcall(function()
		local mt = getrawmetatable(game)
		local old = mt.__namecall

		setreadonly(mt, false)

		mt.__namecall = newcclosure(function(self, ...)
			local args = {...}
			local method = getnamecallmethod()

			if method == "Kick" then
				return
			end

			return old(self, ...)
		end)
		setreadonly(mt, true)
	end)
end)
function bypass()

	if game:GetService'Players'.LocalPlayer.PlayerScripts:FindFirstChild('LocalScript') then
		for i, con in next, getconnections(game:GetService'Players'.LocalPlayer.PlayerScripts:FindFirstChild('LocalScript').Changed) do
			con:Disable()
		end
		game:GetService'Players'.LocalPlayer.PlayerScripts:FindFirstChild('LocalScript'):Destroy()
	end
	if game:GetService'Players'.LocalPlayer.PlayerScripts:FindFirstChild('LocalScript2') then
		for i, con in next, getconnections(game:GetService'Players'.LocalPlayer.PlayerScripts:FindFirstChild('LocalScript2').Changed) do
			con:Disable()
		end
		game:GetService'Players'.LocalPlayer.PlayerScripts:FindFirstChild('LocalScript2'):Destroy()
	end
	if game:GetService'Players'.LocalPlayer.Character:FindFirstChild('ExplosiveDeath') then
		game:GetService'Players'.LocalPlayer.Character:FindFirstChild('ExplosiveDeath'):Destroy()
	end
end
spawn(function()
	while true do
		wait()
		bypass()
		gby = true
	end
end)
print("Tower Of Hell Anti Cheat Succesfully Bypassed :) Have Fun!")

local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()

local HttpService = game:GetService("HttpService")
local annen = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Important/owners.json"))
function disablekillwals()
	for i, v in ipairs(game:GetService("Workspace"):FindFirstChild("tower"):FindFirstChild("walls"):GetDescendants()) do
		if v:IsA("Part") and v.Name == "killwall" then
			v:Destroy()
		end
	end
end
spawn(function()
	while wait() do
		pcall(function()
			disablekillwals()
		end)
	end
end)
print("Kill Walls Disabled.")



local owsp = 16
local ojp

local InfiniteJumpEnabled = false

game:GetService('UserInputService').JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState('Jumping')
	end
end)

local NoclipEnabled = false
local NoclipLoopd
local function NoclipLoop()
	if NoclipEnabled == true and game:GetService("Players").LocalPlayer.Character ~= nil then
		for _, child in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
				child.CanCollide = false
			end
		end
	end
end
NoclipLoopd = game:GetService("RunService").Stepped:Connect(NoclipLoop)

--NOCLIP

local antivoidenabled_u = false
local antivoidmode_u = 1
local falval = game:GetService("Workspace").FallenPartsDestroyHeight

function antivoid()
	if antivoidmode_u == 0 then
		if game:GetService("Players").LocalPlayer.Character == nil or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") == nil or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health < 0 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil then
		else
			local falvald = -100
			game:GetService("Workspace").FallenPartsDestroyHeight = math.huge-math.huge
			local hpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y
			if hpos <= falval+20  then
				spawn(function()
					game:GetService'Players'.LocalPlayer.Character:FindFirstChild'HumanoidRootPart'.CFrame = game:GetService'Players'.LocalPlayer.Character:FindFirstChild'HumanoidRootPart'.CFrame + Vector3.new(0,20,0)
				end)
			end
		end
	elseif antivoidmode_u == 1 then
		if game:GetService("Players").LocalPlayer.Character == nil or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") == nil or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health < 0 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil then
		else
			local falvald = -100
			game:GetService("Workspace").FallenPartsDestroyHeight = math.huge-math.huge
			local hpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y
			if hpos <= falval+20  then
				spawn(function()
					game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState('Jumping')
					game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState('Jumping')
					game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState('Jumping')
				end)
			end
		end
	end
end

spawn(function()
	while true do
		if antivoidenabled_u == true then
			antivoid()
		else
			game:GetService("Workspace").FallenPartsDestroyHeight = falval
		end
		wait()
	end
end)
--antivoid

local walkspeedmethod = 0
local walkspeeddd = 16
local walktwen = game:GetService("TweenService")
local walkrser

local function updatewalkspeed()
	if walkspeedmethod == 0 then
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil then
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = walkspeeddd
		end
	elseif walkspeedmethod == 1 then
		pcall(function() 
			walktwen:Cancel() 
		end)

		local spedo = walkspeeddd
		local methedo = walkspeedmethod
		local moqqa = walktwen:Create(game.Players.LocalPlayer.Character.Humanoid,TweenInfo.new(1),{WalkSpeed = spedo}):Play()
		spawn(function()
			pcall(function()
				repeat
					wait()
				until walkspeeddd ~= spedo or walkspeedmethod ~= methedo 
				moqqa:Cancel()
			end)
		end)
	elseif walkspeedmethod == 2 then
		local walkSpeed = walkspeeddd

		local spedo = walkspeeddd
		local methedo = walkspeedmethod
		spawn(function()
			pcall(function()
				repeat
					wait()
				until walkspeedmethod ~= methedo or spedo ~= walkspeeddd
				walkrser:Disconnect()
			end)
		end)

		local UIS = game:GetService("UserInputService")
		local RS = game:GetService("RunService")
		local W, A, S, D
		local xVelo, yVelo

		walkrser = RS.RenderStepped:Connect(function()
			local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
			local C = game.Workspace.CurrentCamera
			local LV = C.CFrame.LookVector
			for i,v in pairs(UIS:GetKeysPressed()) do
				if v.KeyCode == Enum.KeyCode.W then
					W = true
				end
				if v.KeyCode == Enum.KeyCode.A then
					A = true
				end
				if v.KeyCode == Enum.KeyCode.S then
					S = true
				end
				if v.KeyCode == Enum.KeyCode.D then
					D = true
				end
			end

			if W == true and S == true then
				yVelo = false
				W,S = nil
			end

			if A == true and D == true then
				xVelo = false
				A,D = nil
			end

			if yVelo ~= false then
				if W == true then
					if xVelo ~= false then
						if A == true then
							local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(45), 0)).LookVector
							HRP.Velocity = Vector3.new((LeftLV.X * walkSpeed), HRP.Velocity.Y, (LeftLV.Z * walkSpeed))
							W,A = nil
						else
							if D == true then
								local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-45), 0)).LookVector
								HRP.Velocity = Vector3.new((RightLV.X * walkSpeed), HRP.Velocity.Y, (RightLV.Z * walkSpeed))
								W,D = nil
							end
						end
					end
				else
					if S == true then
						if xVelo ~= false then
							if A == true then
								local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(135), 0)).LookVector
								HRP.Velocity = Vector3.new((LeftLV.X * walkSpeed), HRP.Velocity.Y, (LeftLV.Z * walkSpeed))
								S,A = nil
							else
								if D == true then
									local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-135), 0)).LookVector
									HRP.Velocity = Vector3.new((RightLV.X * walkSpeed), HRP.Velocity.Y, (RightLV.Z * walkSpeed))
									S,D = nil
								end
							end
						end
					end
				end
			end

			if W == true then
				HRP.Velocity = Vector3.new((LV.X * walkSpeed), HRP.Velocity.Y, (LV.Z * walkSpeed))
			end
			if S == true then
				HRP.Velocity = Vector3.new(-(LV.X * walkSpeed), HRP.Velocity.Y, -(LV.Z * walkSpeed))
			end
			if A == true then
				local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(90), 0)).LookVector
				HRP.Velocity = Vector3.new((LeftLV.X * walkSpeed), HRP.Velocity.Y, (LeftLV.Z * walkSpeed))
			end
			if D == true then
				local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-90), 0)).LookVector
				HRP.Velocity = Vector3.new((RightLV.X * walkSpeed), HRP.Velocity.Y, (RightLV.Z * walkSpeed))
			end

			xVelo, yVelo, W, A, S, D = nil
		end)

		--method 3 got from v3rm credits : forgot
	end
end
--walkspeeddd = 31
--walkspeedmethod = 2
--updatewalkspeed()

local jumppwer = 50
local jumppwermethod = 0
local jumppwertween
function updatejumppower()
	if jumppwermethod == 0 then
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil then
			game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower = jumppwer
		end
	elseif jumppwermethod == 1 then
		pcall(function() 
			walktwen:Cancel() 
		end)
		local methedo = jumppwermethod
		local powerdo = jumppwer
		spawn(function()
			pcall(function()
				repeat
					wait()
				until jumppwer ~= powerdo or jumppwermethod ~= methedo 
				moqqa:Cancel()
			end)
		end)
		jumppwertween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.Humanoid,TweenInfo.new(1),{JumpPower = jumppwer}):Play()
	elseif jumppwermethod == 2 then
		local p = game.Players.LocalPlayer.Character.HumanoidRootPart
		local yeah_this_is_yeah = Instance.new("BodyForce")
		yeah_this_is_yeah.Parent = p
		yeah_this_is_yeah.Force = Vector3.new(0, jumppwer, 0)
		local methedo = jumppwermethod
		local powerdo = jumppwer
		spawn(function()
			pcall(function()
				repeat
					wait()
				until jumppwer ~= powerdo or jumppwermethod ~= methedo 
				yeah_this_is_yeah.Force = Vector3.new(0, 0, 0)
			end)
		end)
	end
end
--jumppwer = 100
--jumppwermethod = 2
--updatejumppower()
function respawnd(plr)
	local char = plr.Character
	if char:FindFirstChildOfClass('Humanoid') then char:FindFirstChildOfClass('Humanoid'):ChangeState(15) end
	char:ClearAllChildren()
	local newChar = Instance.new('Model')
	newChar.Parent = workspace
	plr.Character = newChar
	wait()
	plr.Character = char
	newChar:Destroy()
end
function refresh(plr)
	local Human = plr.Character and plr.Character:FindFirstChildOfClass('Humanoid', true)
	local pos = Human and Human.RootPart and Human.RootPart.CFrame
	local pos1 = workspace.CurrentCamera.CFrame
	respawnd(plr)
	task.spawn(function()
		plr.CharacterAdded:Wait():WaitForChild('Humanoid').RootPart.CFrame, workspace.CurrentCamera.CFrame = pos, wait() and pos1
	end)
end

local godded = false
function god()
	local Cam = workspace.CurrentCamera
	local Pos, Char = Cam.CFrame, game:GetService('Players').LocalPlayer.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, 'Humanoid')
	local nHuman = Human.Clone(Human)
	nHuman.Parent, game:GetService('Players').LocalPlayer.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	game:GetService('Players').LocalPlayer.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, 'Animate')
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth
end
--god()


local flyinh =false
local flyenabled = false
local flyspeed = 1
local tweenfly
local normalfly
function updatefly()
	--Full credit to peyton#9148
	if flyenabled then
		flyenabled = false
		pcall(function()
			tweenfly:Disconnect()
			game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			local Head = game:GetService("Players").LocalPlayer.Character:WaitForChild("Head")
			Head.Anchored = false
		end)
	else
		local spedo = flyspeed
		local flyino = flyinh
		spawn(function()
			pcall(function()
				repeat
					wait()
				until flyino ~= flyinh
				tweenfly:Disconnect()
				game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
				local Head = game:GetService("Players").LocalPlayer.Character:WaitForChild("Head")
				Head.Anchored = false
			end)
		end)
		flyenabled = true
		game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
		local Head = game:GetService("Players").LocalPlayer.Character:WaitForChild("Head")
		Head.Anchored = true
		tweenfly = game:GetService("RunService").Heartbeat:Connect(function(deltaTime)
			local moveDirection = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').MoveDirection * (flyspeed * deltaTime)
			local headCFrame = Head.CFrame
			local cameraCFrame = workspace.CurrentCamera.CFrame
			local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position
			cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
			local cameraPosition = cameraCFrame.Position
			local headPosition = headCFrame.Position

			local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
			Head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
		end)

	end
end
--flyspeed = 22
--updatefly()



local invisEnabled = false 
function invis()
	if invisEnabled then return end
	invisEnabled = true
	-- Full credit to AmokahFox @V3rmillion
	local Player = game:GetService("Players").LocalPlayer
	repeat wait(.1) until Player.Character
	local Character = Player.Character
	Character.Archivable = true
	local IsInvis = false
	local IsRunning = true
	local InvisibleCharacter = Character:Clone()
	InvisibleCharacter.Parent = game:GetService("Lighting")
	local Void = workspace.FallenPartsDestroyHeight
	InvisibleCharacter.Name = ""
	local CF

	function Respawn()
		IsRunning = false
		if IsInvis == true then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				IsInvis = false
				InvisibleCharacter.Parent = nil
				invisEnabled = false
			end)
		elseif IsInvis == false then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				TurnVisible()
			end)
		end
	end

	local invisFix = game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			local IsInteger
			if tostring(Void):find'-' then
				IsInteger = true
			else
				IsInteger = false
			end
			local Pos = Player.Character.HumanoidRootPart.Position
			local Pos_String = tostring(Pos)
			local Pos_Seperate = Pos_String:split(', ')
			local X = tonumber(Pos_Seperate[1])
			local Y = tonumber(Pos_Seperate[2])
			local Z = tonumber(Pos_Seperate[3])
			if IsInteger == true then
				if Y <= Void then
					Respawn()
				end
			elseif IsInteger == false then
				if Y >= Void then
					Respawn()
				end
			end
		end)
	end)

	for i,v in pairs(InvisibleCharacter:GetDescendants())do
		if v:IsA("BasePart") then
			if v.Name == "HumanoidRootPart" then
				v.Transparency = 1
			else
				v.Transparency = .4
			end
		end
	end



	local invisDied
	invisDied = InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
		Respawn()
		invisDied:Disconnect()
	end)

	if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = Player.Character.HumanoidRootPart.CFrame
	Character:MoveTo(Vector3.new(0,math.pi*1000000,0))
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	wait(.2)
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	InvisibleCharacter = InvisibleCharacter
	Character.Parent = game:GetService("Lighting")
	InvisibleCharacter.Parent = game:GetService("Workspace")
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	Player.Character = InvisibleCharacter
	workspace.CurrentCamera:remove()
	wait(.1)
	repeat wait() until Player.Character ~= nil
	workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	Player.CameraMinZoomDistance = 0.5
	Player.CameraMaxZoomDistance = 400
	Player.CameraMode = "Classic"
	Player.Character.Head.Anchored = false
	Player.Character.Animate.Disabled = true
	Player.Character.Animate.Disabled = false
	for i,v in ipairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v:IsA("Part") and v.Name == "hitbox" then
			v.Transparency = 1
		end
	end
	for i, v in ipairs(game:GetService("StarterGui"):GetChildren()) do
		for d, f in ipairs(game:GetService("Players").LocalPlayer.PlayerGui:GetChildren()) do
			if f.Name == v.Name then
				f:Destroy()
			end
		end  
	end
	for i, v in ipairs(game:GetService("StarterGui"):GetChildren()) do
		local cloned = v:Clone()
		cloned.Parent = game:GetService("Players").LocalPlayer.PlayerGui  
	end
	function TurnVisible()
		if IsInvis == false then return end
		invisFix:Disconnect()
		invisDied:Disconnect()
		CF = workspace.CurrentCamera.CFrame
		Character = Character
		local CF_1 = Player.Character.HumanoidRootPart.CFrame
		Character.HumanoidRootPart.CFrame = CF_1
		InvisibleCharacter:Destroy()
		Player.Character = Character
		Character.Parent = workspace
		IsInvis = false
		Player.Character.Animate.Disabled = true
		Player.Character.Animate.Disabled = false

		invisDied = Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			Respawn()
			invisDied:Disconnect()
		end)
		invisEnabled = false

	end

end
--INVIS

function reflocal()
	refresh(game:GetService("Players").LocalPlayer)
end
--RESPAWN


function bypassacs()
	local statetype = Enum.HumanoidStateType
	local rnd = Random.new():NextInteger(150, 100000)
	local mt = getrawmetatable(statetype)
	local mt_index = mt.__index
	setreadonly(mt, false)

	mt.__index = newcclosure(function(t, k)
		if not checkcaller() and t == statetype and k == 'StrafingNoPhysics' then
			return rnd
		end

		return mt_index(t, k)
	end)

	setreadonly(mt, true)
	local Rm, Index, NIndex, NCall, Caller = getrawmetatable(game), getrawmetatable(game).__index, getrawmetatable(game).__newindex, getrawmetatable(game).__namecall, checkcaller or is_protosmasher_caller
	setreadonly(Rm, false)
	Rm.__newindex = newcclosure(function(self, Meme, Value)
		if Caller() then return NIndex(self, Meme, Value) end 
		if tostring(self) == 'HumanoidRootPart' or tostring(self) == 'Torso' then 
			if Meme == 'CFrame' and self:IsDescendantOf(game:GetService('Players').LocalPlayer.Character) then 
				return true -- Credits to ze_lI for this
			end
		end
		return NIndex(self, Meme, Value)
	end)
	setreadonly(Rm, true)

	local getrawmetatable = getrawmetatable or debug.getmetatable
	local setrawmetatable = setrawmetatable or debug.setmetatable

	local Meta = getrawmetatable(game)
	local Me = game:GetService('Players').LocalPlayer
	local New = {}
	for Name, Method in next, Meta do
		New[Name] = Method
	end
	local FakeHumanoid = Instance.new('Humanoid')
	New.__index = newcclosure(function(self, index)
		if index == 'WalkSpeed' then
			return owsp
		elseif index == 'Changed' then
			return Meta.__index(FakeHumanoid, 'Changed')
		else
			return Meta.__index(self, index)
		end
	end)
	New.__namecall = newcclosure(function(self, ...)
		local Args = {...}
		local Method = Args[#Args]
		if Method == 'GetPropertyChangedSignal' then
			return Meta.__namecall(FakeHumanoid, ...)
		else
			return Meta.__namecall(self, ...)
		end
	end)

	local HookChar = function(Char)
		if Char then
			setrawmetatable(Char:WaitForChild('Humanoid'), New)
		end
	end
	HookChar(game:GetService('Players').LocalPlayer.Character)
	local Hook;
	Hook = hookfunction(getrenv().require, newcclosure(function(...)
		local Args = {...}

		if not checkcaller() then
			if (getcallingscript().Name == 'HDAdminStarterPlayer' and Args[1].Name == 'MainFramework') then
				return wait(10e1)
			end
		end

		return Hook(unpack(Args))
	end))
	local GetFullName = game.GetFullName
	local Hook;
	Hook = hookfunction(getrenv().require, newcclosure(function(...)
		local Args = {...}

		if not checkcaller() then
			if (GetFullName(getcallingscript()) == '.ClientMover' and Args[1].Name == 'Client') then
				return wait(10e1)
			end
		end

		return Hook(unpack(Args))
	end))
--[[    local LocalPlayer = game:GetService('Players').LocalPlayer.Character.Humanoid
    local OldIndex = nil
    
    OldIndex = hookmetamethod(game, '__index', function(...)
        local Self, Key = ...
    
        if not checkcaller() and Self == LocalPlayer and Key == 'JumpPower' or Key == 'HipHeight' or Key == 'Size' then
            return
        end
    
        return OldIndex(...)
    end)
    ]]
	local OldNameCall = nil

	OldNameCall = hookmetamethod(game, '__namecall', function(...)
		local Args = {...}


		if not checkcaller() and getnamecallmethod() == 'GetPropertyChangedSignal' then
			warn('hooking2')
			wait(9e9)
		end

		return OldNameCall(...)
	end)
	pcall(function()local OldNameCall OldNameCall = hookmetamethod(game, '__namecall', function(...)    
			local args = {...}
			if getnamecallmethod() == 'FireServer' then
				if string.find(tostring(args[1]),'fearthe11') then
					return --nil   
				end
			end
			return OldNameCall(...)
		end)
	end)
	local GMT = getrawmetatable(game)
	local NCO = GMT.__namecall
	setreadonly(GMT, false)

	GMT.__namecall = newcclosure(function(self, ...)
		local args = {...}
		if self.Name == "HumanoidRootPart" then
			if args[1] == "Velocity" then
				return
			end
		end
		return NCO(self, ...)
	end)
	setreadonly(GMT, true)
	for _,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do
		print("found ScriptContext error detection, removing")
		v:Disable()
	end
	for _,v in pairs(getconnections(game:GetService("LogService").MessageOut)) do
		print("found LogService output detection, removing")
		v:Disable()
	end
	local mt = getrawmetatable(game)
	local old = mt.__namecall
	local protect = newcclosure or protect_function

	if not protect then
		protect = function(f) 
			return f 
		end
	end

	setreadonly(mt, false)
	mt.__namecall = protect(function(self, ...)
		local method = getnamecallmethod()

		if method == "Kick" then   
			wait(9e9)
			return
		end
		return old(self, ...)
	end)

	hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() 
		wait(9e9) 
	end))
	print("Universal Anti-Exploit Bypasser Loaded. Have Fun :)")
end

spawn(function()
	pcall(function()
		ugby = true
		spawn(function()
			bypassacs()
		end)
	end)
end)

function prebypasses()
	-- Pretty much just a bunch of know detection bypasses. (Big thanks to Lego Hacker, Modulus, Bluwu, and I guess Iris or something)

	-- GCInfo/CollectGarbage Bypass (Realistic by Lego - Amazing work!)
	task.spawn(function()
		repeat task.wait() until game:IsLoaded()

		local Amplitude = 200
		local RandomValue = {-15,15}
		local RandomTime = {.5, 1.5}

		local floor = math.floor
		local cos = math.cos
		local sin = math.sin
		local acos = math.acos
		local pi = math.pi

		local Maxima = 0

		--Waiting for gcinfo to decrease
		while task.wait() do
			if gcinfo() >= Maxima then
				Maxima = gcinfo()
			else
				break
			end
		end

		task.wait(0.30)

		local OldGcInfo = gcinfo()+Amplitude
		local tick = 0

		--Spoofing gcinfo
		local Old; Old = hookfunction(gcinfo, function(...)
			local Formula = ((acos(cos(pi * (tick)))/pi * (Amplitude * 2)) + -Amplitude )
			return floor(OldGcInfo + Formula)
		end)
		local Old2; Old2 = hookfunction(collectgarbage, function(arg, ...)
			local suc, err = pcall(Old2, arg, ...)
			if suc and arg == "collect" then
				return gcinfo(...)
			end
			return Old2(arg, ...)
		end)


		game:GetService("RunService").Stepped:Connect(function()
			local Formula = ((acos(cos(pi * (tick)))/pi * (Amplitude * 2)) + -Amplitude )
			if Formula > ((acos(cos(pi * (tick)+.01))/pi * (Amplitude * 2)) + -Amplitude ) then
				tick = tick + .07
			else
				tick = tick + 0.01
			end
		end)

		local old1 = Amplitude
		for i,v in next, RandomTime do
			RandomTime[i] = v * 10000
		end

		local RandomTimeValue = math.random(RandomTime[1],RandomTime[2])/10000

		--I can make it 0.003 seconds faster, yea, sure
		while wait(RandomTime) do
			Amplitude = math.random(old1+RandomValue[1], old1+RandomValue[2])
			RandomTimeValue = math.random(RandomTime[1],RandomTime[2])/10000
		end
	end)

	-- Memory Bypass
	task.spawn(function()
		repeat task.wait() until game:IsLoaded()

		local RunService = cloneref(game:GetService("RunService"))
		local Stats = cloneref(game:GetService("Stats"))

		local CurrMem = Stats:GetTotalMemoryUsageMb();
		local Rand = 0

		RunService.Stepped:Connect(function()
			Rand = math.random(-3,3)
		end)

		local _MemBypass
		_MemBypass = hookmetamethod(game, "__namecall", function(self,...)
			local method = getnamecallmethod();

			if not checkcaller() then
				if typeof(self) == "Instance" and (method == "GetTotalMemoryUsageMb" or method == "getTotalMemoryUsageMb") and self.ClassName == "Stats" then
					return CurrMem + Rand;
				end
			end

			return _MemBypass(self,...)
		end)

		-- Indexed Versions
		local _MemBypassIndex; _MemBypassIndex = hookfunction(Stats.GetTotalMemoryUsageMb, function(self, ...)
			if not checkcaller() then
				if typeof(self) == "Instance" and self.ClassName == "Stats" then
					return CurrMem + Rand;
				end
			end
		end)
	end)

	-- ContentProvider Bypasses
	local Content = cloneref(game:GetService("ContentProvider"));
	local CoreGui = cloneref(game:GetService("CoreGui"));
	local randomizedCoreGuiTable;
	local randomizedGameTable;

	local coreguiTable = {}

	game:GetService("ContentProvider"):PreloadAsync({CoreGui}, function(assetId) --use preloadasync to patch preloadasync :troll:
		if not assetId:find("rbxassetid://") then
			table.insert(coreguiTable, assetId);
		end
	end)
	local gameTable = {}

	for i, v in pairs(game:GetDescendants()) do
		if v:IsA("ImageLabel") then
			if v.Image:find('rbxassetid://') and v:IsDescendantOf(CoreGui) then else
				table.insert(gameTable, v.Image)
			end
		end
	end

	function randomizeTable(t)
		local n = #t
		while n > 0 do
			local k = math.random(n)
			t[n], t[k] = t[k], t[n]
			n = n - 1
		end
		return t
	end

	local ContentProviderBypass
	ContentProviderBypass = hookmetamethod(game, "__namecall", function(self, Instances, ...)
		local method = getnamecallmethod();
		local args = ...;

		if not checkcaller() and (method == "preloadAsync" or method == "PreloadAsync") then
			if Instances and Instances[1] and self.ClassName == "ContentProvider" then
				if Instances ~= nil then
					if typeof(Instances[1]) == "Instance" and (table.find(Instances, CoreGui) or table.find(Instances, game)) then
						if Instances[1] == CoreGui then
							randomizedCoreGuiTable = randomizeTable(coreguiTable)
							return ContentProviderBypass(self, randomizedCoreGuiTable, ...)
						end

						if Instances[1] == game then
							randomizedGameTable = randomizeTable(gameTable)
							return ContentProviderBypass(self, randomizedGameTable, ...)
						end
					end
				end
			end
		end

		return ContentProviderBypass(self, Instances, ...)
	end)

	local preloadBypass; preloadBypass = hookfunction(Content.PreloadAsync, function(a, b, c)
		if not checkcaller() then
			if typeof(a) == "Instance" and tostring(a) == "ContentProvider" and typeof(b) == "table" then
				if (table.find(b, CoreGui) or table.find(b, game)) and not (table.find(b, true) or table.find(b, false)) then
					if b[1] == CoreGui then -- Double Check
						randomizedCoreGuiTable = randomizeTable(coreguiTable)
						return preloadBypass(a, randomizedCoreGuiTable, c)
					end
					if b[1] == game then -- Triple Check
						randomizedGameTable = randomizeTable(gameTable)
						return preloadBypass(a, randomizedGameTable, c)
					end
				end
			end
		end

		return preloadBypass(a, b, c)
	end)

	-- GetFocusedTextBox Bypass
	local _IsDescendantOf = game.IsDescendantOf

	local TextboxBypass
	TextboxBypass = hookmetamethod(game, "__namecall", function(self,...)
		local method = getnamecallmethod();
		local args = ...;

		if not checkcaller() then
			if typeof(self) == "Instance" and method == "GetFocusedTextBox" and self.ClassName == "UserInputService" then
				local Textbox = TextboxBypass(self,...);
				if Textbox and typeof(Textbox) == "Instance" then
					local succ,err = pcall(function() _IsDescendantOf(Textbox, Bypassed_Dex) end)

					if err and err:match("The current identity") then
						return nil;
					end
				end
			end
		end

		return TextboxBypass(self,...);
	end)

	--Newproxy Bypass (Stolen from Lego Hacker (V3RM))
	local TableNumbaor001 = {}
	local SomethingOld;
	SomethingOld = hookfunction(getrenv().newproxy, function(...)
		local proxy = SomethingOld(...)
		table.insert(TableNumbaor001, proxy)
		return proxy
	end)

	local RunService = cloneref(game:GetService("RunService"))
	RunService.Stepped:Connect(function()
		for i,v in pairs(TableNumbaor001) do
			if v == nil then end
		end
	end)

end

spawn(function()
	pcall(function()
		if premium or dev then
			prebypasses()
			pby = true
			print("Premium Bypasser Loaded. Have Fun :)")
		end
	end)
end)

    --[[
        local statetype = Enum.HumanoidStateType
    local rnd = Random.new():NextInteger(150, 100000)
    local mt = getrawmetatable(statetype)
    local mt_index = mt.__index
    setreadonly(mt, false)
    
    mt.__index = newcclosure(function(t, k)
       if not checkcaller() and t == statetype and k == 'StrafingNoPhysics' then
           return rnd
       end
    
       return mt_index(t, k)
    end)
    
    setreadonly(mt, true)
    ]]



---UNIVERSAL

------------TOH

function getallitems()
	local bpak = game:GetService'Players'.LocalPlayer.Backpack
	local itemstor = game:GetService('ReplicatedStorage'):FindFirstChild('Gear')
	for i, v in ipairs(itemstor:GetChildren()) do
		if v:IsA('Tool') then
			v:Clone().Parent = bpak
		end
	end
end

--getallitems()

local godmodeenabled = false

function godmode()
	if game:GetService'Players'.LocalPlayer.Character:FindFirstChild('ExplosiveDeath') then
		game:GetService'Players'.LocalPlayer.Character:FindFirstChild('ExplosiveDeath'):Destroy()
	end
	if game:GetService'Players'.LocalPlayer.Character:FindFirstChild('KillScript') then
		game:GetService'Players'.LocalPlayer.Character:FindFirstChild('KillScript'):Destroy()
	end
end



spawn(function()
	while true do
		wait()
		pcall(function()
			if godmodeenabled then
				if game:GetService'Players'.LocalPlayer.Character:FindFirstChild('KillScript') or game:GetService'Players'.LocalPlayer.Character:FindFirstChild('ExplosiveDeath') and game:GetService'Players'.LocalPlayer.Character.Humanoid.Health > 0 then
					godmode()
				end
			end
		end)
	end
end)


local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
	AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
	table.insert(AllIDs, actualHour)
	writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
	local Site;
	if foundAnything == "" then
		Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
	else
		Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
	end
	local ID = ""
	if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
		foundAnything = Site.nextPageCursor
	end
	local num = 0;
	for i,v in pairs(Site.data) do
		local Possible = true
		ID = tostring(v.id)
		if tonumber(v.maxPlayers) > tonumber(v.playing) then
			for _,Existing in pairs(AllIDs) do
				if num ~= 0 then
					if ID == tostring(Existing) then
						Possible = false
					end
				else
					if tonumber(actualHour) ~= tonumber(Existing) then
						local delFile = pcall(function()
							delfile("NotSameServers.json")
							AllIDs = {}
							table.insert(AllIDs, actualHour)
						end)
					end
				end
				num = num + 1
			end
			if Possible == true then
				table.insert(AllIDs, ID)
				wait()
				pcall(function()
					writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
					wait()
					game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
				end)
				wait(4)
			end
		end
	end
end

function Teleport()
	while wait() do
		pcall(function()
			TPReturner()
			if foundAnything ~= "" then
				TPReturner()
			end
		end)
	end
end
function checkadmin()
	game.Players.PlayerAdded:Connect(function(hit)
		if hit:IsInGroup(4217910) and hit:GetRoleInGroup(4217910) == 'Builder' or hit:GetRoleInGroup(4217910) == 'Admin' or hit:GetRoleInGroup(4217910) == 'Developer' or hit:GetRoleInGroup(4217910) == 'Creator' then
			game:GetService('Players').LocalPlayer:Kick('Admin Joined The Game. Changing Server...')
    --[[local Servers = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/'..game.PlaceId..'/servers/Public?sortOrder=Asc&limit=100'))
    for i,v in pairs(Servers.data) do
      if v.playing ~= v.maxPlayers and v.playing >= 6  then
          game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, v.id)
      end
    end]]
			Teleport()
		end
	end)
end
checkadmin()


function tween(prt,cfe,time)
	local tween =  game:GetService('TweenService'):Create(prt, TweenInfo.new(time,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{CFrame = cfe})
	tween:Play()
	tween.Completed:Wait()
	tween:Destroy()
end

local antivoidenabled = false
local antivoidmode = 1
local falval = game:GetService("Workspace").FallenPartsDestroyHeight

function antivoidchc()
	if antivoidmode == 0 then
		if game:GetService("Players").LocalPlayer.Character == nil or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") == nil or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health < 0 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil then
		else
			local falvald = -100
			game:GetService("Workspace").FallenPartsDestroyHeight = math.huge-math.huge
			local hpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y
			if hpos <= falval+20  then
				spawn(function()
					game:GetService'Players'.LocalPlayer.Character:FindFirstChild'HumanoidRootPart'.CFrame = game:GetService'Players'.LocalPlayer.Character:FindFirstChild'HumanoidRootPart'.CFrame + Vector3.new(0,40,0)
				end)
			end
		end
	elseif antivoidmode == 1 then
		if game:GetService("Players").LocalPlayer.Character == nil or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") == nil or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health < 0 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") == nil then
		else
			local falvald = -100
			game:GetService("Workspace").FallenPartsDestroyHeight = math.huge-math.huge
			local hpos = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y
			if hpos <= falval+20  then
				spawn(function()
					game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState('Jumping')
					game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState('Jumping')
					game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState('Jumping')
				end)
			end
		end
	end
end

spawn(function()
	while true do
		if antivoidenabled == true then
			antivoidchc()
		else
			game:GetService("Workspace").FallenPartsDestroyHeight = falval
		end
		wait()
	end
end)

function deleteefects()
	if game:GetService('Players').LocalPlayer.Character:FindFirstChild('bunnyJump') then
		game:GetService('Players').LocalPlayer.Character:FindFirstChild('bunnyJump'):Destroy() 
	else

	end
	if game:GetService("Lighting"):FindFirstChild('Negative') then
		game:GetService("Lighting"):FindFirstChild('Negative'):Destroy() 
	else

	end
	if game:GetService("Lighting"):FindFirstChild('hourglassColor') then
		game:GetService("Lighting"):FindFirstChild('hourglassColor'):Destroy() 
	else

	end
	if game:GetService('Players').LocalPlayer.Character:FindFirstChild('speedscript') then
		game:GetService('Players').LocalPlayer.Character:FindFirstChild('speedscript'):Destroy() 
	else

	end
	pcall(function()
		game.Lighting.FogEnd = 1000000
	end)
end

local protower = false
spawn(function()
	pcall(function()
		if game:GetService("Workspace"):FindFirstChild("tower"):FindFirstChild("maxCoins") ~= nil and game:GetService("Workspace"):FindFirstChild("tower"):FindFirstChild("maxCoins").Value > 100 then
			protower = true
		end
	end)
end)

local mode = 1

local function finish()
	bypass()
	godmodeenabled = true

	repeat
		wait()
	until game:GetService('Players').LocalPlayer.Character:FindFirstChild("Humanoid") ~= nil and game:GetService'Players'.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil
	bypass()
	antivoidenabled = true
	if mode == 1 then
		if game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer') == nil or game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer'):FindFirstChild('timeLeft').TextColor3 == Color3.fromRGB(0, 255, 0) then 
			repeat
				if game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate') then
					game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate').Parent = game:GetService('ReplicatedFirst')
				end
				local arylisyt = {Vector3.new(-20, -4, -45),Vector3.new(32, -3, 31),Vector3.new(0, -4, -0),Vector3.new(-27, -4, -1),Vector3.new(20, -4, -2),Vector3.new(-31, 1, 29),Vector3.new(10, -4, -29),Vector3.new(37, -4, 11),Vector3.new(-12, -4, 1),Vector3.new(-8, -4, 39),Vector3.new(4, -4, -18),Vector3.new(23, -4, 10),Vector3.new(-10, -4, 11),Vector3.new(-25, -4, -8),Vector3.new(8, -4, -8),Vector3.new(20, -4, 12),Vector3.new(-2, -4, 20),Vector3.new(-40, 2, 16),Vector3.new(-33, -4, -8),Vector3.new(25, -4, -14),Vector3.new(19, -4, 1),Vector3.new(-4, -4, -11),Vector3.new(-19, -4, -16),Vector3.new(-9, 7, -40),Vector3.new(19, 8, -42),Vector3.new(30, -4, 20),Vector3.new(-15, -4, -9)}
				local Pos = arylisyt[math.random(1,#arylisyt)]    
				game:GetService('Players').LocalPlayer.Character.Humanoid:MoveTo(Pos)
				wait(0.7)
				local adasdas = math.random(1,5)
				local assdad = math.random(1,5)
				if assdad == adasdas then
					game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true
				end
			until game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer') == nil or game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer'):FindFirstChild('timeLeft').TextColor3 == Color3.fromRGB(255, 255, 255)
			godmodeenabled = false
			antivoidenabled = false
			wait(1)
			bypass()
		else
			local step = 2
			local sted = 0
			if game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections') then
				repeat
					if game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate') then
						game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate').Parent = game:GetService('ReplicatedFirst')
					end
					local arylisyt = {Vector3.new(-20, -4, -45),Vector3.new(32, -3, 31),Vector3.new(0, -4, -0),Vector3.new(-27, -4, -1),Vector3.new(20, -4, -2),Vector3.new(-31, 1, 29),Vector3.new(10, -4, -29),Vector3.new(37, -4, 11),Vector3.new(-12, -4, 1),Vector3.new(-8, -4, 39),Vector3.new(4, -4, -18),Vector3.new(23, -4, 10),Vector3.new(-10, -4, 11),Vector3.new(-25, -4, -8),Vector3.new(8, -4, -8),Vector3.new(20, -4, 12),Vector3.new(-2, -4, 20),Vector3.new(-40, 2, 16),Vector3.new(-33, -4, -8),Vector3.new(25, -4, -14),Vector3.new(19, -4, 1),Vector3.new(-4, -4, -11),Vector3.new(-19, -4, -16),Vector3.new(-9, 7, -40),Vector3.new(19, 8, -42),Vector3.new(30, -4, 20),Vector3.new(-15, -4, -9)}
					local Pos = arylisyt[math.random(1,#arylisyt)]    
					game:GetService('Players').LocalPlayer.Character.Humanoid:MoveTo(Pos)
					local adasdas = math.random(1,5)
					local assdad = math.random(1,5)
					if assdad == adasdas then
						game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true
					end
					wait(1)
					sted = sted + 1
				until sted == 10

				for i, v in ipairs(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):GetChildren()) do
					if game:GetService('Players').LocalPlayer.Character.Humanoid.Health > 0  then else return end
					godmodeenabled = true
					deleteefects()
					if v:IsA('Model') and v.Name ~= 'start' and v.Name ~= 'finish' then
						for b, f in ipairs(v:GetChildren()) do
							if game:GetService('Players').LocalPlayer.Character.Humanoid.Health > 0  then else return end
							godmodeenabled = true
							deleteefects()
							if f:IsA('IntValue') and f.Name == 'i' then

								if v:FindFirstChild('start') then else return end
								if v:FindFirstChild('stop') then else return end
								step = step + 1
								--255,0,0
								if game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer') ~= nil and game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer'):FindFirstChild('timeLeft').TextColor3 == Color3.fromRGB(255, 0, 0) and step < 5 then
									if protower then
										local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
										tween(lp,CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('FinishGlow').Position),1.5)
										wait(2)
									else
										local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
										tween(lp,CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('FinishGlow').Position),1.5)
										local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
										tween(lp,CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('FinishGlow').Position),1.5)
										wait(2)
									end
								else
									local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart

									tween(lp,v:FindFirstChild('start').CFrame + Vector3.new(0,2,0),1.5)

									game:GetService('Players').LocalPlayer.Character:FindFirstChild("currentSection").Value = step

									game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState('Jumping')

									local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
									lp.CFrame = CFrame.new(v:FindFirstChild('start').CFrame.Position + Vector3.new(0,2,0))

									wait(0.5)

									game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState('Jumping')

									local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart

									tween(lp,v:FindFirstChild('stop').CFrame + Vector3.new(0,2,0),1.5) 

									local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
									lp.CFrame = CFrame.new(v:FindFirstChild('stop').CFrame.Position + Vector3.new(0,2,0))

								end
							end
						end
					end
				end
			end
			if game:GetService('Players').LocalPlayer.Character.Humanoid.Health > 0  then 
				godmodeenabled = true
				if game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('FinishGlow') then
					local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
					tween(lp,CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('FinishGlow').Position),1.5)
					local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
					tween(lp,CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('FinishGlow').Position),1.5)
					wait(2)
					if game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('start') then
						local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
						tween(lp,CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('start').Position + Vector3.new(0,10,0)),1.5)
						game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true
						wait(.5)
						game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true
						tween(lp,CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('start').Position + Vector3.new(0,10,0)),1.5)
						game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true
						wait(.5)
						game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true
						wait(1)
						local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
						lp.CFrame = CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('start').Position + Vector3.new(0,10,0))
					end

					repeat
						if game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate') then
							game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate').Parent = game:GetService('ReplicatedFirst')
						end
						local arylisyt = {Vector3.new(-20, -4, -45),Vector3.new(32, -3, 31),Vector3.new(0, -4, -0),Vector3.new(-27, -4, -1),Vector3.new(20, -4, -2),Vector3.new(-31, 1, 29),Vector3.new(10, -4, -29),Vector3.new(37, -4, 11),Vector3.new(-12, -4, 1),Vector3.new(-8, -4, 39),Vector3.new(4, -4, -18),Vector3.new(23, -4, 10),Vector3.new(-10, -4, 11),Vector3.new(-25, -4, -8),Vector3.new(8, -4, -8),Vector3.new(20, -4, 12),Vector3.new(-2, -4, 20),Vector3.new(-40, 2, 16),Vector3.new(-33, -4, -8),Vector3.new(25, -4, -14),Vector3.new(19, -4, 1),Vector3.new(-4, -4, -11),Vector3.new(-19, -4, -16),Vector3.new(-9, 7, -40),Vector3.new(19, 8, -42),Vector3.new(30, -4, 20),Vector3.new(-15, -4, -9)}
						local Pos = arylisyt[math.random(1,#arylisyt)]    
						game:GetService('Players').LocalPlayer.Character.Humanoid:MoveTo(Pos)
						wait(0.7)
						local adasdas = math.random(1,5)
						local assdad = math.random(1,5)
						if assdad == adasdas then
							game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true
						end
					until game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer') == nil or game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer'):FindFirstChild('timeLeft').TextColor3 == Color3.fromRGB(255, 255, 255)
					godmodeenabled = false
					antivoidenabled = false
					wait(1)
					bypass()
				end
			else end
		end
	elseif mode == 0 then
		if protower then
			local CFrameEnd = CFrame.new(game:GetService("Workspace"):FindFirstChild("tower"):FindFirstChild("sections"):FindFirstChild("finish"):FindFirstChild("FinishGlow").Position)
			tween(game.Players.LocalPlayer.Character.HumanoidRootPart,CFrameEnd,19)
			wait(1)
			local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
			tween(lp,CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('start').Position + Vector3.new(0,10,0)),1.5)
			tween(lp,CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('start').Position + Vector3.new(0,10,0)),1.5)
			repeat
				if game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate') then
					game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate').Parent = game:GetService('ReplicatedFirst')
				end
				local arylisyt = {Vector3.new(-20, -4, -45),Vector3.new(32, -3, 31),Vector3.new(0, -4, -0),Vector3.new(-27, -4, -1),Vector3.new(20, -4, -2),Vector3.new(-31, 1, 29),Vector3.new(10, -4, -29),Vector3.new(37, -4, 11),Vector3.new(-12, -4, 1),Vector3.new(-8, -4, 39),Vector3.new(4, -4, -18),Vector3.new(23, -4, 10),Vector3.new(-10, -4, 11),Vector3.new(-25, -4, -8),Vector3.new(8, -4, -8),Vector3.new(20, -4, 12),Vector3.new(-2, -4, 20),Vector3.new(-40, 2, 16),Vector3.new(-33, -4, -8),Vector3.new(25, -4, -14),Vector3.new(19, -4, 1),Vector3.new(-4, -4, -11),Vector3.new(-19, -4, -16),Vector3.new(-9, 7, -40),Vector3.new(19, 8, -42),Vector3.new(30, -4, 20),Vector3.new(-15, -4, -9)}
				local Pos = arylisyt[math.random(1,#arylisyt)]    
				game:GetService('Players').LocalPlayer.Character.Humanoid:MoveTo(Pos)
				wait(0.7)
				local adasdas = math.random(1,5)
				local assdad = math.random(1,5)
				if assdad == adasdas then
					game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true
				end
			until game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer') == nil or game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer'):FindFirstChild('timeLeft').TextColor3 == Color3.fromRGB(255, 255, 255)
			godmodeenabled = false
			antivoidenabled = false
			wait(1)
			bypass()
		else
			local CFrameEnd = CFrame.new(game:GetService("Workspace"):FindFirstChild("tower"):FindFirstChild("sections"):FindFirstChild("finish"):FindFirstChild("FinishGlow").Position)
			tween(game.Players.LocalPlayer.Character.HumanoidRootPart,CFrameEnd,15)
			wait(1)
			local lp = game:GetService'Players'.LocalPlayer.Character.HumanoidRootPart
			tween(lp,CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('start').Position + Vector3.new(0,10,0)),1.5)
			tween(lp,CFrame.new(game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('finish'):FindFirstChild('start').Position + Vector3.new(0,10,0)),1.5)
			repeat
				if game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate') then
					game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate').Parent = game:GetService('ReplicatedFirst')
				end
				local arylisyt = {Vector3.new(-20, -4, -45),Vector3.new(32, -3, 31),Vector3.new(0, -4, -0),Vector3.new(-27, -4, -1),Vector3.new(20, -4, -2),Vector3.new(-31, 1, 29),Vector3.new(10, -4, -29),Vector3.new(37, -4, 11),Vector3.new(-12, -4, 1),Vector3.new(-8, -4, 39),Vector3.new(4, -4, -18),Vector3.new(23, -4, 10),Vector3.new(-10, -4, 11),Vector3.new(-25, -4, -8),Vector3.new(8, -4, -8),Vector3.new(20, -4, 12),Vector3.new(-2, -4, 20),Vector3.new(-40, 2, 16),Vector3.new(-33, -4, -8),Vector3.new(25, -4, -14),Vector3.new(19, -4, 1),Vector3.new(-4, -4, -11),Vector3.new(-19, -4, -16),Vector3.new(-9, 7, -40),Vector3.new(19, 8, -42),Vector3.new(30, -4, 20),Vector3.new(-15, -4, -9)}
				local Pos = arylisyt[math.random(1,#arylisyt)]    
				game:GetService('Players').LocalPlayer.Character.Humanoid:MoveTo(Pos)
				wait(0.7)
				local adasdas = math.random(1,5)
				local assdad = math.random(1,5)
				if assdad == adasdas then
					game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true
				end
			until game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer') == nil or game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer'):FindFirstChild('timeLeft').TextColor3 == Color3.fromRGB(255, 255, 255)
			godmodeenabled = false
			antivoidenabled = false
			wait(1)
			bypass()
		end

	elseif mode == 2 then
		if protower then
			local CFrameEnd = CFrame.new(game:GetService("Workspace"):FindFirstChild("tower"):FindFirstChild("sections"):FindFirstChild("finish"):FindFirstChild("FinishGlow").Position)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameEnd
			wait(.1)
			local CFrameEnd = CFrame.new(game:GetService("Workspace"):FindFirstChild("tower"):FindFirstChild("sections"):FindFirstChild("finish"):FindFirstChild("FinishGlow").Position)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameEnd
			wait(.1)
			local CFrameEnd = CFrame.new(game:GetService("Workspace"):FindFirstChild("tower"):FindFirstChild("sections"):FindFirstChild("finish"):FindFirstChild("FinishGlow").Position)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameEnd
			wait(1)
			repeat
				if game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate') then
					game:GetService('Workspace'):FindFirstChild('tower'):FindFirstChild('sections'):FindFirstChild('start'):FindFirstChild('gate').Parent = game:GetService('ReplicatedFirst')
				end
				local arylisyt = {Vector3.new(-20, -4, -45),Vector3.new(32, -3, 31),Vector3.new(0, -4, -0),Vector3.new(-27, -4, -1),Vector3.new(20, -4, -2),Vector3.new(-31, 1, 29),Vector3.new(10, -4, -29),Vector3.new(37, -4, 11),Vector3.new(-12, -4, 1),Vector3.new(-8, -4, 39),Vector3.new(4, -4, -18),Vector3.new(23, -4, 10),Vector3.new(-10, -4, 11),Vector3.new(-25, -4, -8),Vector3.new(8, -4, -8),Vector3.new(20, -4, 12),Vector3.new(-2, -4, 20),Vector3.new(-40, 2, 16),Vector3.new(-33, -4, -8),Vector3.new(25, -4, -14),Vector3.new(19, -4, 1),Vector3.new(-4, -4, -11),Vector3.new(-19, -4, -16),Vector3.new(-9, 7, -40),Vector3.new(19, 8, -42),Vector3.new(30, -4, 20),Vector3.new(-15, -4, -9)}
				local Pos = arylisyt[math.random(1,#arylisyt)]    
				game:GetService('Players').LocalPlayer.Character.Humanoid:MoveTo(Pos)
				wait(0.7)
				local adasdas = math.random(1,5)
				local assdad = math.random(1,5)
				if assdad == adasdas then
					game:GetService('Players').LocalPlayer.Character.Humanoid.Jump = true
				end
			until game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer') == nil or game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild('timer'):FindFirstChild('timeLeft').TextColor3 == Color3.fromRGB(255, 255, 255)
			godmodeenabled = false
			antivoidenabled = false
			wait(1)
			bypass()
		end
	end
end

local autofarmenabled = false
local autoopencrt = false
local crt = "Regular"

function getcoin()
	if game:GetService("ReplicatedStorage"):FindFirstChild("data"):FindFirstChild(game:GetService("Players").LocalPlayer.UserId):FindFirstChild("coins") ~= nil then
		local coin1 = game:GetService("ReplicatedStorage"):FindFirstChild("data"):FindFirstChild(game:GetService("Players").LocalPlayer.UserId):FindFirstChild("coins").Value
		local coin2 
		if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("shop2"):FindFirstChild("shop"):FindFirstChild("yxle"):FindFirstChild("Frame"):FindFirstChild("yxles") ~= nil then
			coin2 = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("shop2"):FindFirstChild("shop"):FindFirstChild("yxle"):FindFirstChild("Frame"):FindFirstChild("yxles").Text
		end
		if coin2 == nil then
			return coin1
		else
			return coin2
		end
	end
end
function openbox()
	local mqqe = tonumber(getcoin())
	if game:GetService("ReplicatedStorage"):FindFirstChild("openBox") ~= nil and mqqe ~= nil and mqqe > 500 then
		game:GetService("ReplicatedStorage"):FindFirstChild("openBox"):InvokeServer(crt)
	end
end
--openbox()
spawn(function()
	while wait() do
		pcall(function()
			if autofarmenabled then
				bypass()
				finish()
				bypass()
			end
		end)
	end
end)
spawn(function()
	while wait() do
		pcall(function()
			if autoopencrt then
				openbox()
			end
		end)
	end
end)

local autotoxic = false
function toxic()
	local mqqe = tonumber(getcoin())
	if game:GetService("ReplicatedStorage"):FindFirstChild("buyMutator") ~= nil and mqqe ~= nil and mqqe > 400 then
		-- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

		local ohString1 = "lengthen"
		local ohString2 = "regular"

		game:GetService("ReplicatedStorage").buyMutator:InvokeServer(ohString1, ohString2)
		-- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

		local ohString1 = "fog"
		local ohString2 = "regular"

		game:GetService("ReplicatedStorage").buyMutator:InvokeServer(ohString1, ohString2)
		-- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

		local ohString1 = "speed"
		local ohString2 = "regular"

		game:GetService("ReplicatedStorage").buyMutator:InvokeServer(ohString1, ohString2)
	end
end

spawn(function()
	while true do
		wait()
		pcall(function()
			if autotoxic == true then
				toxic()
			end
		end)
	end
end)
local vnm = "Classic"

if protower then
	vnm = "Pro"
else
	vnm = "Classic"
end


local Notificatin = Hawk:Notification()
Notificatin:CreateNotification("10179402650","Game Detected!","Hawk HUB","It seems like Hawk found a script for a game you are playing right now. Would you want to load it?","Yes","No",function()


	local Window = Hawk:Window("Hawk HUB | Tower Of Hell")
	local Universal = Window:Tab("Universal")
	local toh = Window:Tab("Toh")
	local Credits = Window:Tab("Credits")
	
	Universal:Toggle("Infinite Jump",function(boolval)
		InfiniteJumpEnabled = boolval
	end)

	Universal:Toggle("Noclip",function(boolval)
		NoclipEnabled = boolval
		NoclipLoop()

		if boolval then
			NoclipEnabled = true
		else
			if NoclipLoopd ~= nil then
				NoclipEnabled = false
				pcall(function()
					NoclipLoopd:Disconnect()
				end)
			end
		end

	end)

	Universal:Slider("WalkSpeed",16,200,function(val)
		walkspeeddd = val
		updatewalkspeed()
	end)
	Universal:Dropdown("WalkSpeed Method", {"Classic","Tween","Velocity"}, function(currentoption)
		if currentoption == "Classic" then
			walkspeedmethod = 0
			updatewalkspeed()
		end
		
		if currentoption == "Tween" then
			walkspeedmethod = 1
			updatewalkspeed()
		end
		
		if currentoption == "Velocity" then
			walkspeedmethod = 2
			updatewalkspeed()
		end
	end)

	Universal:Toggle("Anti Void",function(boolval)
		antivoidenabled_u = boolval
	end)
	Universal:Dropdown("AntiVoid Method",{"Aggressive (Buggy)", "Sweet"}, function(currentoption)
		if currentoption == "Aggressive (Buggy)" then
			antivoidmode_u = 0
		end
		
		if currentoption == "Sweet" then
			antivoidmode_u = 1
		end
	end)
	
	Universal:Slider("JumpPower",16,200,function(val)
		jumppwer = val
		updatejumppower()
	end)
	
	Universal:Dropdown("JumpPower Method",{"Classic","Velocity"}, function(currentoption)
		if currentoption == "Classic" then
			jumppwermethod = 0
			updatejumppower()
		end
		
		if currentoption == "Velocity" then
			jumppwermethod = 1
			updatejumppower()
		end
	end)


	Universal:Button("Fast Respawn",function()
		reflocal()
	end)

	Universal:Button("God (For Reset Please Use Fast Respawn)",function(boolval)
		god()
	end)

	Universal:Button("Invisible",function(boolval)
		invis()
	end)


	Universal:Toggle("Fly",function(boolval)
		flyinh = boolval
		updatefly()
	end)
	Universal:Slider("FlySpeed",1,200,function(val)
		flyspeed = val
	end)

	local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/1201for/V.G-Hub/main/Karrot-Esp"))()

	Universal:Toggle("Player Esp", function(state)
		ESP:Toggle(state)
	end)

	Universal:Toggle("Tracer Esp", function(state)
		ESP.Tracers = state
	end)

	Universal:Toggle("Name Esp", function(state)
		ESP.Names = state
	end)

	Universal:Toggle("Box Esp", function(state)
		ESP.Boxes = state
	end)

	Universal:Button("Rejoin",function()
		local pvar
		for i, v in ipairs(game:GetService("Players"):GetChildren()) do
			pvar = pvar + 1
		end
		if typeof(pvar) == "number" then
			if pvar <= 1 then
				game:GetService("Players").LocalPlayer:Kick("Rejoining...")
				wait(0.1)
				game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
			else
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer.LocalPlayer)
			end
		end
	end)

	--server hop by CharWar

	Universal:Button("Server Hop",function()
		Teleport()
	end)

	--universal finish
	
	toh:Label("Items")
	
	toh:Button("Get All Items (Not Spends Coin)",function()
		getallitems()
	end)


	pcall(function()
		local bpak = game:GetService'Players'.LocalPlayer.Backpack
		local itemstor = game:GetService('ReplicatedStorage'):FindFirstChild('Gear')
		for i, v in ipairs(itemstor:GetChildren()) do
			if v:IsA('Tool') then
				toh:Button("Get " .. tostring(v.Name),function()
					pcall(function()
						v:Clone().Parent = bpak
					end)   
				end)
			
			end
		end
	end)

	toh:Toggle("Anti Void",function(boolval)
		antivoidenabled = boolval
	end)

	toh:Dropdown("AntiVoid Method",{"Aggressive (Buggy)","Sweet"},function(currentoption)
		if currentoption == "Aggressive (Buggy)" then
			antivoidmode = 0
		end
		
		if currentoption == "Sweet" then
			antivoidmode = 1
		end
		
	end)

	toh:Label("Misc")
	
	toh:Toggle("God Mode",function(bval)
		godmodeenabled = bval
	end)

	toh:Button("Delete Effects",function(bval)
		deleteefects()
	end)

	toh:Toggle("Goto Finish",function(bval)
		local CFrameEnd = CFrame.new(game:GetService("Workspace"):FindFirstChild("tower"):FindFirstChild("sections"):FindFirstChild("finish"):FindFirstChild("FinishGlow").Position)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameEnd
		wait(.1)
		local CFrameEnd = CFrame.new(game:GetService("Workspace"):FindFirstChild("tower"):FindFirstChild("sections"):FindFirstChild("finish"):FindFirstChild("FinishGlow").Position)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameEnd
		wait(.1)
		local CFrameEnd = CFrame.new(game:GetService("Workspace"):FindFirstChild("tower"):FindFirstChild("sections"):FindFirstChild("finish"):FindFirstChild("FinishGlow").Position)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameEnd
	end)

	toh:Button("Open Box",function(bval)
		pcall(function()
			openbox()
		end)
	end)
	
	toh:Label("Farms")
	
	
	toh:Toggle("Auto Open Box",function(bval)
		autoopencrt = bval
	end)

	toh:Button("Auto Troll Server",function(bval)
		autotoxic = false
	end)
	toh:Button("Troll Server (Gets Foggy+Lenghten+HighSpeed)",function()
		pcall(function()
			toxic()
		end)
	end)
	
	Credits:Label("Owners:")
	Credits:Label("CREDITS TO TUAXA FOR THE SCRIPT!")
	Credits:Button("Made By Tuaxa#9999",function()
		setclipboard("Tuaxa#9999")
	end)
	Credits:Line()
	Credits:KeyBind("UIKeybind","E",function()
		Hawk:ToggleUI()
	end)

	local Colors = Window:Tab("Colors")
	Colors:ColorPicker("Glow",Color3.new(0,0,0),function(xd)
		for i, v in pairs(game.CoreGui.Hawk.Main:GetChildren()) do
			if v.Name == "Glow" or v.Name == "Glow_2" or v.Name == "glow" or v.Name == "glow2" then
				v.ImageColor3 = xd
			end
		end
	end)
	Colors:ColorPicker("TitleBar",Color3.fromRGB(39, 39, 39),function(xd)
		for i, v in pairs(game.CoreGui.Hawk.Main:GetChildren()) do
			if v.Name == "TitleBar" then
				v.BackgroundColor3 = xd
			elseif v.Name == "Tabs" then
				v.BackgroundColor3 = xd
			end
		end
	end)


end)