-- Terminal
key.set("n", "<leader>th", function()
  cmd("wincmd J")
  cmd("botright 10split | terminal")
  print("New Terminal")
end)

-- Terminal vertical
key.set("n", "<leader>ta", function()
  cmd("wincmd L")
  cmd("vertical botright 50split | terminal")
  print("New Terminal")
end)

