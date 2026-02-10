return {
  'cenk1cenk2/schema-companion.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = {
    {
      '<leader>mma',
      function()
        require('schema-companion').select_schema()
      end,
      desc = 'Find json schema',
    },
    {
      '<leader>mm',
      function()
        require('schema-companion').select_from_matching_schema()
      end,
      desc = 'Find json schema',
    },

    {
      '<leader>mg',
      function()
        local schema = require('schema-companion').get_current_schemas()
      end,
      desc = 'Find json schema',
    },
  },
}
