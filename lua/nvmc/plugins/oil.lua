return {
  'stevearc/oil.nvim',
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = {
    {
      'nvim-mini/mini.icons',
      version = '*',
      opts = {},
    },
    -- 'nvim-tree/nvim-web-devicons',
  },
  -- dependencies = { 'nvim-tree/nvim-web-devicons', opts = {} }, -- use if you prefer nvim-web-devicons
  config = function()
    require('oil').setup {
      view_options = {
        show_hidden = true,
        natural_order = true,
        is_always_hidden = function(name, _)
          return name == '..' or name == '.git'
        end,
      },
    }
  end,
}
