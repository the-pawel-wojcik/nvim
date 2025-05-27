vim.keymap.set("n", "<leader>e", "<cmd>w<CR><cmd>!make %:r && ./%:r<CR>")
-- cmake execute
vim.keymap.set("n", "<leader>ce", "<cmd>!cd ..; make run RUN=%:t:r<CR>")
-- cmake build & execute
vim.keymap.set(
  "n", "<leader>cb",
  "<cmd>w<CR><cmd>!cd ..; make compile RUN=%:t:r; make run RUN=%:t:r<CR>"
)
-- cmake clean, configure, build, & execute
vim.keymap.set("n", "<leader>cc", "<cmd>w<CR><cmd>!cd ..; make clean; make configure; make compile; make run RUN=%:t:r<CR>")

local set = vim.opt_local
set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.wrap = false
