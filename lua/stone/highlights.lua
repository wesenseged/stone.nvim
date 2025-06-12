-- stone/highlights.lua
local M = {}

local function hl(group, props)
  vim.api.nvim_set_hl(0, group, props)
end

function M.apply(p, styles)
  styles = styles or {} -- default to empty table if nil
  hl("Comment", { fg = p.subtle_text, italic = styles.comments and vim.tbl_contains(styles.comments, "italic") })
  hl("Function", { fg = p.function_, bold = styles.functions and vim.tbl_contains(styles.functions, "bold") })

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
