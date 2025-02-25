local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    --- Old Color Scheme
---    {
---  "folke/tokyonight.nvim",
---  lazy = false,
---  priority = 1000,
---  opts = {},
---    },
---    New Color Scheme
    {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    },

    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {"mbbill/undotree"},

    --- LSP Config 
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

    --- Git
    {'tpope/vim-fugitive'},

    --- Harpoon
    {
        'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        dependencies = { 'nvim-lua/plenary.nvim' }
    }
})
