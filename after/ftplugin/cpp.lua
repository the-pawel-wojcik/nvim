vim.keymap.set("n", "<leader>e", "<cmd>w<CR><cmd>!make %:r && ./%:r<CR>")

local set = vim.opt_local
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.wrap = false
