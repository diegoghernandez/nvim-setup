require("pnvmc.core")
require("pnvmc.lazy")

vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme oxocarbon")

require('gitsigns').setup {}

vim.api.nvim_create_autocmd('BufWritePre', {
   callback = function()
      vim.lsp.buf.format {
         async = false,
      }
   end,
})
