_Hawk = "ohhahtuhthttouttpwuttuaunbotwo" 

local Hawk = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHzCihan/IDream/main/Libs/MobileLib.lua", true))()

local Notificatin = Hawk:Notification()
Notificatin:CreateNotification("10179402650","Game Detected!","Hawk HUB","It seems like Hawk found a script for a game you are playing right now. Would you want to load it?","Yes","No",function()

	Notificatin:Notification("Hawk Loaded!","Have Fun!","Done",1)
	Notificatin:Notification("Hawk Loaded!","Have Fun!","Error",1)
	Notificatin:Notification("Hawk Loaded!","Have Fun!","Warn",1)
	Notificatin:Notification("Hawk Loaded!","Have Fun!","Notification",1)
	Notificatin:Notify("Hawk Loaded!","Have Fun!","Done",function()
		Notificatin:Notify("Hawk Loaded!","Have Fun!","Error",function()
			Notificatin:Notify("Hawk Loaded!","Have Fun!","Warn",function()
				Notificatin:Notify("Hawk Loaded!","Have Fun!","Notification",function()

				end)
			end)
		end)
	end)


	local Window = Hawk:Window("Hawk HUB Pc | Example")
	local Tab1 = Window:Tab("Tab")

	Hawk:Bildir("31","31","31",function()
		print("alal")
	end)
	Tab1:Label("Label")
	Tab1:Button("Button",function()
		print("lol")
	end)
	Tab1:Line()
	Tab1:Slider("Speed",16,100,function(speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end)
	Notificatin:Load(31,31,function()
		warn'zord'
	end)
	Notificatin:View(31,31,3)
	Tab1:TextBox("TextBox","31",function(txt)
		if txt == "lol" then
			print("lol")
		elseif txt == "Hanki" then
			print("HankiIsBest :sunglasses:")
		end
	end)
	Tab1:Toggle("Toggle",function(annen)
		print(annen)
	end)
	Tab1:Dropdown("Im piro",{"Heheheha","Skull"},function(current)
		if current == "Skull" then
			print("Skull")
		end
	end)
	Hawk:Bildirim("31","31",5)
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










