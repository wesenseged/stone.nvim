-- colors/stone-light.lua
local palettes = require("stone.palettes")
local highlights = require("stone.highlights")

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.background = "light"
vim.g.colors_name = "stone-light"

highlights.apply(palettes.light)
