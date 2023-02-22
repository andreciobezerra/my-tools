local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- INSERT MODE
keymap("i", "<C-f>", "<ESC>:Telescope fd<CR>", default_opts)
keymap("i","<C-t>", "<ESC>:FloatermNew<CR>", default_opts)
keymap("i","<C-w>", "<ESC>:bd<CR>", default_opts)
keymap("i","<C-S-Down>", "<ESC>:t.<CR>", default_opts)

-- NORMAL MODE
keymap("n", "<C-f>", ":Telescope fd<CR>", default_opts)
keymap("n", "<C-w>", ":bd<CR>", default_opts)
