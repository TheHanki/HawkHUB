local tweenservice = 	game:GetService("TweenService")
local coregui =         game:GetService("CoreGui")
local Loader =          game:GetObjects("rbxassetid://110221114597158")[1]
local syde = {
	theme = {
		['Accent'] = Color3.fromRGB(255, 255, 255);
		['HitBox'] = Color3.fromRGB(255, 255, 255);
		['Glow']   = Color3.fromRGB(0, 0, 0);

	};
	Connections = {};
	Comms = Instance.new('BindableEvent');
	ParentOverride = nil;
	Build = 'Lunar'
}
function syde:HidePlaceHolder(instance, placeholder, recursive)
	if typeof(instance) ~= "Instance" or type(placeholder) ~= "string" then
		warn("[removeplaceholder] Invalid input: Expected (Instance, string)")
		return
	end
	local target = instance:FindFirstChild(placeholder)
	if not target then
		warn(("[removeplaceholder] Placeholder '%s' not found in instance '%s'"):format(placeholder, instance.Name))
		return
	end
	if target:IsA("GuiObject") then
		target.Visible = false
	else
		warn(("[removeplaceholder] '%s' is not a GuiObject and cannot be hidden"):format(placeholder))
		return
	end

	if recursive then
		for _, child in ipairs(target:GetDescendants()) do
			if child:IsA("GuiObject") then
				child.Visible = false
			end
		end
	end
end


local tweenInfo = TweenInfo.new(0.7, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)


