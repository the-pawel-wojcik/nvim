return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require 'nvim-treesitter.configs'.setup {
        ensure_installed = {
          "cpp", "c", "lua", "vim", "vimdoc",
          "python", "bash",
          "cmake",
          "query",
          "json",
          "markdown", "markdown_inline"
        },

        modules = {},
        auto_install = false,
        sync_install = false,
        ignore_install = {},

        highlight = {
          enable = true,
          -- Disable selected languages
          -- disable = { "latex" },
          -- Or use a function for more flexibility, e.g.,
          disable = function(lang, buf)
            -- Let vimtex handle highlights of .tex files
            if lang == "tex" then
              return true
            end
            -- disable slow treesitter highlight for large files
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(
              vim.loop.fs_stat,
              vim.api.nvim_buf_get_name(buf)
            )
            if ok and stats and stats.size > max_filesize then
              return true
            end
          end,
          additional_vim_regex_highlighting = false,
        },
      }
    end
  }
}
