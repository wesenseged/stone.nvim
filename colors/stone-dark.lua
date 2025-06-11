-- colors/stone-dark.lua
local palettes = require("stone.palettes")
local highlights = require("stone.highlights")

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "stone-dark"

highlights.apply(palettes.dark)
