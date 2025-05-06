
local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.lua_ls.setup {
   capabilities = capailities,  
}

lspconfig.clangd.setup {}

vim.diagnostic.config({ virtual_text = { prefix = "●", source = "always" }, float = { source = "always" }, underline = true, signs = true, update_in_insert = false, severity_sort = true }) 

