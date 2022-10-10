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