local set = vim.opt_local
set.textwidth=80
-- see 'fo-table' for details
-- todo: add 1=true
set.formatoptions:append({
  t=true, c=true, q=true, n=true, j=true, l=false,
})
