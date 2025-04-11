-- vim.keymap.set("n", "<leader>e", "<cmd>source %<CR>") -- which one was this?

vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<leader>date",
  "<cmd>r!date +'\\%a, \\%b \\%dth, \\%Y' <bar> sed 's/\\([023]1\\)th/\\1st/' <bar> sed 's/\\([02]2\\)th/\\1nd/' <bar> sed 's/\\([02]3\\)th/\\1rd/' <CR>")
-- Open the file manager in the directory containing current file
vim.keymap.set("n", "<leader>w", "<cmd>!xdg-open %:p:h<CR>")

-- just paste it ®
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])
vim.keymap.set({ "n", "v" }, "<leader>P", [["+P]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- paste over with the yank register insted of the unnamed register
vim.keymap.set("x", "<leader>p", [["0P]])
vim.keymap.set("x", "<leader>P", [["0P]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["+d]])
