# 🥒 tsukini
tsukini /tsɯkɪnɪ/ is a high-speed .ini file parser written in pure Lua.
### It's fast
| Line count | Time to parse (Lua 5.1) | Time to parse (LuaJIT) |
| ---------- | ----------------------- | ---------------------- |
| 128        | `0.004024s`             | `0.002606s`            |
| 2048       | `0.033153s`             | `0.02786s`             |
| 32768      | `0.479747s`             | `0.291266s`            |

<sup>* Tested on a Raspberry Pi 3B. Results will be even faster on any device stronger than the average microwave.</sup>
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
