
set.showtabline = 2

function MyTabLine()
  local s = ''
  for i, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(bufnr) and vim.bo[bufnr].buflisted then
      local name = vim.api.nvim_buf_get_name(bufnr)
      name = name ~= "" and vim.fn.fnamemodify(name, ':t') or '[No Name]'
      
      -- Highlight the active buffer differently
      if bufnr == vim.api.nvim_get_current_buf() then
        s = s .. '%#TabLineSel# ' .. name .. ' '
      else
        s = s .. '%#TabLine# ' .. name .. ' '
      end
    end
  end
  return s .. '%#TabLineFill#%T'
end

set.tabline = '%!v:lua.MyTabLine()'

-- Buffer navigation
key.set("n", "<S-l>", ":bnext<CR>", { desc = "Move to left window" })
key.set("n", "<S-h>", ":bprevious<CR>", { desc = "Move to left window" })

-- Close buffer
key.set("n", "<leader>m", function()
  if vim.bo.buftype == 'terminal' then
    vim.cmd('bd!')
    print("Closed terminal buffer")
  else
    vim.cmd('bd')
    print("Closed buffer")
  end
end, { silent = true})

