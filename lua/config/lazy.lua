-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({
    "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

-- this where repos go
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    { "tpope/vim-fugitive" },
    { "junegunn/vim-peekaboo" },
    { "lervag/vimtex" },
    { "junegunn/vim-peekaboo" },
    { "PeterRincker/vim-argumentative" }, -- <, and >, shift arguments
    { 'tpope/vim-unimpaired' },           -- yoz
    -- { "tpope/vim-commentary" }, -- this is now built into nvim
    -- { "tpope/vim-sensible" }, -- this is now built into nvim
    { import = "config.plugins" },
  },
})
