return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    enabled = false,
    ft = { "python" },
    opts = function()
      local null_ls = require('null-ls')
      local opts = {}
      opts.sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.mypy,
        --   null_ls.builtins.diagnostics.ruff,
      }
      return opts
    end,
  }
}
