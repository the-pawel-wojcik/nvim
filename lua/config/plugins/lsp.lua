return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.nvim",
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      require("lspconfig").lua_ls.setup { capabilities = capabilities }

      local opts = { remap = false }
      vim.keymap.set({ "n", "v", "x" }, "<space>f", function()
        vim.lsp.buf.format()
      end)
      vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
      vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
      vim.keymap.set("n", "<leader>vws",
        function() vim.lsp.buf.workspace_symbol() end, opts)
      vim.keymap.set("n", "<leader>vd",
        function() vim.diagnostic.open_float() end, opts)
      vim.keymap.set("n", "[d",
        function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)
      vim.keymap.set("n", "]d",
        function() vim.diagnostic.jump({ count = -1, float = true }) end, opts)
      vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
      vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
      vim.keymap.set("n", "<M-h>", function() vim.lsp.buf.signature_help() end, opts)

      vim.api.nvim_create_autocmd(
        'LspAttach',
        {
          callback = function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if not client then return end

            if client.supports_method('textDocument/formatting', 0) then
              vim.api.nvim_create_autocmd(
                'BufWritePre',
                {
                  buffer = args.buf,
                  callback = function()
                    vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                  end,
                }
              )
            end
          end
        }
      )
    end,
  }
}
