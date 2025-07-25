-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ 'phaazon/hop.nvim' },
	{
  	"nvim-neo-tree/neo-tree.nvim",
  	branch = "v3.x",
  	dependencies = {
    	  "nvim-lua/plenary.nvim",
    	  "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    	  "MunifTanjim/nui.nvim",
        }
        },
	{ 'nvim-treesitter/nvim-treesitter' },

    {  
        'neovim/nvim-lspconfig' 
    },

	{ 'williamboman/mason.nvim' },
	{ 'joshdick/onedark.vim'},
    { 'hrsh7th/cmp-nvim-lsp'},
    { 'hrsh7th/cmp-buffer'},
    { 'hrsh7th/cmp-path'},
    { 'hrsh7th/cmp-cmdline'},
    { 'hrsh7th/nvim-cmp'},
    { 'L3MON4D3/LuaSnip'},
    { 'rafamadriz/friendly-snippets' },
    { 'saadparwaiz1/cmp_luasnip' },
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { 'Civitasv/cmake-tools.nvim', opts = {} },
    { 'pocco81/auto-save.nvim' },
    {
        'mrcjkb/rustaceanvim',
        version = '^6', -- Recommended
        lazy = false, -- This plugin is already lazy
    },
    {
        "vhyrro/luarocks.nvim",
        priority = 1000,
        config = true
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

})



