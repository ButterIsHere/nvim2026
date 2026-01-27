local key = vim.keymap

-- Everfrost theme
key.set("n", "<leader>1", function()
  cmd("lua theme('everforest')")
  print("Theme: Everforest")
end)

-- VSCode theme
key.set("n", "<leader>2", function()
  cmd("lua theme('vscode')")
  print("Theme: VSCode")
end)

-- Catppuccin theme
key.set("n", "<leader>3", function()
  cmd("lua theme('catppuccin')")
  print("Theme: Catppuccin")
end)
