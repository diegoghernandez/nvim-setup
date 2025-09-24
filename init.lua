require 'nvmc.core.options'
require 'nvmc.core.keymaps'
require 'nvmc.core.autocommands'
require 'nvmc.core.lazy'

vim.diagnostic.config {
  virtual_text = false,
  virtual_lines = false,
}

vim.filetype.add {
  extension = {
    ['http'] = 'http',
  },
}
