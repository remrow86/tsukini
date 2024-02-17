local tsukini = require("tsukini")

local file = io.open("settings.ini")
local contents = file:read("*a")
file:close()

local time = os.clock()
local settings = tsukini.parse(contents)
time = os.clock() - time

for name, section in pairs(settings) do
	if type(section) == "table" then
		print(name.. ":")
		for k, v in pairs(section) do
			print("", k .. "...." .. tostring(v) .. "...." .. type(v))
		end
	else
		print(name, section)
	end
end

print(time .. "s")