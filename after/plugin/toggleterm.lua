local opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<F12>', ':ToggleTerm<CR>', opts)
vim.api.nvim_set_keymap('t', '<F12>', '<C-\\><C-n>:ToggleTerm<CR>', opts)


local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
