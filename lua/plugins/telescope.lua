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
