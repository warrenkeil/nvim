local opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<F12>', ':ToggleTerm<CR>', opts)
vim.api.nvim_set_keymap('t', '<F12>', '<C-\\><C-n>:ToggleTerm<CR>', opts)


