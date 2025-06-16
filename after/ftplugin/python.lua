-- execute this file
vim.keymap.set("n", "<leader>e", "<cmd>w<CR><cmd>!python %<CR>")
vim.keymap.set("n", "<leader>td", "<cmd>w<CR><cmd>!python -m doctest -v %<CR>")
vim.keymap.set("n", "<leader>tp", "<cmd>w<CR><cmd>!pytest %<CR>")
vim.keymap.set("n", "<leader>tsp", "<cmd>w<CR><cmd>!pytest -s %<CR>")

local set = vim.opt_local
set.textwidth=80
set.formatoptions:append({c=true})
set.wrap = false
