# 🪨 stone.nvim

A clean, minimal, and versatile Neovim colorscheme with `base`, `dark`, and `light` variants.

![stone-preview](./preview.png)

## ✨ Features

- 3 carefully tuned variants
- Tree-sitter support
- Telescope + GitSigns styling
- Clean UI with minimal noise

## 🔧 Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "wesenseged/stone.nvim",
  priority = 1000,
  config = function()
    vim.g.stone_style = "base" -- or "dark", "light"
    vim.cmd.colorscheme("stone")
  end
}
```
