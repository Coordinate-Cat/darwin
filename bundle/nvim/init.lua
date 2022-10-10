-- plugins
require('plugins')

-- lualine
require('lualine').setup {
  options = {
    theme = 'everforest'
  }
}

-- opt
vim.opt.fileencoding = "utf-8"
vim.opt.cursorline = true
vim.opt.number = true

-- cmd
vim.cmd("colorscheme everforest")

local servers = { 'rust_analyzer', 'ocamllsp', 'eslint', 'prismals', 'rnix', 'dhall_lsp_server' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = function(client, bufnr)
      lsp_set_keymap(client, bufnr)
    end,
  }
end