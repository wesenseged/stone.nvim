-- stone/highlights.lua
local M = {}

local function hl(group, props)
  vim.api.nvim_set_hl(0, group, props)
end

function M.apply(p)
  -- Core UI
  hl("Normal", { fg = p.white_text, bg = p.bg })
  hl("NormalNC", { fg = p.white_text, bg = p.bg })
  hl("VertSplit", { fg = p.divider })
  hl("WinSeparator", { fg = p.divider })
  hl("StatusLine", { fg = p.subtle_text, bg = p.bg_panel })
  hl("StatusLineNC", { fg = p.divider, bg = p.bg_panel })
  hl("Pmenu", { fg = p.white_text, bg = p.bg_panel })
  hl("PmenuSel", { fg = p.bg, bg = p.accent })
  hl("CursorLine", { bg = p.cursor_line })
  hl("CursorLineNr", { fg = p.divider })
  hl("LineNr", { fg = p.divider })
  hl("Visual", { bg = p.divider })
  hl("Search", { bg = p.accent, fg = p.bg })
  hl("EndOfBuffer", { fg = p.bg, bg = p.bg })

  -- Add the rest of your highlights here...

  -- NvimTree
  hl("NvimTreeNormal", { fg = p.white_text, bg = p.bg })
  hl("NvimTreeNormalNC", { fg = p.white_text, bg = p.bg })
  hl("NvimTreeEndOfBuffer", { fg = p.bg, bg = p.bg })
  hl("NvimTreeVertSplit", { fg = p.bg, bg = p.bg })

  -- Telescope (clean borders, no cyan)
  hl("TelescopeNormal", { fg = p.white_text, bg = p.bg_panel })
  hl("TelescopeBorder", { fg = p.accent, bg = p.bg_panel })
  hl("TelescopePromptBorder", { fg = p.accent, bg = p.bg_panel })
  hl("TelescopeResultsBorder", { fg = p.accent, bg = p.bg_panel })
  hl("TelescopePreviewBorder", { fg = p.accent, bg = p.bg_panel })
  hl("TelescopePromptTitle", { fg = p.accent, bg = p.bg_panel, bold = true })
  hl("TelescopeResultsTitle", { fg = p.subtle_text, bg = p.bg_panel })
  hl("TelescopePreviewTitle", { fg = p.subtle_text, bg = p.bg_panel })
  hl("TelescopeSelection", { fg = p.white_text, bg = p.cursor_line })
  hl("TelescopeMatching", { fg = p.accent, bold = true })
  hl("TelescopePromptPrefix", { fg = p.accent, bg = p.bg_panel })

  -- Diagnostics
  hl("DiagnosticError", { fg = p.delete })
  hl("DiagnosticWarn", { fg = p.accent })
  hl("DiagnosticInfo", { fg = p.modified })
  hl("DiagnosticHint", { fg = p.special })

  -- Git signs
  hl("DiffAdd", { fg = p.add })
  hl("DiffDelete", { fg = p.delete })
  hl("DiffChange", { fg = p.modified })

  -- Tree-sitter syntax
  hl("@keyword", { fg = p.keyword })
  hl("@keyword.import", { fg = p.keyword })
  hl("@function", { fg = p.function_ })
  hl("@function.builtin", { fg = p.special })
  hl("@constant", { fg = p.constant })
  hl("@operator", { fg = p.constant })
  hl("@string", { fg = p.string })
  hl("@string.special", { fg = p.accent })
  hl("@variable", { fg = p.variable })
  hl("@property", { fg = p.variable })
  hl("@type", { fg = p.function_ })
  hl("@tag", { fg = p.variable })
  hl("@tag.attribute", { fg = p.accent })
  hl("@tag.delimiter", { fg = p.divider })

  -- Markdown
  hl("@text.title", { fg = p.string })
  hl("@text.literal", { fg = p.special })
  hl("@text.uri", { fg = p.accent, underline = true })
  hl("@text", { fg = p.white_text })

  -- TypeScript specifics
  hl("typescriptImport", { fg = p.keyword })
  hl("typescriptKeyword", { fg = p.keyword })
  hl("typescriptFunction", { fg = p.function_ })
end

return M
