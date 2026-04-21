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
require("plugins.gitsigns")

if vim.fn.has("win32") == 1 then
    -- Use 'pwsh' if available, otherwise fall back to 'powershell'
    local powershell_exe = vim.fn.executable('pwsh') == 1 and 'pwsh' or 'powershell'
    
    vim.opt.shell = powershell_exe
    vim.opt.shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();"
    vim.opt.shellredir = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
    vim.opt.shellpipe = "2>&1 | Tee-Object %s; exit $LastExitCode"
    vim.opt.shellquote = ""
    vim.opt.shellxquote = ""
end

