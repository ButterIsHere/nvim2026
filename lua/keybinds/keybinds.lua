-- Window split
key.set("n", "<leader><S-v>", function()
  cmd("vsplit")
  print("New vertical split")
end)

key.set("n", "<leader><S-h>", function()
  cmd("split")
  print("New Horizontal split")
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

key.set("t", "<C-[>", "<C-\\><C-n>")

-- File explorer
key.set("n", "<leader>po", function()
  cmd("Ex")
  print("Files")
end)

-- Vim.opt 
key.set("n", "<leader>-", function()
  cmd("set sw=2")
  print("Shiftwidth set to 2")
end)

key.set("n", "<leader>=", function()
  cmd("set sw=4")
  print("Shiftwidth set to 4")
end)

  -- insert exit
  -- key.set("i", "jk", "<C-[>")
