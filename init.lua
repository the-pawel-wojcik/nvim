vim.keymap.set("n", "<space>e", "<cmd>source %<CR>")
vim.keymap.set("n", "<space><space>e", "<cmd>.lua<CR>")
vim.keymap.set("v", "<space>e", ":lua<CR>")

vim.opt.shiftwidth = 4

require("config.lazy")
require("config.set")
