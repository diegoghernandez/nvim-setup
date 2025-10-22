return {
  'GustavEikaas/easy-dotnet.nvim',
  lazy = true,
  ft = 'cs',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim', 'seblyng/roslyn.nvim' },
  config = function()
    require('easy-dotnet').setup()
  end,
}
