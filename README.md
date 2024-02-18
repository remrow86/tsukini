![GitHub Repo stars](https://img.shields.io/github/stars/remrow86/tsukini?style=flat-square&logo=macys&logoColor=white)
![GitHub watchers](https://img.shields.io/github/watchers/remrow86/tsukini?style=flat-square&logo=github&logoColor=white)
<a href="https://github.com/remrow86/tsukini/releases/latest"><img alt="Download" src="https://img.shields.io/badge/download-gray?style=flat-square&logo=docusign&logoColor=white"></a>

# 🥒 tsukini <sub><sup><sub><sup>/tsɯkɪnɪ/</sup></sub></sup></sub>
tsukini is a high-speed .ini file parser written in pure Lua.
### It's fast
| Line count | Time to parse (Lua 5.1) | Time to parse (LuaJIT) |
| ---------- | ----------------------- | ---------------------- |
| 128        | `4ms`                   | `2ms`                  |
| 2048       | `33ms`                  | `27ms`                 |
| 32768      | `479ms`                 | `291ms`                |

<sup>Tested on a Raspberry Pi 3B. Results are even faster on newer devices.</sup>

### It's portable
tsukini doesn't make assumptions about your environment - file I/O is left to the user.
### It just works
tsukini doesn't know hundreds of data types. Strings, numbers, booleans and lists are all you need.
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
### Manual installation
Simply grab the [latest release](https://github.com/remrow86/tsukini/releases/latest) and move it into your project.

## Contributors
<a href = "https://github.com/remrow86/tsukini/graphs/contributors"><img src = "https://contrib.rocks/image?repo=remrow86/tsukini"/></a>
