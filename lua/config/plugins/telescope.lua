return {
  {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = "dropdown"
          }
        },
        extensions = {
          fzf = {}
        }
      }

      require('telescope').load_extension('fzf')

      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<space>fh', builtin.help_tags)
      vim.keymap.set('n', '<space>ff', builtin.find_files)
      -- vim.keymap.set('n', '<M-j>', builtin.git_files)
      vim.keymap.set('n', '<space>en', function()
        builtin.find_files { cwd = vim.fn.stdpath('config') }
      end)

      vim.keymap.set("n", "<space>ep", function()
        builtin.find_files {
          cwd = vim.fs.joinpath(vim.fn.stdpath('data'), "lazy")
        }
      end)

      require "config.telescope.multigrep".setup()
    end,
  }
}
