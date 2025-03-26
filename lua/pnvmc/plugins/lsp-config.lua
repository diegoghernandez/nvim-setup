return {
   "neovim/nvim-lspconfig",
   dependencies = {
      "williamboman/mason.nvim",
      { 'b0o/SchemaStore.nvim' },
   },
   config = function()
      local lspconfig = require 'lspconfig'

      local lspconfiguser = require 'pnvmc.config.lsp'
      lspconfiguser.setup_diagnostic_config()

      local servers = require('pnvmc.config.lsp.servers').to_setup

      for _, server in pairs(servers) do
         local server_opts = {
            on_attach = lspconfiguser.on_attach,
         }

         local has_custom_opts, server_custom_opts =
             pcall(require, 'pnvmc.config.lsp.settings.' .. server)

         if has_custom_opts then
            server_opts = vim.tbl_deep_extend(
               'force',
               server_opts,
               server_custom_opts
            )
         end

         local has_custom_commands, server_custom_commands =
             pcall(require, 'pnvmc.config.lsp.commands.' .. server)
         if has_custom_commands then
            server_opts.commands = server_custom_commands
         end

         lspconfig[server].setup(server_opts)
      end
   end
}
