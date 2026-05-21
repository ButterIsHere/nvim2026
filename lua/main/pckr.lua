local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
{
    -- Essentials
    'nvim-treesitter/nvim-treesitter',
    -- Modern pckr function format to reliably trigger updates
    run = function()
      vim.cmd('TSUpdate')
    end,
    config = function()
      -- Just define which parsers you want installed. 
      -- Neovim handles the highlighting and module loading natively now!
      vim.g.nvim_treesitter_ensure_installed = { 
        "css", "html", "lua", "vim", "vimdoc", "javascript", "python",
        "rust", "go"
      }
    end
  };

  {
    'nvim-telescope/telescope.nvim',
    --tag = '0.1.5',
    dependencies = {'nvim-lua/plenary.nvim'}
  };

  -- AI
  -- {
  --   'yetone/avante.nvim',
  --   -- Cross-platform build step: Uses PowerShell on Windows, 'make' on Linux/macOS
  --   run = function()
  --     if vim.fn.has('win32') == 1 then
  --       vim.fn.system('powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false')
  --     else
  --       vim.fn.system('make')
  --     end
  --   end
  -- };
  -- 'stevearc/dressing.nvim';
  -- 'nvim-lua/plenary.nvim';
  -- 'MunifTanjim/nui.nvim';
  -- 'HakonHarnes/img-clip.nvim';        -- Handles rich layout elements for Avante
  -- 'nvim-tree/nvim-web-devicons';     -- Provides UI icons for Telescope, Dressing, and Avante

  -- Quality of life
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  };

  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('ibl').setup()
    end
  };

  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  };

  { 'github/copilot.vim' };

  -- Color schemes
  { 'sainnhe/everforest' };
  { 'Mofiqul/vscode.nvim' };
  { 'catppuccin/nvim' };
  { 'rose-pine/neovim'};
  { 'projekt0n/github-nvim-theme'};
  { 'slugbyte/lackluster.nvim'};
}
