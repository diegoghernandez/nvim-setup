return {
   {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.8',
      keys = {
         { '<leader>ff', require('telescope.builtin').find_files, { desc = 'Telescope find files' } },
         { '<C-p>',      require('telescope.builtin').git_files,  { desc = 'Telescope find git' } },
         { '<leader>fs', function()
            require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
         end, { desc = 'Telescope find files' } }
      }
   },
}
