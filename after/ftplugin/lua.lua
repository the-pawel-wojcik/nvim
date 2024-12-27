local set = vim.opt_local

set.tabstop = 2
set.shiftwidth = 2
set.number = true
set.relativenumber = true

vim.keymap.set("n", "<space><space>e", "<cmd>.lua<CR>")
vim.keymap.set("v", "<space>e", ":lua<CR>")
