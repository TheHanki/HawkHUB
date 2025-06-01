--Wait Game Load--
repeat
    task.wait()
until game:IsLoaded() == true

--Anti Afk--
local a = game:GetService "VirtualUser"
game:service "Players".LocalPlayer.Idled:connect(
    function()
        a:CaptureController()
        a:ClickButton2(Vector2.new())
        wait(2)
    end
)

--------------------------------------------------------------------------

--Functions And Scripts
Players = game:GetService("Players")

local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/HawkLib.lua", true))()

local Window =
    Hawk:Window(
    {
        ScriptName = "Hawk HUB | Demon Soul",
        DestroyIfExists = true,
        Theme = "Dark"
    }
)

local notifica = Hawk:AddNotifications()

notifica:Notification("Loaded!", "Demon Soul", "Done", 2)
wait()
notifica:Notification("By __spyro and ediz", ":D", "Done", 2)
wait()

Window:Close(
    {
        visibility = true,
        Callback = function()
            Window:Destroy()
        end
    }
)
Window:Minimize(
    {
        visibility = true,
        OpenButton = true,
        Callback = function()
        end
    }
)

local hum = game:GetService("Players").LocalPlayer.Character.Humanoid
local tab1 = Window:Tab("Autofarm", "Autofarms")
local seviye = "Leve1"

tab1:Dropdown(
    "Select Level",
    {"Level 1", "Level 2", "Level 3", "Level 4", "Level 5", "Level 6", "Level 7", "Level 8"},
    function(currentoption)
        if currentoption == "Level 1" then
            local seviye = "Leve1"
        elseif currentoption == "Level 2" then
            local seviye = "Leve2"
        elseif currentoption == "Level 3" then
            local seviye = "Leve3"
        elseif currentoption == "Level 4" then
            local seviye = "Leve4"
        elseif currentoption == "Level 5" then
            local seviye = "Leve5"
        elseif currentoption == "Level 6" then
            local seviye = "Leve6"
        elseif currentoption == "Level 7" then
            local seviye = "Leve7"
        elseif currentoption == "Level 8" then
            local seviye = "Leve8"
        end
    end
)

getgenv().farm = false
tab1:Toggle("Autofarm",nil,function(farmng)
    getgenv().farm = farmng

    if getgenv().farm == true then
        local zone = game.Workspace.GhostPos[seviye]
        local player = game.Players.LocalPlayer
        local char = player.Character

        notifica:Notification("Stop Autofarm?", "Just reset your char", "Done", 2)
       
       while wait() do
       task.spawn(function()
        for _, v in pairs(zone:GetDescendants()) do
            if v.Name == "HumanoidRootPart" and v.Parent.Humanoid.Health ~= 0 then
                char.HumanoidRootPart.CFrame = v.CFrame
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GeneralAttack"):FireServer(

                )
            end
        end
       end)
       wait()
       if getgenv().farm == false then break end
    end
    end
end)

local tab2 = Window:Tab("Main")
tab2:Button(
    "Draw Role",
    function()
        local args = {
            [1] = false
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("DrawRole"):FireServer(
            unpack(args)
        )
    end
)

tab2:Toggle(
    "Auto M1",
    nil,
    function(lol)
        if lol == true then
            while wait() do
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GeneralAttack"):FireServer(

                )
                if lol == false then
                    break
                end
            end
        end
    end
)

tab2:Button(
    "Slayer",
    function()
        local args = {
            [1] = 3
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ChooseOriginalRole"):FireServer(
            unpack(args)
        )
    end
)

tab2:Toggle(
    "Auto Spin",
    nil,
    function(lol)
        if lol == true then
            while wait() do
                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Roulette"):FireServer()
                if lol == false then
                    break
                end
            end
        end
    end
)

tab2:Line()

tab2:Button(
    "JumpPower",
    function(lol)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")

        local newJumpPower = 300

        humanoid.JumpPower = newJumpPower
    end
)

tab2:Button(
    "WalkSpeed",
    function(lol)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")

        local newWalkSpeed = 100

        humanoid.WalkSpeed = newWalkSpeed
    end
)

tab2:Line()

tab2:Button(
    "Teleport to Boss area",
    "Go to boss area omg",
    function()
        local args = {
            [1] = true
        }

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ToBossArea"):FireServer(
            unpack(args)
        )
    end
)
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
        "Ediz-Sama",
        "Hawk",
        {
            Name = "Ediz",
            ImageLink = "https://raw.githubusercontent.com/xHzCihan/IDream/main/Owners/Kipo.webm",
            FileName = "Ediz.webm",
            CheckFile = false,
            ImageColor = Color3.fromRGB(255, 255, 255),
            Stroke = Color3.fromRGB(255, 255, 255),
            Volume = 1,
            Description = {"Scripter", "Discord: falpearx"}
        }
    )

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
        "Ediz-Sama",
        "Hawk",
        {
            Name = "Ediz",
            FileName = "Ediz.webm",
            CheckFile = false,
            ImageLink = 11799911797,
            ImageColor = Color3.fromRGB(255, 255, 255),
            Stroke = Color3.fromRGB(255, 255, 255),
            Volume = 1,
            Description = {"Scripter", "Discord: falpearx"}
        }
    )

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
