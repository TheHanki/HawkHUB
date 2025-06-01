--[[

██╗  ██╗ █████╗ ███╗   ██╗██╗  ██╗██╗███████╗    ██╗  ██╗████████╗████████╗██████╗     ███████╗██████╗ ██╗   ██╗       ██╗        █████╗ ███╗   ██╗████████╗██╗    ██╗  ██╗████████╗████████╗██████╗     ███████╗██████╗ ██╗   ██╗
██║  ██║██╔══██╗████╗  ██║██║ ██╔╝██║██╔════╝    ██║  ██║╚══██╔══╝╚══██╔══╝██╔══██╗    ██╔════╝██╔══██╗╚██╗ ██╔╝       ██║       ██╔══██╗████╗  ██║╚══██╔══╝██║    ██║  ██║╚══██╔══╝╚══██╔══╝██╔══██╗    ██╔════╝██╔══██╗╚██╗ ██╔╝
███████║███████║██╔██╗ ██║█████╔╝ ██║███████╗    ███████║   ██║      ██║   ██████╔╝    ███████╗██████╔╝ ╚████╔╝     ████████╗    ███████║██╔██╗ ██║   ██║   ██║    ███████║   ██║      ██║   ██████╔╝    ███████╗██████╔╝ ╚████╔╝ 
██╔══██║██╔══██║██║╚██╗██║██╔═██╗ ██║╚════██║    ██╔══██║   ██║      ██║   ██╔═══╝     ╚════██║██╔═══╝   ╚██╔╝      ██╔═██╔═╝    ██╔══██║██║╚██╗██║   ██║   ██║    ██╔══██║   ██║      ██║   ██╔═══╝     ╚════██║██╔═══╝   ╚██╔╝  
██║  ██║██║  ██║██║ ╚████║██║  ██╗██║███████║    ██║  ██║   ██║      ██║   ██║         ███████║██║        ██║       ██████║      ██║  ██║██║ ╚████║   ██║   ██║    ██║  ██║   ██║      ██║   ██║         ███████║██║        ██║   
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝╚══════╝    ╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝         ╚══════╝╚═╝        ╚═╝       ╚═════╝      ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝    ╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝         ╚══════╝╚═╝        ╚═╝   

]]

-- I havent finished this one, but you might finish it :D




-- Http Spy

rconsolename("Spyro's Http Spy")

local plr = game:GetService("Players").LocalPlayer
local old
old =
	hookfunction(
		request,
		newcclosure(
			function(newreq)
				if newreq.Url:find("discord") or newreq.Url:find("webhook") then
				print(newreq.Url)
				rconsoleprint("\n")
				rconsoleprint(newreq.Url)
				setclipboard(newreq.Url)
				warn("Blocked webhook!")
				return
			end
				return old(newreq)
			end
		)
	)

local old
old =
	hookfunction(
		game.HttpGet,
		newcclosure(
			function(olgame, url)
				if url:find("pastebin") then
				url = url:gsub("pastebin", "pastebinp")
			elseif url:find("process") then
				rconsolewarn(url)
			end
				print(url)
				setclipboard(url)
				rconsoleprint(url)
				rconsoleprint("\n")
				return old(olgame, url)
			end
		)
	)

setreadonly(getrawmetatable(game), false)

local mt = getrawmetatable(game) or getmetatable(game)
local __oldnamecall = mt.__namecall

mt.__namecall =
	newcclosure(
		function(self, ...)
			local args = {...}
			local namecallmethod = getnamecallmethod()

			if self == plr and string.lower(namecallmethod) == "kick" then
			warn("bitchass tried to kick you")
			wait(9e9)
			return nil
		end
			return __oldnamecall(self, unpack(args))
		end
	)

setreadonly(getrawmetatable(game), true)












-- Anti Http Spy

local HttpService = game:GetService("HttpService")
local Data = game:HttpGet("https://raw.githubusercontent.com/TheHanki/Hawk/main/Games.json")
local HawkTable = {hawkcheck = "hanki&alexwerehere"} -- hawkhubnevergetsold
local real = {Hanki = "hancibilal31", Alex = "bebelakdevamsutu"}
local checkhawk = {_Hawk = "ohhahtuhthttouttpwuttuaunbotwo"}
local Hawk = {}

if Data == "VHCH-CRASH" then
	warn("loaded")
end

setmetatable(Hawk, HawkTable)

if Hawk then
	local rawtable = getmetatable(Hawk)
	for i, v in pairs(rawtable) do
		if
			tostring(i):find("hanki&alexwerehere") or tostring(i):find("hawkhubnevergetsold") or
			tostring(v):find("hanki&alexwerehere") or
			tostring(v):find("hawkhubnevergetsold")
		then
			setmetatable(Hawk, real)
			local rawtable = getmetatable(Hawk)
			for i, v in pairs(rawtable) do
				if tostring(v):find("hancibilal31") or tostring(v):find("bebelakdevamsutu") then
					setmetatable(Hawk, nil)
					if checkhawk._Hawk == "ohhahtuhthttouttpwuttuaunbotwo" then
						print("Welcome Admin!")
						print("I know you're using http spy :3")
						wait(9e9)
					else
						while true do
						end
					end
				else
					while true do
					end
				end
			end
		else
			while true do
			end
		end
	end
else
	getrenv().print = function(...)
		return
	end
	getrenv().warn = function(...)
		return
	end
	getrenv().error = function(...)
		return
	end
	getgenv().clonefunction = function(...)
		return
	end

	local functions = {
		rconsoleprint,
		print,
		setclipboard,
		rconsoleerr,
		rconsolewarn,
		warn,
		error,
		rconsoletitle,
		rconsoleinfo,
		rconsolerr,
		rendernametag
	}

	for i, v in next, functions do
		local oldfunc
		oldfunc =
			hookfunction(
				v,
				newcclosure(
					function(...)
						local args = {...}
						for i, v in pairs(args) do
						if
							tostring(i):find("xHzCihan") or tostring(v):find("xHzCihan") or tostring(i):find("TheHanki") or
							tostring(v):find("TheHanki")
						then
							while true do
							end
						end
					end
						return oldfunc(table.unpack(args))
					end
				)
			)
	end

	if _G.straw then
		while true do
		end
	end

	setmetatable(
		_G,
		{
			__newindex = function(t, i, v)
				if tostring(i) == "straw" then
					while true do
					end
				end
			end
		}
	)

	local oldwrite
	oldwrite =
		hookfunction(
			writefile,
			function(file, content)
				if (string.find(string.lower(content), "https://") or string.find(string.lower(content), "//")) then
				return
			end

				return oldwrite(file, content)
			end
		)

	local oldappend
	oldappend =
		hookfunction(
			appendfile,
			function(file, content)
				if (string.find(string.lower(content), "https://") or string.find(string.lower(content), "//")) then
				return
			end

				return oldappend(file, content)
			end
		)

	-- connect
	game.DescendantAdded:Connect(
		function(c)
			if c and c:IsA("TextLabel") or c:IsA("TextButton") or c:IsA("Message") then
				if string.find(string.lower(c.Text), "https://") then
					c:Destroy()
				end
			end
		end
	)
end
