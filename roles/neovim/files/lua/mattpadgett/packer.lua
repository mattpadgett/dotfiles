local cmd = vim.api.nvim_command
local fn = vim.fn
local packer = nil

local function packer_verify()
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path })
    cmd 'packadd packer.nvim'
  end
end

local function packer_startup()
  if packer == nil then
    packer = require'packer'
    packer.init()
  end

  local use = packer.use
  packer.reset()

  -- Packer
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require('telescope').setup {
        defaults = {
          file_ignore_patterns = {
            "node_modules/.*",
            "secret.d/.*",
            "%.pem"
          }
        }
      }

      local map = vim.api.nvim_set_keymap
      local options = { noremap = true }

      -- Builtin
      map('n', '<leader>fg', '<CMD>lua require("telescope.builtin").git_files{}<CR>', options)
      map('n', '<leader>ff', '<CMD>lua require("telescope.builtin").find_files{ hidden = true }<CR>', options)
      map('n', '<leader>fl', '<CMD>lua require("telescope.builtin").live_grep()<CR>', options)
      map('n', '<leader>fb', '<CMD>lua require("telescope.builtin").buffers()<CR>', options)
      map('n', '<leader>fh', '<CMD>lua require("telescope.builtin").help_tags()<CR>', options)
      map('n', '<leader>fd', '<CMD>lua require("telescope.builtin").diagnostics()<CR>', options)
      map('n', '<leader>fr', '<CMD>lua require("telescope.builtin").registers()<CR>', options)

      -- Language Servers
      map('n', '<leader>lsd', '<CMD>lua require("telescope.builtin").lsp_definitions{}<CR>', options)
      map('n', '<leader>lsi', '<CMD>lua require("telescope.builtin").lsp_implementations{}<CR>', options)
      map('n', '<leader>lsl', '<CMD>lua require("telescope.builtin").lsp_code_actions{}<CR>', options)
      map('n', '<leader>lst', '<CMD>lua require("telescope.builtin").lsp_type_definitions{}<CR>', options)
    end
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = 'TSUpdate',
    config = function ()
      require('nvim-treesitter.configs').setup {
        ensure_installed = {
          'bash',
          'css',
          'dockerfile',
          'go',
          'gomod',
          'html',
          'javascript',
          'typescript',
          'jsdoc',
          'json',
          'lua',
          'python',
          'svelte',
          'tsx',
          'yaml',
        },
        highlight = {
          enable = true
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = 'gnn',
            node_incremental = 'grn',
            scope_incremental = 'grc',
            node_decremental = 'grm',
          }
        },
        indent = {
          enable = true
        }
      }
    end
  }

  -- Themes
  use {
    'folke/tokyonight.nvim',
    config = function ()
      vim.g.tokyonight_style = 'night'
      vim.g.tokyonight_italic_functions = true
      vim.g.tokyonight_sidebars = { 'qf', 'vista_kind', 'terminal', 'packer' }
      vim.g.tokyonight_transparent = false

      vim.cmd[[colorscheme tokyonight]]
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup {
        options = {
          extensions = { 'fzf', 'quickfix' }
        }
      }
    end
  }

  -- Utilities
  use("unblevable/quick-scope");
  use("nvim-treesitter/nvim-treesitter-context");

  use {
    'voldikss/vim-floaterm',
    config = function ()
      local map = vim.api.nvim_set_keymap
      local options = { noremap = true }

      map('n', '<leader>k9', '<CMD>FloatermNew --autoclose=2 --height=0.9 --width=0.9 k9s<CR>', options)
      map('n', '<leader>lg', '<CMD>FloatermNew --autoclose=2 --height=0.9 --width=0.9 lazygit<CR>', options)
      map('n', '<leader>ll', '<CMD>FloatermNew --autoclose=2 --height=0.75 --width=0.75 nnn -Hde<CR>', options)
    end
  }
end

local function init()
  packer_verify()
  packer_startup()
end

return {
  init = init
}
