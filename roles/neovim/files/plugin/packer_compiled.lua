-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/mpadgett/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/mpadgett/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/mpadgett/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/mpadgett/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/mpadgett/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  harpoon = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\ns\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\15extensions\1\0\0\1\3\0\0\bfzf\rquickfix\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nç\3\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\16\0\0\tbash\bcss\15dockerfile\ago\ngomod\thtml\15javascript\15typescript\njsdoc\tjson\blua\vpython\vsvelte\btsx\tyaml\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n‘\t\0\0\b\0#\0Q6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0005\1\v\0\18\2\0\0'\4\f\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\19\0'\6\20\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\21\0'\6\22\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\23\0'\6\24\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\25\0'\6\26\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\27\0'\6\28\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\29\0'\6\30\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\31\0'\6 \0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5!\0'\6\"\0\18\a\1\0B\2\5\1K\0\1\0E<CMD>lua require(\"telescope.builtin\").lsp_type_definitions{}<CR>\16<leader>lstA<CMD>lua require(\"telescope.builtin\").lsp_code_actions{}<CR>\16<leader>lslD<CMD>lua require(\"telescope.builtin\").lsp_implementations{}<CR>\16<leader>lsi@<CMD>lua require(\"telescope.builtin\").lsp_definitions{}<CR>\16<leader>lsd:<CMD>lua require(\"telescope.builtin\").registers()<CR>\15<leader>fr<<CMD>lua require(\"telescope.builtin\").diagnostics()<CR>\15<leader>fd:<CMD>lua require(\"telescope.builtin\").help_tags()<CR>\15<leader>fh8<CMD>lua require(\"telescope.builtin\").buffers()<CR>\15<leader>fb:<CMD>lua require(\"telescope.builtin\").live_grep()<CR>\15<leader>flJ<CMD>lua require(\"telescope.builtin\").find_files{ hidden = true }<CR>\15<leader>ff:<CMD>lua require(\"telescope.builtin\").git_files{}<CR>\15<leader>fg\6n\1\0\1\fnoremap\2\20nvim_set_keymap\bapi\bvim\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\4\0\0\20node_modules/.*\16secret.d/.*\n%.pem\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n¸\1\0\0\3\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\b\0'\2\t\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\27tokyonight_transparent\1\5\0\0\aqf\15vista_kind\rterminal\vpacker\24tokyonight_sidebars tokyonight_italic_functions\nnight\21tokyonight_style\6g\bvim\0" },
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-floaterm"] = {
    config = { "\27LJ\2\nı\2\0\0\b\0\v\0\0236\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1K\0\1\0K<CMD>FloatermNew --autoclose=2 --height=0.75 --width=0.75 nnn -Hde<CR>\15<leader>llH<CMD>FloatermNew --autoclose=2 --height=0.9 --width=0.9 lazygit<CR>\15<leader>lgD<CMD>FloatermNew --autoclose=2 --height=0.9 --width=0.9 k9s<CR>\15<leader>k9\6n\1\0\1\fnoremap\2\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/mpadgett/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\ns\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\15extensions\1\0\0\1\3\0\0\bfzf\rquickfix\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n‘\t\0\0\b\0#\0Q6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0005\1\v\0\18\2\0\0'\4\f\0'\5\r\0'\6\14\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\15\0'\6\16\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\17\0'\6\18\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\19\0'\6\20\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\21\0'\6\22\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\23\0'\6\24\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\25\0'\6\26\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\27\0'\6\28\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\29\0'\6\30\0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5\31\0'\6 \0\18\a\1\0B\2\5\1\18\2\0\0'\4\f\0'\5!\0'\6\"\0\18\a\1\0B\2\5\1K\0\1\0E<CMD>lua require(\"telescope.builtin\").lsp_type_definitions{}<CR>\16<leader>lstA<CMD>lua require(\"telescope.builtin\").lsp_code_actions{}<CR>\16<leader>lslD<CMD>lua require(\"telescope.builtin\").lsp_implementations{}<CR>\16<leader>lsi@<CMD>lua require(\"telescope.builtin\").lsp_definitions{}<CR>\16<leader>lsd:<CMD>lua require(\"telescope.builtin\").registers()<CR>\15<leader>fr<<CMD>lua require(\"telescope.builtin\").diagnostics()<CR>\15<leader>fd:<CMD>lua require(\"telescope.builtin\").help_tags()<CR>\15<leader>fh8<CMD>lua require(\"telescope.builtin\").buffers()<CR>\15<leader>fb:<CMD>lua require(\"telescope.builtin\").live_grep()<CR>\15<leader>flJ<CMD>lua require(\"telescope.builtin\").find_files{ hidden = true }<CR>\15<leader>ff:<CMD>lua require(\"telescope.builtin\").git_files{}<CR>\15<leader>fg\6n\1\0\1\fnoremap\2\20nvim_set_keymap\bapi\bvim\rdefaults\1\0\0\25file_ignore_patterns\1\0\0\1\4\0\0\20node_modules/.*\16secret.d/.*\n%.pem\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
try_loadstring("\27LJ\2\nı\2\0\0\b\0\v\0\0236\0\0\0009\0\1\0009\0\2\0005\1\3\0\18\2\0\0'\4\4\0'\5\5\0'\6\6\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\a\0'\6\b\0\18\a\1\0B\2\5\1\18\2\0\0'\4\4\0'\5\t\0'\6\n\0\18\a\1\0B\2\5\1K\0\1\0K<CMD>FloatermNew --autoclose=2 --height=0.75 --width=0.75 nnn -Hde<CR>\15<leader>llH<CMD>FloatermNew --autoclose=2 --height=0.9 --width=0.9 lazygit<CR>\15<leader>lgD<CMD>FloatermNew --autoclose=2 --height=0.9 --width=0.9 k9s<CR>\15<leader>k9\6n\1\0\1\fnoremap\2\20nvim_set_keymap\bapi\bvim\0", "config", "vim-floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n¸\1\0\0\3\0\n\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0006\0\0\0009\0\1\0+\1\1\0=\1\a\0006\0\0\0009\0\b\0'\2\t\0B\0\2\1K\0\1\0\27colorscheme tokyonight\bcmd\27tokyonight_transparent\1\5\0\0\aqf\15vista_kind\rterminal\vpacker\24tokyonight_sidebars tokyonight_italic_functions\nnight\21tokyonight_style\6g\bvim\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nç\3\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\21node_incremental\bgrn\21node_decremental\bgrm\19init_selection\bgnn\1\0\1\venable\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\16\0\0\tbash\bcss\15dockerfile\ago\ngomod\thtml\15javascript\15typescript\njsdoc\tjson\blua\vpython\vsvelte\btsx\tyaml\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
