function theme(color)

  local mod = vim.api

  color = color or "everforest"
  vim.cmd.colorscheme(color)

  -- Window transparancy
  mod.nvim_set_hl(0, "Normal", { bg = "none" })
  mod.nvim_set_hl(0, "NormalNC", { bg = "none" })
  mod.nvim_set_hl(0, "NormalFloat", { bg = "none" })

  -- Remove search background
  mod.nvim_set_hl(0, "Search", { bg = "none", fg = "none", underline = true, bold = true })
  mod.nvim_set_hl(0, "CurSearch", { bg = "none", fg = "none", underline = true, bold = true })

  -- StatusLine
  mod.nvim_set_hl(0, "StatusLine", { bg = "none", fg = "none", })
  mod.nvim_set_hl(0, "StatusLineNc", { bg = "none", fg = "none", })

  -- Winbar 
  mod.nvim_set_hl(0, "WinBar", { bg = "none"})
  mod.nvim_set_hl(0, "WinBarNC", { bg = "none"})

  -- Transparency for line numbers and the sign column (gutter)
  mod.nvim_set_hl(0, "LineNr", { bg = "none", fg = "#505050" })
  mod.nvim_set_hl(0, "CursorLineNr", { bg = "none", fg = "#ffffff" })
  mod.nvim_set_hl(0, "SignColumn", { bg = "none" })

  -- Buffer
  mod.nvim_set_hl(0, "TabLine", { bg = "none", fg = "none", italic = true })
  mod.nvim_set_hl(0, "TabLineFill", { bg = "none", fg = "none" })
  mod.nvim_set_hl(0, "TabLineSel", { bg = "#3c4841", fg = "none", underline = true, bold = true })

end

theme()

