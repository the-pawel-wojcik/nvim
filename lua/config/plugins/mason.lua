return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      {
        "williamboman/mason-lspconfig.nvim",
      },
    },
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup()
      -- require('mason-lspconfig').setup({
      --   automatic_enable = false
      -- })
    end,
    lazy = false,
  }
}
