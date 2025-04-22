-- execute this file
vim.keymap.set("n", "<leader>e", "<cmd>w<CR><cmd>!python %<CR>")
vim.keymap.set("n", "<leader>td", "<cmd>w<CR><cmd>!python -m doctest -v %<CR>")
