vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>et", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>ee", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- terminal
vim.keymap.set("n", '<leader>sh', '<cmd>ToggleTerm size=10 direction=horizontal<cr>',
   { desc = "Split terminal horizontaly" })
vim.keymap.set("n", '<leader>sv', '<cmd>ToggleTerm size=80 direction=vertical<cr>',
   { desc = "Split terminal vertically" })


-- function _G.set_terminal_keymaps()
--    local opts = { buffer = 0 }
--    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
--    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
--    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
--    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
--    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
--    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
--    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
-- end
--
-- -- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
vim.keymap.set("t", "<esc><esc>", "<cmd>ToggleTerm<cr>")
