local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- INSERT MODE
keymap("i", "<C-e>", "<ESC>:Telescope fd<CR>", default_opts)
keymap("i","<C-w>", "<ESC>:bd<CR>", default_opts)
keymap("i","<C-S-Down>", "<ESC>:t.<CR>", default_opts)

-- NORMAL MODE
keymap("n", "<C-e>", ":Telescope fd<CR>", default_opts)
keymap("n", "<C-k>", ":Telescope keymaps<CR>", default_opts)
keymap("n", "<C-t>", ":FloatermNew<CR>", default_opts)
keymap("n", "<C-f>", ":Telescope live_grep<CR>", default_opts)
keymap("n", "<C-b>", ":NvimTreeToggle<CR>", default_opts)
