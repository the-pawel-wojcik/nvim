return {
  {
    'nvim-treesitter/nvim-treesitter-context',
    enabled = true,
    opts = {
      -- mine
      max_lines = 5,
      multiline_threshold = 20,
      -- default
      enable = true,
      multiwindow = false,
      min_window_height = 0,
      line_numbers = true,
      trim_scope = 'outer',
      mode = 'cursor',
      separator = nil,
      zindex = 20,
      on_attach = nil,
    }
  }
}
