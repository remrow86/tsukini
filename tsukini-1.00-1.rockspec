package = "tsukini" 
version = "1.00-1"
source = {
	url = "git://github.com/remrow86/tsukini"
}
description = {
	summary = "Pure Lua .ini parser",
	detailed = [[
		tsukini is a fast .ini file parser written in pure Lua.
	]],
	homepage = "https://github.com/remrow86/tsukini",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1, <= 5.4"
}
build = {
	type = "builtin",
	modules = {
		tsukini = "tsukini.lua"
	}
}