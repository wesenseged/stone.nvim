local M = {}

function M.setup(opts)
  opts = opts or {}
  vim.opt.termguicolors = true

  local variant = opts.variant or vim.o.background or "base"
  local colorscheme = "stone-base"

  if variant == "dark" then
    colorscheme = "stone-dark"
  elseif variant == "light" then
    colorscheme = "stone-light"
  end

  vim.cmd("colorscheme " .. colorscheme)
end

return M
