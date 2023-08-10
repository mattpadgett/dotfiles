local tele = require("telescope.builtin")
local set = vim.keymap.set

-- Builtins
set("n", "<leader>gf", tele.git_files)
set("n", "<leader>ff", function() tele.find_files{ hidden = true } end)
set("n", "<leader>fg", tele.live_grep)
set("n", "<leader>fb", tele.buffers)
set("n", "<leader>fr", tele.registers)

