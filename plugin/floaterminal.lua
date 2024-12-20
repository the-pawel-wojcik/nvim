vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

local state = {
  floating = {
    buf = -1,
    win = -1,
  }
}

function CreateFloatingWindow(opts)
  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true)
  end

  opts = opts or {}

  local width = opts.width or
      math.floor(vim.api.nvim_get_option_value("columns", {}) * 0.8)
  local height = opts.height or
      math.floor(vim.api.nvim_get_option_value("lines", {}) * 0.8)
  local x = math.floor((vim.api.nvim_get_option_value("columns", {}) - width) / 2)
  local y = math.floor((vim.api.nvim_get_option_value("lines", {}) - height) / 2)


  local win_config = {
    relative = "editor",
    width = width,
    height = height,
    col = x,
    row = y,
    style = "minimal",
    border = "rounded",
  }

  -- vim.cmd("below " .. y .. "left " .. x .. " resize " .. width .. " " .. height)
  -- vim.cmd("wincmd o")
  local win = vim.api.nvim_open_win(buf, true, win_config)

  return { buf = buf, win = win }
end

local toggle_terminal = function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = CreateFloatingWindow({
      buf = state.floating.buf,
    })
    if vim.bo[state.floating.buf].buftype ~= "terminal" then
      vim.cmd.terminal()
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
  -- print(vim.inspect(state.floating))
end

vim.api.nvim_create_user_command("Floaterminal", toggle_terminal, {})
vim.keymap.set({ "n", "t" }, "<space>tt", "<cmd>Floaterminal<CR>")
