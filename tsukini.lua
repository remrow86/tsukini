-- Copyright (c) 2024 remrow86
-- This file is licensed under the MIT license - see the LICENSE file or https://mit-license.org

local tsukini = {}

tsukini.lineBreak = "\r\n"

function tsukini.parse(contents)
	local output = {}
	local currentSection = output
	local currentSectionName
	-- traverse lines
	for line in contents:gmatch("[^" .. tsukini.lineBreak .. "]+") do
		-- omit comments, trim whitespace
		line = line:match("[^%s][^;]+[^%s;]")
		if line:match("%[[^%[%]]+%]") then -- section declaration
			currentSectionName = line:sub(2, -2)
			output[currentSectionName] = {}
			currentSection = output[currentSectionName]
		elseif line:match("[^=]+=") then -- variable declaration
			local name = line:match("[^%s=]*")
			local value = line:sub(line:find("=")+1, -1):match("[^%s].*[^%s]?")
			if value then
				if tonumber(value) then
					value = tonumber(value)
				elseif value:lower() == "yes" or value:lower() == "no" then
					value = value:lower() == "yes"
				elseif value:match("[\"\'][^\"\']*[\"\']") then
					value = value:match("[^\"\'].*[^\"\']")
				end
			end
			currentSection[name] = value
		end
	end
	return output
end

return tsukini
