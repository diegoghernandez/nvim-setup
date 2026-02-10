return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  enabled = false,
  opts = {},
  config = function()
    require('typescript-tools').setup {
      filetypes = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'vue',
      },
      on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
      end,
      settings = {
        tsserver_plugins = {
          '@vue/typescript-plugin',
        },
        jsx_close_tag = {
          enable = true,
          filetypes = { 'javascriptreact', 'typescriptreact' },
        },
      },
    }
  end,
}
