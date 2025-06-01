   

    -- Makes the UI lib work
    _Hawk = "ohhahtuhthttouttpwuttuaunbotwo"


 --loadstring
    local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/UILibs/HawkLib.lua", true))()


    --------------------------------------------------------------------------

    --Create Window
    local Window = Hawk:Window({
        ScriptName = "RIGHTHUB - Universal Aimbot",
        DestroyIfExists = true,
        Theme = "Dark"
    })

    --Create Close Button
    Window:Close({
        visibility = true,
        Callback = function()
            Window:Destroy()
        end,
    })

    --Create Minimize Button
    Window:Minimize({
        visibility = true,
        OpenButton = true,
        Callback = function() end,
    })

    -- Services
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")
    local StarterGui = game:GetService("StarterGui")
    local LocalPlayer = Players.LocalPlayer
    local Camera = workspace.CurrentCamera
    local Mouse = LocalPlayer:GetMouse()

    -- Variables
    local camLockEnabled = false
    local predictionEnabled = false
    local predictionAmount = 0.165
    local lockedPlayer = nil
    local keybindKey = Enum.KeyCode.V
    local fovRadius = 150
    local fovEnabled = false
    local speedHackEnabled = false
    local walkSpeedDefault = 16
    local walkSpeed = 110
    local triggerBotEnabled = false
    local lastClick = 0
    local clickDelay = 0.2
    local boxESPEnabled = false
    local aimPart = "Head"
    local smoothCamEnabled = false
    local smoothnessFactor = 0.15
    local smoothnessSliderValue = 4
    local espColor = Color3.fromRGB(0, 255, 0)
    local useRGB = false
    local useRGB_FOV = false
    local currentHue = 0
    local fovHue = 0
    local koCheckEnabled = false
    local fovColor = Color3.fromRGB(255, 255, 255)
    local smoothness = 0.5
    local enableESP = false

    -- ESP Settings
    local espSettings = {
        ShowNames = false,
        ShowOutline = false,
        ShowFill = false,
        ShowLines = false,
        TeamColor = false
    }

    -- FOV Circle
    local fovCircle = Drawing.new("Circle")
    fovCircle.Thickness = 2
    fovCircle.Color = Color3.fromRGB(255, 255, 255)
    fovCircle.Transparency = 0.75
    fovCircle.Filled = false
    fovCircle.Visible = false
    fovCircle.Radius = 80

    -- ESP Boxes
    local espBoxes = {}
    local espCache = {}

    -- Tabs
    local combatTab = Window:Tab("Combat")
    local visualsTab = Window:Tab("Visuals")
    local movementTab = Window:Tab("Movement")
    local miscTab = Window:Tab("Misc")

    -- Combat Tab
    local combatSec = combatTab:Section("Aim Settings")

    -- Aimbot Variables
    local Aimbot = {
        Enabled = false,
        Target = nil,
        Keybind = Enum.KeyCode.V,
        Prediction = 0.165,
        HitPart = "Head",
        Smoothing = false,
        Smoothness = 0.5,
        UseFov = false,
        FovRadius = 100,
        KoCheck = false,
        TeamCheck = false,
        VisibleCheck = false,
        Notify = true
    }

    -- FOV Circle
    local FovCircle = Drawing.new("Circle")
    FovCircle.Thickness = 2
    FovCircle.Color = Color3.fromRGB(255, 255, 255)
    FovCircle.Transparency = 0.75
    FovCircle.Filled = false
    FovCircle.Visible = false
    FovCircle.Radius = Aimbot.FovRadius

    -- Aimbot UI
    combatSec:Toggle("Aimbot [V]", false, function(Value)
        Aimbot.Enabled = Value
    end)

    combatSec:Dropdown("Aim Part", {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso"}, function(Value)
        Aimbot.HitPart = Value
    end)

    combatSec:Toggle("Smoothing", false, function(Value)
        Aimbot.Smoothing = Value
    end)

    combatSec:Slider("Smoothness", 1, 10, 5, function(Value)
        Aimbot.Smoothness = Value / 10
    end)

    combatSec:Toggle("Prediction", false, function(Value)
        Aimbot.Prediction = Value and 0.165 or 0
    end)

    combatSec:TextBox("Prediction Amount", "0-3 range", true, function(Value)
        local val = tonumber(Value)
        if val and val >= 0 and val <= 3 then
            Aimbot.Prediction = val
        end
    end)

    combatSec:Toggle("KO Check", false, function(Value)
        Aimbot.KoCheck = Value
    end)

    combatSec:Toggle("Team Check", false, function(Value)
        Aimbot.TeamCheck = Value
    end)

    combatSec:Toggle("Visibility Check", false, function(Value)
        Aimbot.VisibleCheck = Value
    end)

    combatSec:Toggle("Use FOV", false, function(Value)
        Aimbot.UseFov = Value
    end)

    combatSec:Toggle("Show FOV", false, function(Value)
        FovCircle.Visible = Value
    end)

    combatSec:ColorPicker("FOV Color", Color3.fromRGB(255, 255, 255), function(Value)
        FovCircle.Color = Value
    end)

    combatSec:Slider("FOV Size", 5, 80, 40, function(Value)
        Aimbot.FovRadius = Value * 2
        FovCircle.Radius = Aimbot.FovRadius
        if Aimbot.UseFov then
            FovCircle.Visible = true
        end
    end)

    -- Visuals Tab
    local espSec = visualsTab:Section("ESP Settings")

    espSec:Toggle("Box ESP", false, function(val)
        boxESPEnabled = val
        if val then enableESP = true end
        UpdateAllESP()
    end)

    espSec:Toggle("Names", false, function(val)
        espSettings.ShowNames = val
    end)

    espSec:Toggle("Outline", false, function(val)
        espSettings.ShowOutline = val
    end)

    espSec:Toggle("Fill", false, function(val)
        espSettings.ShowFill = val
    end)

    espSec:Toggle("Lines", false, function(val)
        espSettings.ShowLines = val
    end)

    espSec:Toggle("RGB ESP", false, function(val)
        useRGB = val
    end)

    espSec:ColorPicker("ESP Color", Color3.fromRGB(0, 255, 0), function(val)
        espColor = val
    end)

    -- Movement Tab
    local speedSec = movementTab:Section("Speed Settings")

    local speedMultiplier = 20 -- Default speed 20 studs/second
    local lastTick = tick()
    
    local SpeedHackConnection = nil -- New: Variable to store connection

    speedSec:Toggle("Speed Hack", false, function(val)
        speedHackEnabled = val
        if speedHackEnabled then
            -- New: Start connection if speed hack is enabled
            if not SpeedHackConnection then
                SpeedHackConnection = RunService.Stepped:Connect(function(_, deltaTime)
                    if speedHackEnabled and LocalPlayer.Character then
                        local humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                        if humanoid and humanoid.MoveDirection.Magnitude > 0 then
                            local moveDirection = humanoid.MoveDirection
                            -- Calculate movement amount for TranslateBy
                            -- Logic from provided snippet: moveDirection * Speed * deltaTime * 10
                            local translation = moveDirection * speedMultiplier * deltaTime * 10
                            LocalPlayer.Character:TranslateBy(translation)
                        end
                    end
                end)
            end
        else
            -- New: Disconnect if speed hack is disabled
            if SpeedHackConnection then
                SpeedHackConnection:Disconnect()
                SpeedHackConnection = nil
            end
        end
    end)

    speedSec:Slider("Speed Multiplier", 1, 100, 20, function(val)
        speedMultiplier = val
        -- Optional: Can show notification when speed changes
        -- StarterGui:SetCore("SendNotification", {Title = "Speed Hack", Text = "Speed: " .. math.floor(speedMultiplier), Duration = 1})
    end)

    -- Misc Tab
    local miscSec = miscTab:Section("Other")

    miscSec:Button("Rejoin Same Server", function()
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end)

    -- ESP Functions
    local function CreateESP(player)
        if espCache[player] then return end
        
        local esp = {
            Highlight = Instance.new("Highlight"),
            NameLabel = Drawing.new("Text"),
            Line = Drawing.new("Line"),
            Box = Drawing.new("Square"),
            Connection = nil
        }
        
        esp.Highlight.FillTransparency = 1
        esp.Highlight.OutlineTransparency = 1
        esp.Highlight.Parent = player.Character or player.CharacterAdded:Wait()
        
        esp.NameLabel.Visible = false
        esp.NameLabel.Center = true
        esp.NameLabel.Outline = true
        esp.NameLabel.Font = 2
        
        esp.Line.Visible = false
        esp.Line.Thickness = 1

        esp.Box.Visible = false
        esp.Box.Thickness = 2
        esp.Box.Filled = false
        
        espCache[player] = esp
        
        esp.Connection = RunService.RenderStepped:Connect(function()
            if not enableESP then
                esp.Highlight.Enabled = false
                esp.NameLabel.Visible = false
                esp.Line.Visible = false
                esp.Box.Visible = false
                return
            end
            if not player.Character then return end
            local humanoid = player.Character:FindFirstChild("Humanoid")
            local rootPart = player.Character:FindFirstChild("HumanoidRootPart")
            
            if humanoid and rootPart then
                local headPos, headOnScreen = Camera:WorldToScreenPoint(player.Character.Head.Position)
                local rootPos, rootOnScreen = Camera:WorldToViewportPoint(rootPart.Position)
                
                -- Highlight settings
                esp.Highlight.Enabled = espSettings.ShowOutline
                esp.Highlight.FillTransparency = espSettings.ShowFill and 0.5 or 1
                esp.Highlight.OutlineTransparency = espSettings.ShowOutline and 0 or 1
                
                local color = espSettings.TeamColor and player.TeamColor.Color or espColor
                esp.Highlight.FillColor = color
                esp.Highlight.OutlineColor = color
                
                -- Name label
                esp.NameLabel.Visible = espSettings.ShowNames and headOnScreen
                if esp.NameLabel.Visible then
                    esp.NameLabel.Position = Vector2.new(headPos.X, headPos.Y + 30)
                    esp.NameLabel.Text = player.Name
                    esp.NameLabel.Color = color
                    esp.NameLabel.Size = 18
                end
                
                -- Line
                local lineVisible = espSettings.ShowLines and rootPos.Z > 0
                esp.Line.Visible = lineVisible
                if lineVisible then
                    esp.Line.From = Vector2.new(Camera.ViewportSize.X/2, Camera.ViewportSize.Y)
                    esp.Line.To = Vector2.new(rootPos.X, rootPos.Y)
                    esp.Line.Color = color
                    esp.Line.Transparency = espSettings.ShowFill and 0.5 or 1
                end

                -- Box ESP
                if boxESPEnabled and rootOnScreen then
                    local scale = Camera:WorldToViewportPoint(rootPart.Position + Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(rootPart.Position - Vector3.new(0, 2.5, 0)).Y
                    local width = scale * 0.6
                    local height = scale

                    esp.Box.Visible = true
                    esp.Box.Size = Vector2.new(width, height)
                    esp.Box.Position = Vector2.new(rootPos.X - width / 2, rootPos.Y - height / 2)
                    esp.Box.Color = color
                    esp.Box.Filled = false
                else
                    esp.Box.Visible = false
                end
            end
        end)
    end

    function UpdateAllESP()
        for player, esp in pairs(espCache) do
            if not enableESP then
                esp.Highlight.Enabled = false
                esp.NameLabel.Visible = false
                esp.Line.Visible = false
                esp.Box.Visible = false
            else
                esp.Highlight.Enabled = espSettings.ShowOutline
                esp.NameLabel.Visible = espSettings.ShowNames
                esp.Line.Visible = espSettings.ShowLines
                esp.Box.Visible = boxESPEnabled
            end
        end
        if not enableESP then
            boxESPEnabled = false
        end
    end

    -- Player Events
    Players.PlayerAdded:Connect(function(player)
        player.CharacterAdded:Connect(function()
            CreateESP(player)
        end)
        if player.Character then
            CreateESP(player)
        end
    end)

    Players.PlayerRemoving:Connect(function(player)
        if espCache[player] then
            espCache[player].Connection:Disconnect()
            espCache[player].Highlight:Destroy()
            espCache[player].NameLabel:Remove()
            espCache[player].Line:Remove()
            espCache[player].Box:Remove()
            espCache[player] = nil
        end
    end)

    -- Initialize ESP for existing players
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            CreateESP(player)
        end
    end

    -- Aimbot Functions
    local function GetClosestPlayer()
        local closestPlayer = nil
        local shortestDistance = Aimbot.UseFov and Aimbot.FovRadius or math.huge
        
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then
                if Aimbot.TeamCheck and player.Team == LocalPlayer.Team then continue end
                
                local targetPart = player.Character:FindFirstChild(Aimbot.HitPart)
                if targetPart then
                    local pos = Camera:WorldToScreenPoint(targetPart.Position)
                    if pos.Z > 0 then
                        local distance = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                        
                        if Aimbot.VisibleCheck then
                            local ray = Ray.new(Camera.CFrame.Position, (targetPart.Position - Camera.CFrame.Position).Unit * 1000)
                            local hit = workspace:FindPartOnRayWithIgnoreList(ray, {LocalPlayer.Character, player.Character})
                            if hit and hit:IsDescendantOf(player.Character) then
                                if distance < shortestDistance then
                                    closestPlayer = player
                                    shortestDistance = distance
                                end
                            end
                        else
                            if distance < shortestDistance then
                                closestPlayer = player
                                shortestDistance = distance
                            end
                        end
                    end
                end
            end
        end
        
        return closestPlayer
    end

    -- Keybind Handler
    UserInputService.InputBegan:Connect(function(input, gpe)
        if gpe then return end
        if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Aimbot.Keybind then
            if Aimbot.Enabled then
                if Aimbot.Target then
                    Aimbot.Target = nil
                    if Aimbot.Notify then
                        StarterGui:SetCore("SendNotification", {Title = "Aimbot", Text = "Lock released.", Duration = 2})
                    end
                else
                    local target = GetClosestPlayer()
                    if target then
                        Aimbot.Target = target
                        if Aimbot.Notify then
                            StarterGui:SetCore("SendNotification", {Title = "Aimbot", Text = "Locked on " .. target.Name, Duration = 2})
                        end
                    else
                        if Aimbot.Notify then
                            StarterGui:SetCore("SendNotification", {Title = "Aimbot", Text = "No player in FOV.", Duration = 2})
                        end
                    end
                end
            end
        end
    end)

    -- Main Loop
    RunService.RenderStepped:Connect(function()
        -- FOV and ESP Update
        if useRGB then
            currentHue = (tick() % 5) / 5
            espColor = Color3.fromHSV(currentHue, 1, 1)
        end
        if useRGB_FOV then
            fovHue = (tick() % 5) / 5
            fovCircle.Color = Color3.fromHSV(fovHue, 1, 1)
        else
            fovCircle.Color = fovColor
        end
        
        local mousePos = UserInputService:GetMouseLocation()
        fovCircle.Position = Vector2.new(mousePos.X, mousePos.Y)
        fovCircle.Radius = fovRadius
        fovCircle.Visible = fovEnabled

        -- Aimbot
        if Aimbot.Enabled and Aimbot.Target and Aimbot.Target.Character and Aimbot.Target.Character:FindFirstChild("Humanoid") and Aimbot.Target.Character.Humanoid.Health > 0 then
            local targetPart = Aimbot.Target.Character:FindFirstChild(Aimbot.HitPart)
            if targetPart then
                -- KO Check
                if Aimbot.KoCheck and (Aimbot.Target.Character.Humanoid.Health <= 2.15 or LocalPlayer.Character.Humanoid.Health <= 2.15) then
                    Aimbot.Target = nil
                    return
                end

                local pos = targetPart.Position
                if Aimbot.Prediction > 0 then
                    pos = pos + (targetPart.Velocity * Aimbot.Prediction)
                end
                
                if Aimbot.Smoothing then
                    local direction = (pos - Camera.CFrame.Position).Unit
                    local targetCFrame = CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + direction)
                    Camera.CFrame = Camera.CFrame:Lerp(targetCFrame, Aimbot.Smoothness)
                else
                    Camera.CFrame = CFrame.new(Camera.CFrame.Position, pos)
                end
            end
        end

        -- FOV Circle update
        if Aimbot.UseFov then
            FovCircle.Position = UserInputService:GetMouseLocation()
            FovCircle.Radius = Aimbot.FovRadius
            FovCircle.Visible = true
        else
            FovCircle.Visible = false
        end
    end)

    -- UI Toggle
    UserInputService.InputBegan:Connect(function(input, gpe)
        if gpe then return end
        if input.KeyCode == Enum.KeyCode.RightShift then
            Hawk:ToggleUI()
        end
    end) 
