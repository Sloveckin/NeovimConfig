--Basic
require('core.plugins')
require('core.mappings')


-- Plugins
require('plugins.neotree')
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.mason')
--require('plugins.theme')
require('plugins.icons')
require('plugins.cmp')
require('plugins.telescope')
require('plugins.auto-save')
require('plugins.luarocks')
require('plugins.hop')
require('plugins.auto-pairs')
require('plugins.capuch')

vim.opt.relativenumber = true
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
vim.opt.number = true

vim.opt.list = true
vim.opt.listchars = {
    lead = "·",
    tab = "→ ",
    trail = "•",
}
