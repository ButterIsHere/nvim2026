-- Global variable
_G.cmd = vim.cmd
_G.key = vim.keymap
vim.g.mapleader = " "

-- lua/
require("main.options")
require("main.pckr")
require("main.keybinds")
require("main.buffer")
require("theme.colors")
require("theme.theme")
