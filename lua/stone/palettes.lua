-- lua/stone/palettes.lua
local M = {}

M.base = {
  keyword     = "#c3a6ff",
  function_   = "#ffd580",
  constant    = "#ffae57",
  string      = "#bae67e",
  special     = "#5ccfe6",
  variable    = "#a2aabc",

  bg_dark     = "#171c28",
  bg          = "#2D3D4D",
  bg_panel    = "#2D3D4D",
  cursor_line = "#036666",
  divider     = "#6679a4",
  subtle_text = "#8695b7",
  white_text  = "#d7dce2",
  accent      = "#bae67e",

  add         = "#bae67e",
  delete      = "#ef6b73",
  modified    = "#5ccfe6"
}

M.dark = {
  -- same as base or customize if needed
  keyword     = "#c3a6ff",
  function_   = "#ffd580",
  constant    = "#ffae57",
  string      = "#bae67e",
  special     = "#5ccfe6",
  variable    = "#a2aabc",

  bg_dark     = "#171c28",
  bg          = "#292d3e",
  bg_panel    = "#292d3e",
  cursor_line = "#2f3b54",
  divider     = "#6679a4",
  subtle_text = "#8695b7",
  white_text  = "#d7dce2",
  accent      = "#c3a6ff",

  add         = "#bae67e",
  delete      = "#ef6b73",
  modified    = "#5ccfe6"
}

M.light = {
  keyword     = "#6c5ce7",
  function_   = "#f6b93b",
  constant    = "#e58e26",
  string      = "#78e08f",
  special     = "#38ada9",
  variable    = "#576574",

  bg_dark     = "#f1f2f6",
  bg          = "#fefae0",
  bg_panel    = "#fefae0",
  cursor_line = "#e9edc9",
  divider     = "#ced6e0",
  subtle_text = "#8395a7",
  white_text  = "#2f3542",
  accent      = "#ffb142",

  add         = "#78e08f",
  delete      = "#ff6b6b",
  modified    = "#38ada9"
}

return M
