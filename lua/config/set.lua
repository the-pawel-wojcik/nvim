vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true
-- vim.opt.conceallevel = 2

vim.opt.swapfile = true
vim.opt.backup = false

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- vim.opt.updatetime = 50
vim.opt.colorcolumn = "81"

-- where is my python
vim.g.python3_host_prog = '/home/pawel/Code/python/config/venv13.1/bin/python'

-- TODO: plug it into telescope
vim.keymap.set('n', '<space>b', '<cmd>buffers<CR>:buffer<space>')
vim.opt.grepprg = 'rg --vimgrep --smart-case --follow'

-- save the thing
vim.opt.sessionoptions:remove('terminal')
vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
  pattern = { "*.cpp", "*.c", "*.hpp", "*.h", "*.C" },
  command = "mkview",
})
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = { "*.cpp", "*.c", "*.hpp", "*.h", "*.C" },
  command = "silent loadview",
})

-- lsp logs
vim.lsp.set_log_level("off")
-- if I ever really need it:
-- vim.lsp.set_log_level("debug")

-- vim.opt.updatetime = 3000
-- vim.cmd([[
-- augroup vimrc_example | au!
-- autocmd CursorHoldI * stopinsert
-- augroup end
-- ]])
