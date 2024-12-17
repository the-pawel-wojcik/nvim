return {
  {
    "navarasu/onedark.nvim",
    config = function()
      require('onedark').setup {
        -- 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        style = 'warm',
        transparent = false,
        -- Change terminal color as per the selected theme style
        term_colors = true,
        -- Show the end-of-buffer tildes. By default they are hidden
        ending_tildes = true,
        -- reverse item kind highlights in cmp menu
        cmp_itemkind_reverse = false,

        -- toggle theme style ---
        -- keybind to toggle theme style.
        -- Leave it nil to disable it, or set it to a string, e.g., "<leader>ts"
        toggle_style_key = nil,
        -- List of styles to toggle between
        toggle_style_list = {
          'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
        },

        -- Change code style ---
        -- Options are italic, bold, underline, none
        -- You can configure multiple style with comma separated, e.g.,
        -- keywords = 'italic,bold'
        code_style = {
          comments = 'italic',
          keywords = 'none',
          functions = 'none',
          strings = 'none',
          variables = 'none'
        },

        -- Lualine options --
        lualine = {
          transparent = false, -- lualine center bar transparency
        },

        -- Plugins Config --
        diagnostics = {
          darker = true,     -- darker colors for diagnostic
          undercurl = true,  -- undercurl instead of underline for diagnostics
          background = true, -- use background color for virtual text
        },
      }
      require('onedark').load()
    end,
  }
}
