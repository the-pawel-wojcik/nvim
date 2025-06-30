vim.keymap.set(
  "n",
  "<leader>e",
  "<cmd>w<CR><cmd>!cmake -P %<CR>"
)

-- create build system
-- -S argument is the directory hosting the currently opened CMakeLists.txt
-- -B build is created one level up
-- Example: if editing project/src/CMakeLists.txt
-- -S would get project/src
-- -B would get project/build
vim.keymap.set(
  "n",
  "<leader>c",
  "<cmd>w<CR><cmd>!cmake -S %:p:h -B %:p:h:h/build<CR>"
)

-- build project
vim.keymap.set(
  "n",
  "<leader>b",
  "<cmd>w<CR><cmd>!cmake --build %:p:h:h/build<CR>"
)
