-- Window split
key.set("n", "<leader><S-v>", function()
  cmd("vsplit")
  print("New vertical split")
end)

key.set("n", "<leader><S-h>", function()
  cmd("split")
  print("New vertical split")
end)

-- Window navigation
key.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
key.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
key.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
key.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Resize keybinds
key.set("n", "<C-M-j>", ":resize +2<CR>")
key.set("n", "<C-M-k>", ":resize -2<CR>")
key.set("n", "<C-M-h>", ":vertical resize +2<CR>")
key.set("n", "<C-M-l>", ":vertical resize -2<CR>")

-- Terminal
key.set("n", "<leader>t", function()
  cmd("split")
  cmd("wincmd J")
  cmd("terminal")
  cmd("startinsert")
  print("New Terminal")
end)

key.set("t", "<C-[>", "<C-\\><C-n>")

-- File explorer
key.set("n", "<leader>po", function()
  cmd("Ex")
  print("Files")
end)

-- Telescope keybinds
local ts = require('telescope.builtin')

-- Find files in your project
key.set('n', '<leader>ff', function()
  ts.find_files()
  print("Searching files...")
end, { desc = "Telescope Find Files" })

-- Search for text inside files (requires ripgrep)
key.set('n', '<leader>fs', function()
  ts.live_grep()
  print("Live Grep...")
end, { desc = "Telescope Live Grep" })

-- Search through your open buffers (tabs)
key.set('n', '<leader>fb', function()
  ts.buffers()
  print("Searching buffers...")
end, { desc = "Telescope Buffers" })

-- Search help tags (great for learning Neovim)
key.set('n', '<leader>fh', function()
  ts.help_tags()
  print("Searching help...")
end, { desc = "Telescope Help" })

-- Buffer navigation
key.set("n", "<S-l>", ":bnext<CR>", { desc = "Move to left window" })
key.set("n", "<S-h>", ":bprevious<CR>", { desc = "Move to left window" })

-- Close buffer
key.set("n", "<leader>bd", function()
  if vim.bo.buftype == 'terminal' then
    vim.cmd('bd!')
    print("Closed terminal buffer")
  else
    vim.cmd('bd')
    print("Closed buffer")
  end
end, { silent = true})

  -- insert exit
  -- key.set("i", "jk", "<C-[>")
