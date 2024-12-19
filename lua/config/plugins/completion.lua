return {
  {
    'saghen/blink.cmp',
    dependencies = 'rafamadriz/friendly-snippets',
    version = 'v0.*',
    opts = {
      keymap = {
        preset = 'default',
        ['<M-k>'] = { 'select_prev', 'fallback' },
        ['<M-j>'] = { 'select_next', 'fallback' },
        ['<M-l>'] = { 'select_and_accept' },
      },

      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },

      signature = { enabled = true }
    },
  },
}
