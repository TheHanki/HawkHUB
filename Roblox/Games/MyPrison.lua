local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/PcLib.lua", true))()
local Window = Hawk:Window("Hawk HUB | My Prison")
local Tab1 = Window:Tab("Main")
local Tab2 = Window:Tab("Misc")

Tab1:Label("Main:")
Tab2:Label("Misc:")
local plots = game:GetService("Workspace").PLOTS:GetChildren()
local plr= game.Players.LocalPlayer
plr.PlayerGui.Tuto:Destroy()
local char = plr.Character
local me = char.HumanoidRootPart
for i,v in pairs(plots) do
	local ok = v.Owner
	if ok.Value == plr then
		v.TutoNPC:Destroy()

	end

end

Tab1:Button("Arrest pirsoner",function()
	local args = {}
	local cmdName = args[1]

	if fireclickdetector then
		if args[1] then
			local name = getstring(1)
			for _, descendant in ipairs(workspace.NPCs:GetDescendants()) do
				if descendant:IsA("ProximityPrompt") and descendant.Name == name then
					fireproximityprompt(descendant)
				end
			end
		else
			for _, descendant in ipairs(workspace.NPCs:GetDescendants()) do
				if descendant:IsA("ProximityPrompt") then
					fireproximityprompt(descendant)
				end
			end
		end
	end
end)

_G.loop = true
Tab1:Toggle("Auto clean", function(value)
	if value == true then
		_G.loop = true
		while _G.loop == true do
			local plots = game:GetService("Workspace").PLOTS:GetChildren()
			local plr= game.Players.LocalPlayer
			local char = plr.Character
			local me = char.HumanoidRootPart
			for i,v in pairs(plots) do
				local ok = v.Owner
				if ok.Value == plr then
					local it = v.Garbage.PlateTrash.Part 
					me.CFrame = it.CFrame
					wait(1)
					local args = {}
					local cmdName = args[1]

					if fireclickdetector then
						if args[1] then
							local name = getstring(1)
							for _, descendant in ipairs(workspace:GetDescendants()) do
								if descendant:IsA("ProximityPrompt") and descendant.Name == name then
									fireproximityprompt(descendant)
								end
							end
						else
							for _, descendant in ipairs(workspace:GetDescendants()) do
								if descendant:IsA("ProximityPrompt") then
									fireproximityprompt(descendant)


									if value == false then
										_G.loop = false
									end
								end
							end 
						end
					end           
				end   
			end
		end
	end
end)
Tab1:Toggle("Auto clean Soda", function(value)
	if value == true then
		_G.loop = true
		while _G.loop == true do
			local plots = game:GetService("Workspace").PLOTS:GetChildren()
			local plr= game.Players.LocalPlayer
			local char = plr.Character
			local me = char.HumanoidRootPart
			for i,v in pairs(plots) do
				local ok = v.Owner
				if ok.Value == plr then
					local it = v.Garbage.SodaTrash.Part 
					me.CFrame = it.CFrame
					wait(1)
					local args = {}
					local cmdName = args[1]

					if fireclickdetector then
						if args[1] then
							local name = getstring(1)
							for _, descendant in ipairs(workspace:GetDescendants()) do
								if descendant:IsA("ProximityPrompt") and descendant.Name == name then
									fireproximityprompt(descendant)
								end
							end
						else
							for _, descendant in ipairs(workspace:GetDescendants()) do
								if descendant:IsA("ProximityPrompt") then
									fireproximityprompt(descendant)


									if value == false then
										_G.loop = false
									end
								end
							end 
						end
					end           
				end   
			end
		end
	end
end)
Tab1:Toggle("Auto Fill Tunnels", function(value)
	if value == true then
		_G.loop = true
		while _G.loop == true do
			local plots = game:GetService("Workspace").PLOTS:GetChildren()
			local plr= game.Players.LocalPlayer
			local char = plr.Character
			local me = char.HumanoidRootPart
			for i,v in pairs(plots) do
				local ok = v.Owner
				if ok.Value == plr then
					local it = v.Tunnels.DustPart
					me.CFrame = it.CFrame
					wait(1)
					local args = {}
					local cmdName = args[1]

					if fireclickdetector then
						if args[1] then
							local name = getstring(1)
							for _, descendant in ipairs(workspace:GetDescendants()) do
								if descendant:IsA("ProximityPrompt") and descendant.Name == name then
									fireproximityprompt(descendant)
								end
							end
						else
							for _, descendant in ipairs(workspace:GetDescendants()) do
								if descendant:IsA("ProximityPrompt") then
									fireproximityprompt(descendant)


									if value == false then
										_G.loop = false
									end
								end
							end 
						end
					end           
				end   
			end
		end
	end
end)

Tab2:Button("Arrest All", function()
	local args = {}
	local cmdName = args[1]

	if fireclickdetector then
		if args[1] then
			local name = getstring(1)
			for _, descendant in ipairs(workspace.NPCs:GetDescendants()) do
				if descendant:IsA("ProximityPrompt") and descendant.Name == name then
					fireproximityprompt(descendant)
				end
			end
		else
			for _, descendant in ipairs(workspace.NPCs:GetDescendants()) do
				if descendant:IsA("ProximityPrompt") then
					fireproximityprompt(descendant)
				end
			end
		end
	end
end)
Tab2:Button("Auto Fill Tunnels", function(value)
	if value == true then
		_G.loop = true
		while _G.loop == true do
			local plots = game:GetService("Workspace").PLOTS:GetChildren()
			local plr= game.Players.LocalPlayer
			local char = plr.Character
			local me = char.HumanoidRootPart
			for i,v in pairs(plots) do
				local ok = v.Owner
				if ok.Value == plr then
					local it = v.Tunnels.DustPart
					me.CFrame = it.CFrame
					wait(1)
					local args = {}
					local cmdName = args[1]

					if fireclickdetector then
						if args[1] then
							local name = getstring(1)
							for _, descendant in ipairs(workspace:GetDescendants()) do
								if descendant:IsA("ProximityPrompt") and descendant.Name == name then
									fireproximityprompt(descendant)
								end
							end
						else
							for _, descendant in ipairs(workspace:GetDescendants()) do
								if descendant:IsA("ProximityPrompt") then
									fireproximityprompt(descendant)


									if value == false then
										_G.loop = false
									end
								end
							end 
						end
					end           
				end   
			end
		end
	end
end)
local HttpService = game:GetService("HttpService")
local annen = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Important/owners.json"))
local CreditsTab = Window:Tab("Credits")

CreditsTab:Label("Owners:")
for i, v in pairs(annen.owners) do
	CreditsTab:Button(i,function()
		setclipboard(v)
	end)
end

CreditsTab:Line()
CreditsTab:KeyBind("UI Keybind:", "E",function()
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
