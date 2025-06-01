--loadstring
local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/HawkLib.lua", true))()

--------------------------------------------------------------------------

--Creating Window
local Window = Hawk:Window({
	ScriptName = "Hawk HUB | Slap Battles",
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
local tab1 = Window:Tab("Player","Player Configurations")
newsec = tab1
local label = newsec:Label("Slap Battles","Made By __spyro")

local slider = newsec:Slider("WalkSpeed",16,100,function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end)


    local slider = newsec:Slider("JumpPower",50,80,function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
        end)

--Infinite Jump

tab1:Slider(
	"Hitbox",
	2,
	60,
	function(value)
		for i, v in pairs(game.Players:GetChildren()) do
			if v.Name ~= game.Players.LocalPlayer.Name then
				v.Character.HumanoidRootPart.Transparency = 0.5
				v.Character.HumanoidRootPart.Size = Vector3.new((value), (value), (value))
				v.Character.HumanoidRootPart.Material = "Plastic"
				v.Character.HumanoidRootPart.Color = Color3.new(0,0,0)
				v.Character.HumanoidRootPart.CanCollide = false
			end
		end
	end
)

tab1:Line()

tab1:Toggle("Slap Aura",nil,function(lol)
if lol == true then
    while wait() do
        for i, v in next, game.Players:GetChildren() do
        local A_1 = game:GetService("Workspace")[v.Name]:FindFirstChild("Left Arm")
        local Event = game:GetService("ReplicatedStorage").b
        Event:FireServer(A_1)
        end
        if lol == false then break end
        end
    end
end)

tab1:Label("Its All xd","I didnt make much features")
local tab5 = Window:Tab("Settings")
tab5:Button(
    "Rejoin",
    function()
        game:GetService "TeleportService":TeleportToPlaceInstance(
            game.PlaceId,
            game.JobId,
            game:GetService "Players".LocalPlayer
        )
    end
)

tab5:KeyBind(
    "UI Keybind",
    "Q",
    function()
        Hawk:ToggleUI()
    end
)

local tab6 = Window:Tab("Credits")

if getcustomasset or syn then
    tab6:Image(
        "Spyro",
        "Hawk",
        {
            Name = "Spyro (Hanki)",
            ImageLink = "https://raw.githubusercontent.com/xHzCihan/IDream/main/Owners/SpyroSmirk.webm",
            FileName = "Spyro.webm",
            CheckFile = false,
            ImageColor = Color3.fromRGB(255, 255, 255),
            Stroke = Color3.fromRGB(140, 63, 218),
            Description = {"Main Scripter & UI Developer", "Discord: __spyro"}
        }
    )
else
    tab6:Image(
        "Spyro",
        "Hawk",
        {
            Name = "Spyro (Hanki)",
            FileName = "Spyro.webm",
            CheckFile = false,
            ImageLink = 12802604422,
            ImageColor = Color3.fromRGB(255, 255, 255),
            Stroke = Color3.fromRGB(255, 255, 255),
            Description = {"Main Scripter & UI Developer", "Discord: __spyro"}
        }
    )
end

------------------------------------------------




------------------------------------------------



--Creating Notifications
local Notifications = Hawk:AddNotifications()

-----------------------------------------

--Creating Responsible Notifications
Notifications:Notification("Hawk HUB","Slap Battles is loaded!","Done",1)
wait()

local index; 
	index = hookmetamethod(game, '__index', function(obj, idx)
		if index(obj, 'Name') == 'Humanoid' and idx == 'WalkSpeed' then
			return 16
		end    
		return index(obj, idx)
	end)

wait()
local index; 
	index = hookmetamethod(game, '__index', function(obj, idx)
		if index(obj, 'Name') == 'Humanoid' and idx == 'JumpPower' then
			return 50
		end    
		return index(obj, idx)
	end)
