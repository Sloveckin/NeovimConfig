vim.g.mapleader = " "

-- NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float focus toggle<CR>')
vim.keymap.set('n', '<leader>n', ':Neotree left toggle<CR>')
vim.keymap.set('n', 'gd', ':Telescope lsp_references<CR>')
