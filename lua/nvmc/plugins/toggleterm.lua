return {
  'akinsho/toggleterm.nvim',
  version = '*',
  lazy = false,
  keys = {
    {
      '<S-Tab>',
      function()
        return '<cmd>' .. vim.v.count .. 'ToggleTerm<cr>'
      end,
      desc = 'Toggle a float terminal with the respective number',
      expr = true,
    },
    {
      '<leader>ta',
      '<cmd>TermSelect<cr>',
      desc = 'Show all available terminals',
    },
  },
  config = {
    direction = 'float',
  },
}
