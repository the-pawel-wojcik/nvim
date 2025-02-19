return {
  {
    "williamboman/mason.nvim",
    -- This seems to be some sort of scam
    -- opts = {
    --   ensure_installed = {
    --     "pyright",
    --   }
    -- },
    dependencies = {
      {
        "williamboman/mason-lspconfig.nvim",
      },
    },
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup()
    end,
    lazy = false,
  }
}
