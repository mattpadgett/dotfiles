local set = vim.keymap.set
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

set("n", "<leader>a", mark.add_file)
set("n", "<C-h>", ui.toggle_quick_menu)
set("n", "<C-j>", ui.nav_prev)
set("n", "<C-k>", ui.nav_next)
