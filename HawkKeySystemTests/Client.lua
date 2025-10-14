shared.key = shared.key or "KEY_HERE"

local Domain = "localhost"

local ValidationURL = "https://%s/Authenticate.php?key=%s"

ValidationURL = ValidationURL:format(Domain, shared.key)

local ExpectedResponse = "Whitelisted"

if(game:HttpGet(ValidationURL) == ExpectedResponse) then
    print("Key is valid!")
else
    print("Key is NOT valid!")
end