do

	function syde:Load(Config)
		
		local LOADER = Loader
		LOADER.Enabled = true
		LOADER.Parent = coregui

		-- PreLoad
		Config.Name = Config.Name or 'Syde™'
		Config.Logo = Config.Logo or 'rbxassetid://14554547135'
		Config.ConfigFolder = Config.ConfigFolder or 'syde'
		Config.Status = Config.Status or false
		Config.Accent = Config.Accent or syde.theme.Accent
		Config.HitBox = Config.HitBox or syde.theme.HitBox

		local LoaderConfig = {
			Name = Config.Name;
			Logo = 'rbxassetid://'..Config.Logo;
			ConfigFolder = Config.ConfigFolder;
			Status = Config.Status;
			Accent = Config.Accent or syde.theme.Accent;
			Hitbox = Config.HitBox or syde.theme.HitBox;
			Socials = {}
		}

		local TweenWorkPos = 315
		local TweenWorkAppear = 287
		local TweenWorkDisappear = 270

		local Styles = {
			GitHub = {
				BackGroundColor = Color3.fromRGB(39, 39, 39);
				GradColor = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(129, 129, 129))};
				StrokeColor = Color3.fromRGB(34, 34, 34)
			},
			Discord = {
				BackGroundColor = Color3.fromRGB(88, 141, 255);
				GradColor = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(91, 125, 147))};
				StrokeColor = Color3.fromRGB(88, 141, 255)
			},
			Site = {
				BackGroundColor = Color3.fromRGB(39, 11, 34);
				GradColor = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(181, 33, 255))};
				StrokeColor = Color3.fromRGB(67, 19, 59)
			}
		}


		if typeof(Config.Socials) == "table" and #Config.Socials > 0 then
			LOADER.load.Size = UDim2.new(0, 400, 0, 360)
			LOADER.load.social.Visible = true

			syde:HidePlaceHolder(LOADER.load.social.largeblock, 'largesocial')
			syde:HidePlaceHolder(LOADER.load.social, 'little')
			syde:HidePlaceHolder(LOADER.load.social.little, 'smallblock1')
			syde:HidePlaceHolder(LOADER.load.social.little, 'smallblock2')

			for _, social in ipairs(Config.Socials) do
				table.insert(LoaderConfig.Socials, {
					Name = social.Name or '@None';
					Discord = social.Discord or 'None';
					Style = social.Style or "Default";
					Size = social.Size or "Medium";
					CopyToClip = social.CopyToClip ~= nil and social.CopyToClip or true;
				})
			end

			for _, social in ipairs(LoaderConfig.Socials) do
				if social.Size == "Large" then
					local LargeSocial = LOADER.load.social.largeblock.largesocial:Clone()
					LargeSocial.Visible = true
					LargeSocial.Parent = LOADER.load.social.largeblock

					-- [StyleHandle]
					if social.Style == 'GitHub' then
						LargeSocial.BackgroundColor3 = Styles.GitHub.BackGroundColor
						LargeSocial.UIStroke.Color = Styles.GitHub.StrokeColor
						LargeSocial.UIGradient.Color = Styles.GitHub.GradColor

						LargeSocial.DiscordTitle.Visible  = false
						LargeSocial.Visit.Visible = false

						LargeSocial.SocialName.Position = UDim2.new(0, 45,0, 25)
						LargeSocial.SocialName.Text = 'GitHub'
						LargeSocial.GitName.Visible = true
						LargeSocial.GitName.Text = '@'..social.Name
						LargeSocial.ImageLabel.Image = 'rbxassetid://86992377698608'
						LargeSocial.UIStroke.UIGradient:Destroy()
					elseif social.Style == 'Discord' then
						LargeSocial.BackgroundColor3 = Styles.Discord.BackGroundColor
						LargeSocial.UIStroke.Color = Styles.Discord.StrokeColor
						LargeSocial.UIGradient.Color = Styles.Discord.GradColor
						LargeSocial.ImageLabel.Image = 'rbxassetid://108012241529487'

						if not LargeSocial.UIStroke.UIGradient then
							local strokeGrad = Instance.new('UIGradient', LargeSocial.UIStroke)
							strokeGrad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(91, 125, 147))}
							strokeGrad.Rotation = -34
						else
							LargeSocial.UIStroke.UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(91, 125, 147))}
						end


						LargeSocial.DiscordTitle.Visible  = true
						LargeSocial.Visit.Visible = true
						LargeSocial.GitName.Visible = false
						LargeSocial.SocialName.Position = UDim2.new(0, 45,0, 30)
						LargeSocial.SocialName.Text = social.Name
						LargeSocial.Visit.Position = UDim2.new(1, -95,0.5, 0)
						LargeSocial.Visit.ImageLabel.Visible = true
					elseif social.Style == 'WebSite' then
						LargeSocial.BackgroundColor3 = Styles.Site.BackGroundColor
						LargeSocial.UIStroke.Color = Styles.Site.StrokeColor
						LargeSocial.UIGradient.Color = Styles.Site.GradColor
						LargeSocial.ImageLabel.Image = 'rbxassetid://74915074739925'

						LargeSocial.DiscordTitle.Visible  = false
						LargeSocial.Visit.Visible = true
						LargeSocial.GitName.Visible = false

						if not LargeSocial.UIStroke.UIGradient then
							local strokeGrad = Instance.new('UIGradient', LargeSocial.UIStroke)
							strokeGrad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(181, 33, 225))}
							strokeGrad.Rotation = -25
						else
							LargeSocial.UIStroke.UIGradient.Color =  ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(181, 33, 225))}
						end


						LargeSocial.SocialName.Text = social.Name
						LargeSocial.Visit.ImageLabel.Visible = false
						LargeSocial.Visit.TextColor3 = Color3.fromRGB(255, 255, 255)
						LargeSocial.Visit.Text = 'Visit site'
						LargeSocial.Visit.Position = UDim2.new(1, -80,0.5, 0)
					end
				end

				if social.Size == "Small" then
					LOADER.load.social.little.Visible = true
					local SmallSocial = LOADER.load.social.little.smallblock1:Clone()
					SmallSocial.Visible = true
					SmallSocial.Parent = LOADER.load.social.little

					if social.Style == "GitHub" then
						SmallSocial.BackgroundColor3 = Styles.GitHub.BackGroundColor
						SmallSocial.UIStroke.Color = Styles.GitHub.StrokeColor
						SmallSocial.UIGradient.Color = Styles.GitHub.GradColor

						SmallSocial.SocialName.Text = 'GitHub'
						SmallSocial.Text.Visible = true
						SmallSocial.Text.TextColor3 = Color3.fromRGB(90, 90, 90)
						SmallSocial.Text.Text = '@'..social.Name
						SmallSocial.ImageLabel.Image = 'rbxassetid://86992377698608'
					elseif social.Style == 'WebSite' then
						SmallSocial.BackgroundColor3 = Styles.Site.BackGroundColor
						SmallSocial.UIStroke.Color = Styles.Site.StrokeColor
						SmallSocial.UIGradient.Color = Styles.Site.GradColor

						SmallSocial.SocialName.Text = social.Name
						SmallSocial.Text.Visible = true
						SmallSocial.Text.TextColor3 = Color3.fromRGB(255, 255, 255)
						SmallSocial.Text.Text = 'Visit Site'
						SmallSocial.ImageLabel.Image = 'rbxassetid://74915074739925'
						SmallSocial.ImageLabel.ImageColor3 = Color3.fromRGB(231, 160, 255)
					end
				end

				if social.CopyToClip then
				end
			end

			local function updateSize()
				LOADER.load.Size = UDim2.new(LOADER.load.Size.X.Scale, LOADER.load.Size.X.Offset, 0,  LOADER.load.social.UIListLayout.AbsoluteContentSize.Y  + 235)
			end

			LOADER.load.social.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateSize)

			updateSize()

		else
			LoaderConfig.Socials = nil
		end

		if LoaderConfig.Socials == nil then
			LOADER.load.Size = UDim2.new(0, 400, 0, 250)
			LOADER.load.social.Visible = false
			TweenWorkPos = 200
			TweenWorkDisappear = 150
			TweenWorkAppear = 177
		end


		LOADER.load.logo.Image = LoaderConfig.Logo;
		syde.theme.Accent = Config.Accent;
		syde.theme.HitBox = Config.HitBox;
		LOADER.load.info.build.Text = syde.Build

		if LoaderConfig.Status == false then
			LOADER.load.logo.stroke.UIStroke.Color = Color3.fromRGB(24, 24, 24)
			LOADER.load.logo["Title/Status"].Text = 'Jannis Hub'
		end

		local statusColors = {
			Stable = { Color = Color3.fromRGB(25, 229, 22), Text = '<font color="#24bf48">Stable</font>' },
			Unstable = { Color = Color3.fromRGB(227, 229, 81), Text = '<font color="#e3e551">Unstable</font>' },
			Detected = { Color = Color3.fromRGB(229, 44, 47), Text = '<font color="#e52c2f">Detected</font>' },
			Patched = { Color = Color3.fromRGB(229, 44, 47), Text = '<font color="#e52c2f">Patched</font>' }
		}

		local statusData = statusColors[LoaderConfig.Status]
		if statusData then
			LOADER.load.logo.stroke.UIStroke.Color = statusData.Color
			LOADER.load.logo["Title/Status"].Text = string.format('%s  <font color="#363636">•</font>  %s', LoaderConfig.Name, statusData.Text)
		end

		local function initLoader()
			tweenservice:Create( LOADER.load.Salt, TweenInfo.new(0.65, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 25,0, 25)}):Play()
			tweenservice:Create( LOADER.load.Salt, TweenInfo.new(0.65, Enum.EasingStyle.Exponential), {TextTransparency = 1}):Play()
		end

		local function TweenWorkLabel(Finish, icon, Text)
			LOADER.load.work.Position = UDim2.new(0.5, 0,1, -40)
			LOADER.load.work.Text = Text
			LOADER.load.work.ImageLabel.Image = icon
			tweenservice:Create( LOADER.load.work, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { TextTransparency = 0 }):Play()
			tweenservice:Create( LOADER.load.work.ImageLabel, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { ImageTransparency = 0 }):Play()
			tweenservice:Create( LOADER.load.work, TweenInfo.new(0.5, Enum.EasingStyle.Quint), { Position = UDim2.new(0.5, 0,1, -73) }):Play()
			--	tweenservice:Create(game.Workspace.Camera, TweenInfo.new(1, Enum.EasingStyle.Exponential), { FieldOfView  = game.Workspace.Camera.FieldOfView - 3 }):Play()
			task.wait(Finish)
			tweenservice:Create( LOADER.load.work, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { TextTransparency = 1 }):Play()
			tweenservice:Create( LOADER.load.work.ImageLabel, TweenInfo.new(0.5, Enum.EasingStyle.Exponential), { ImageTransparency = 1 }):Play()
			tweenservice:Create( LOADER.load.work, TweenInfo.new(0.5, Enum.EasingStyle.Quint), { Position = UDim2.new(0.5, 0,1, -100) }):Play()
			task.wait(0.6)

			-- reset

		end

		local function load()
			TweenWorkLabel(1,'rbxassetid://136002400178503', 'Securing UI...')
			TweenWorkLabel(1,'rbxassetid://126745165401124', 'Loading Files..')
			TweenWorkLabel(1,'rbxassetid://108012241529487', 'Checking For Discord...')
			TweenWorkLabel(1,'rbxassetid://136405833725573', 'Loading UI...')
			task.wait(1)
			tweenservice:Create( LOADER.load.Salt, TweenInfo.new(0.65, Enum.EasingStyle.Quint), {Size = UDim2.new(0, 146,0, 25)}):Play()
			tweenservice:Create( LOADER.load.Salt.ImageLabel, TweenInfo.new(0.65, Enum.EasingStyle.Exponential), {ImageTransparency = 0}):Play()
		end

		local TimeTillLoad = 1.5

		while TimeTillLoad > 0 do
			LOADER.load.info.TimeTill.Text = string.format("%.2f", TimeTillLoad) 
			task.wait(0.01) 
			TimeTillLoad -= 0.01 
		end

		LOADER.load.info.TimeTill.Text = '0.00'

		task.wait(TimeTillLoad)

		initLoader()
		task.wait(0.08)
		load()

		task.wait(2)

		LOADER:Destroy()

	end

end


SydeLoader = syde


SydeLoader:Load({
    Logo = '10179402650',
    Name = 'Hawk HUB',
    Status = 'Stable',
    Accent = Color3.fromRGB(255,0,0),
    HitBox = Color3.fromRGB(255,0,0),
    AutoLoad = false,
    Socials = {
        [1] = {
            Name = 'xwerta';
            Style = 'GitHub';
            Size = "Small";
            CopyToClip = true
        },
        [2] = {
            Name = '.gg/qCvhJhfxf2';
            Style = 'WebSite';
            Discord = "qCvhJhfxf2";
            Size = "Small";
            CopyToClip = true
        }
    }
})
