vim.api.nvim_create_user_command('MasonInstallAll', function()
   local packages = require 'pnvmc.config.mason.packages'
   print()
   vim.cmd('MasonInstall ' .. table.concat(packages, ' '))
end, {})
