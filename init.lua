vim.keymap.set("n", "<space>e", "<cmd>source %<CR>")
vim.keymap.set("n", "<space><space>e", "<cmd>.lua<CR>")
vim.keymap.set("v", "<space>e", ":lua<CR>")
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
    vim.opt.number = true
    vim.opt.relativenumber = true
  end,
})

vim.g.leader = " "
vim.g.localleader = " "
vim.keymap.set('n', '<leader>st', function()
  vim.cmd.new()
  vim.cmd.term()
  vim.cmd.wincmd("K")
  vim.api.nvim_win_set_height(0, 8)
end)

require("config.set")
require("config.lazy")
