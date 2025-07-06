return {
  'kristijanhusak/vim-dadbod-completion',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-ui', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
}
