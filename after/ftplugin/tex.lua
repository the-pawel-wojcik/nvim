vim.g.vimtex_impas_enabled = 0
vim.g.vimtex_fold_enabled = 1
vim.g.vimtex_format_enabled = 1
vim.opt.textwidth = 79

vim.keymap.set("n", "<leader>wc", "<cmd>VimtexCountWords<CR>")
vim.keymap.set("n", "<leader>f", "gwap")
vim.keymap.set("x", "<leader>f", "gw")

vim.cmd([[
" set conceallevel=2
let g:vimtex_syntax_conceal = {
    \ 'accents': 1,
    \ 'ligatures': 1,
    \ 'cites': 1,
    \ 'fancy': 1,
    \ 'spacing': 1,
    \ 'greek': 1,
    \ 'math_bounds': 1,
    \ 'math_delimiters': 1,
    \ 'math_fracs': 1,
    \ 'math_super_sub': 1,
    \ 'math_symbols': 1,
    \ 'sections': 1,
    \ 'styles': 1,
    \}

let g:vimtex_quickfix_ignore_filters = [
  \ 'Overfull',
  \ 'Token not allowed',
  \]

nmap dsm <Plug>(vimtex-env-delete-math)

" Use `ai` and `ii` for the item text object
omap ai <Plug>(vimtex-am)
xmap ai <Plug>(vimtex-am)
omap ii <Plug>(vimtex-im)
xmap ii <Plug>(vimtex-im)

" Use `am` and `im` for the inline math text object
omap am <Plug>(vimtex-a$)
xmap am <Plug>(vimtex-a$)
omap im <Plug>(vimtex-i$)
xmap im <Plug>(vimtex-i$)


" ** Zotero integration **
function! ZoteroCite()
  let format = 'cite'
  let api_call = 'http://127.0.0.1:23119/better-bibtex/cayw?format='.format.'&brackets=1'
  let ref = system('curl -s '.shellescape(api_call))
  return ref
endfunction

noremap <leader>z "=ZoteroCite()<CR>p
inoremap <C-z> <C-r>=ZoteroCite()<CR>
]])
--
--
-- local ZoteroCite = function()
--   local format = "cite"
--   local api_call = 'http://127.0.0.1:23119/better-bibtex/cayw?format=' .. format .. '&brackets=1'
--   local ref = vim.fn.system('curl -s ' .. vim.fn.shellescape(api_call))
--   return ref
-- end
--
-- vim.keymap.set('n', '<leader>z', '"=ZoteroCite()<CR>p', {})
-- vim.keymap.set('i', '<C-z>', '<C-r>=ZoteroCite()<CR>')
