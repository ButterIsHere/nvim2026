-- Global variable
_G.cmd = vim.cmd
_G.key = vim.keymap
_G.set = vim.opt
vim.g.mapleader = " "

-- lua/
require("main.options")
require("main.pckr")
require("keybinds.keybinds")
require("keybinds.terminal_keybinds")
require("keybinds.buffer")

require("theme.colors")
require("theme.theme")

require("plugins.telescope")
