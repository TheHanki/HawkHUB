shared.key = shared.key or "KEY_HERE"

local Domain = "demo.lexir.rocks"

local ValidationURL = "https://%s/Authenticate.php?key=%s&rand=%d"
local Rand = math.random(-10000000, 10000000)
local md5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/kikito/md5.lua/master/md5.lua"))().sumhexa

ValidationURL = ValidationURL:format(Domain, shared.key, Rand)

local ExpectedResponse = md5(md5(shared.key) .. md5(tostring(Rand)))

if(game:HttpGet(ValidationURL) == ExpectedResponse) then
    print("Key is valid!")
else
    print("Key is NOT valid!")
end
