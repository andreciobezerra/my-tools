local set = vim.opt
local global = vim.g

global.loaded_netrw = 1
global.loaded_netrwPlugin = 1
global.mix_format_on_save = 1

set.background = "dark"
set.clipboard = "unnamedplus"
set.completeopt = "noinsert,menuone,noselect"
set.cursorline = true
set.expandtab = true
set.foldexpr = "nvim_treesitter#foldexpr()"
set.foldmethod = "manual"
set.hidden = true
set.inccommand = "split"
set.mouse = "a"
set.number = true
set.shiftwidth = 2
set.smarttab = true
set.smartindent = true
set.autoindent = true
set.splitbelow = false
set.splitright = true
set.swapfile = false
set.tabstop = 2
set.termguicolors = true
set.title = true
set.ttimeoutlen = 0
set.updatetime = 250
set.wildmenu = true
set.wrap = true

vim.cmd([[ 
  augroup guicursor
    autocmd!
    autocmd VimLeave,VimSuspend * set guicursor=a:ver25-blinkwait300-blinkon200-blinkoff150
  augroup end
]])


