local OnMobile = game:GetService('UserInputService').TouchEnabled
local OnPc = game:GetService('UserInputService').KeyboardEnabled

local PcGames = {
	["855499080 283721918"] = {"","https://hawksoftworks.ga/HUB/Pc/Skywars.lua"},
	["318978013"] = {"Kick Off","https://hawksoftworks.ga/HUB/Pc/KickOff.lua"},
	["621129760"] = {"Kat","https://hawksoftworks.ga/HUB/Pc/Kat.lua"},
	["3770659466"] = {"Fnaf Five Nights Simulator","https://hawksoftworks.ga/HUB/Pc/FnafFiveNightsSimulator.lua"},
	["1224212277"] = {"Mad City","https://hawksoftworks.ga/HUB/Pc/MadCity.lua"},
	["142823291"] = {"Murder Mystery 2","https://hawksoftworks.ga/HUB/Pc/MurderMystery2.lua"}
}

local MobileGames = {
	["855499080 283721918"] = {"Skywars","https://hawksoftworks.ga/HUB/Mobile/Skywars.lua"},
	["318978013"] = {"Kick Off","https://hawksoftworks.ga/HUB/Mobile/KickOff.lua"},
	["621129760"] = {"Kat","https://hawksoftworks.ga/HUB/Mobile/Kat.lua"},
	["3770659466"] = {"Fnaf Five Nights Simulator","https://hawksoftworks.ga/HUB/Mobile/FnafFiveNightsSimulator.lua"},
	["1224212277"] = {"Mad City","https://hawksoftworks.ga/HUB/Mobile/MadCity.lua"},
	["142823291"] = {"Murder Mystery 2","https://hawksoftworks.ga/HUB/Mobile/MurderMystery2.lua"}
}


if OnPc == true then
	for _, url in next, PcGames do
		if string.find(_, game.PlaceId) then 
			loadstring(game:HttpGet(PcGames[_][2],true))(); break 		
		end
	end
end	


if OnMobile == true then
	for _, url in next, MobileGames do
		if string.find(_, game.PlaceId) then 
			loadstring(game:HttpGet(MobileGames[_][2],true))(); break 
		end
	end
end	