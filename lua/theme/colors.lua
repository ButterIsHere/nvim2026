function theme(color)

  local mod = vim.api

  cmd.colorscheme(color or "everforest")

  -- Group everything here. Key = Highlight Group, Value = Table of settings
  local highlights = {
    -- Transparency group
    Normal       = { bg = "none" },
    NormalNC     = { bg = "none" },
    SignColumn   = { bg = "none" },
    StatusLine   = { bg = "none" },
    StatusLineNc = { bg = "none" },
    SignColumn   = { bg = "none" },
    WinBar       = { bg = "none" },
    WinBarNc     = { bg = "none" },
    
    -- Search (needs specific colors/styles)
    Search       = { bg = "none", fg = "none", underline = true, bold = true },
    CurSearch    = { bg = "none", fg = "none", underline = true, bold = true },

    -- Line Numbers (your specific colors)
    LineNr       = { bg = "none", fg = "#505050" },
    CursorLineNr = { bg = "none", fg = "#ffffff" },

    -- StatusLine
    StatusLine   = { bg = "none", fg = "none" },
    
    -- Buffer/Tabs (unique backgrounds)
    TabLine      = { bg = "none", fg = "none", italic = true },
    TabLineFill  = { bg = "none", fg = "none" },
    TabLineSel   = { bg = "#3c4841", fg = "none", underline = true, bold = true },
  }

  -- Loop it
  for object, settings in pairs(highlights) do
    mod.nvim_set_hl(0, object, settings)
  end
end

theme()

