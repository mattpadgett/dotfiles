local map = vim.api.nvim_set_keymap
local set = vim.keymap.set

map("n", "<leader>k9", "<CMD>FloatermNew --autoclose=2 --height=0.9 --width=0.9 k9s<CR>", { noremap = true })
map("n", "<leader>lg", "<CMD>FloatermNew --autoclose=2 --height=0.9 --width=0.9 lazygit<CR>", { noremap = true })
map("n", "<leader>ll", "<CMD>FloatermNew --autoclose=2 --height=0.9 --width=0.9 nnn -Hde<CR>", { noremap = true })
