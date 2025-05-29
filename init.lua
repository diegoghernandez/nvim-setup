require 'nvmc.core.options'
require 'nvmc.core.keymaps'
require 'nvmc.core.autocommands'
require 'nvmc.core.lazy'

vim.cmd.colorscheme 'catppuccin'

vim.filetype.add {
  extension = {
    ['http'] = 'http',
  },
}
