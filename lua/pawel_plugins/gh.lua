local on_exit = function(obj)
  print(obj.stdout)
  print(obj.stderr)
end

vim.api.nvim_create_user_command(
  'PullConfig',
  function()
    vim.system(
      { 'git', 'pull' },
      {
        cwd = vim.env.HOME .. '/.config/nvim',
      },
      on_exit
    ):wait()
  end,
  {}
)

vim.api.nvim_set_keymap(
  'n',
  '<leader>gh',
  '<cmd>PullConfig<CR>',
  { noremap = true }
)
