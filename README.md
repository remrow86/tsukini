# 🥒 tsukini
tsukini /tsɯkɪnɪ/ is a high-speed .ini file parser written in pure Lua.
### It's fast
### It's portable
tsukini doesn't make assumptions about your environment - file I/O is left to the user.
### It just works

## Example
```lua
local tsukini = require("tsukini")

local handle = io.open("settings.ini")
local contents = handle:read("*a")
handle:close()

local settings = tsukini.parse(contents)
```
## Installation
### Using Luarocks
```shell
git clone https://github.com/remrow86/tsukini
cd tsukini
luarocks make
```
## Contributors
<a href = "https://github.com/remrow86/tsukini/graphs/contributors"><img src = "https://contrib.rocks/image?repo=remrow86/tsukini&size=32x32"/></a>
