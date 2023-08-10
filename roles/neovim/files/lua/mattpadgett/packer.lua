local cmd = vim.api.nvim_command
local fn = vim.fn
local packer = nil

local function packer_verify()
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
    cmd "packadd packer.nvim"
  end
end

local function packer_startup()
  if packer == nil then
    packer = require("packer")
    packer.init()
  end

  local use = packer.use
  packer.reset()

  -- Packer
  use("wbthomason/packer.nvim")

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.2",
    requires = { {"nvim-lua/plenary.nvim"} },
    config = function()
      require("telescope").setup {
        defaults = {
          file_ignore_patterns = {
            "node_modules/.*",
            "secret.d/.*",
            "%.pem"
          }
        }
      }
    end
  }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = "TSUpdate"
  }

  -- Themes
  use {
    "folke/tokyonight.nvim",
    config = function ()
      vim.g.tokyonight_style = "night"
      vim.g.tokyonight_italic_functions = true
      vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
      vim.g.tokyonight_transparent = false

      vim.cmd[[colorscheme tokyonight]]
    end
  }

  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true },
    config = function()
      require("lualine").setup {
        options = {
          extensions = { "fzf", "quickfix" }
        }
      }
    end
  }

  -- LSP
  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    requires = {

      -- LSP Support
      {"neovim/nvim-lspconfig"},
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},
      {"hrsh7th/cmp-buffer"},
      {"hrsh7th/cmp-path"},
      {"saadparwaiz1/cmp_luasnip"},
      {"hrsh7th/cmp-nvim-lsp"},
      {"hrsh7th/cmp-nvim-lua"},

      -- Snippets
      {"L3MON4D3/LuaSnip"},
      {"rafamadriz/friendly-snippets"},
    }
  }

  -- Utilities
  use("unblevable/quick-scope")
  use("nvim-treesitter/nvim-treesitter-context")
  use("voldikss/vim-floaterm")
  use("theprimeagen/harpoon")
end

local function init()
  packer_verify()
  packer_startup()
end

return {
  init = init
}
