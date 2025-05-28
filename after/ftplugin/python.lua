-- execute this file
vim.keymap.set("n", "<leader>e", "<cmd>w<CR><cmd>!python %<CR>")
vim.keymap.set("n", "<leader>td", "<cmd>w<CR><cmd>!python -m doctest -v %<CR>")

local set = vim.opt_local
set.textwidth=80
set.formatoptions:append({c=true})
set.wrap = false
