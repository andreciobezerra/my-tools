-- Include packer.nvim
vim.cmd([[packadd packer.nvim]])

require('packer').startup(function(use)
-- Plugin manager
  use("wbthomason/packer.nvim")
-- Completion
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-path")
  use("hrsh7th/nvim-cmp")
-- Snippets motor
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
-- Language server
  use("neovim/nvim-lspconfig")
  use("williamboman/nvim-lsp-installer")
-- Syntax parser
  use("nvim-treesitter/nvim-treesitter")
-- Utilities
  use("windwp/nvim-autopairs")
  use("norcalli/nvim-colorizer.lua")
  use("lewis6991/gitsigns.nvim")
  -- Dependencies
  use("nvim-lua/plenary.nvim")
  use("kyazdani42/nvim-web-devicons")
  use("MunifTanjim/nui.nvim")
  -- File browser
  use("nvim-telescope/telescope.nvim")
  -- Interface
  use("akinsho/bufferline.nvim")
  use({ "nvim-neo-tree/neo-tree.nvim", branch = "v2.x" })
  -- :use("nvim-lualine/lualine.nvim")
  -- Color scheme
  use("olimorris/onedarkpro.nvim")
  use("joshdick/onedark.vim")
  -- Embedded terminal
  use("voldikss/vim-floaterm")
end)

-- Autopairs
require("nvim-autopairs").setup({
    disable_filetype = { "TelescopePrompt" },
})

-- Colorizer
require("colorizer").setup()

-- Git signs
require("gitsigns").setup()

-- Bufferline
require("bufferline").setup()

-- Lualine
--require("lualine").setup()

-- Neo tree
require("neo-tree").setup({
  close_if_last_window = false,
  enable_diagnostics = true,
  enable_git_status = true,
  popup_border_style = "rounded",
  sort_case_insensitive = false,
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
    },
  },
  window = { width = 30 },
})

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd([[
  filetype plugin indent on
  syntax on
  colorscheme onedark_dark
]])
