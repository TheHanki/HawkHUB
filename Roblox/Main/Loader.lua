local old;
old = hookfunction(game.HttpGet, newcclosure(function(olgame, url)
if url:find("xwerta") then
url = url:gsub("xwerta","TheHanki")
end
return old(olgame, url)
end))
loadstring(game:HttpGet("https://raw.githubusercontent.com/xwerta/HawkHUB/refs/heads/main/Roblox/Main/HawkHUB.lua"))()
