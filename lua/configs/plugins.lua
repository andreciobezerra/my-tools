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
  use("williamboman/mason.nvim")
  -- Syntax parser
  use("nvim-treesitter/nvim-treesitter")
  -- Formatting
  use("lukas-reineke/lsp-format.nvim")
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
  use("nvim-telescope/telescope-live-grep-args.nvim")
  -- Interface
  use("akinsho/bufferline.nvim")
  use("nvim-lualine/lualine.nvim")
  use("stevearc/dressing.nvim")
  use("nvim-telescope/telescope-ui-select.nvim")
  --use({ "nvim-neo-tree/neo-tree.nvim", branch = "v2.x" })
  use("nvim-tree/nvim-tree.lua")
  -- Color scheme
  use("olimorris/onedarkpro.nvim")
  -- Embedded terminal
  use("voldikss/vim-floaterm")
  -- Languages
  use("mhanberg/elixir.nvim")
  use("mhinz/vim-mix-format")
end)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd([[
  filetype plugin indent on
  syntax on
]])

vim.cmd("colorscheme onedark_vivid")
