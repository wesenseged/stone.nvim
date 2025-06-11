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

  -- Mason UI
  hl("MasonNormal", { fg = p.white_text, bg = p.bg })
  hl("MasonHeader", { fg = p.bg, bg = p.accent, bold = true })
  hl("MasonHeaderSecondary", { fg = p.accent, bg = p.bg_panel, bold = true })
  hl("MasonHighlight", { fg = p.accent })
  hl("MasonHighlightBlock", { fg = p.bg, bg = p.accent, bold = true })
  hl("MasonHighlightBlockBold", { fg = p.bg, bg = p.accent, bold = true })
  hl("MasonMuted", { fg = p.subtle_text })
  hl("MasonMutedBlock", { fg = p.subtle_text, bg = p.bg_panel })
  hl("MasonError", { fg = p.delete })
  hl("MasonWarning", { fg = p.accent })
  hl("MasonInfo", { fg = p.modified })

  -- Lazy UI
  hl("LazyNormal", { fg = p.white_text })
  hl("LazyProgressDone", { fg = p.accent })
  hl("LazyProgressTodo", { fg = p.divider })
  hl("LazyReasonStart", { fg = p.accent })
  hl("LazyReasonPlugin", { fg = p.function_ })
  hl("LazyReasonEvent", { fg = p.constant })
  hl("LazyReasonCmd", { fg = p.keyword })
  hl("LazyReasonFt", { fg = p.variable })
  hl("LazyReasonKeys", { fg = p.special })
  hl("LazyReasonRuntime", { fg = p.constant })
  hl("LazyReasonSource", { fg = p.string })
  hl("LazyReasonRequires", { fg = p.subtle_text })

  -- Which-Key UI
  hl("WhichKey", { fg = p.accent, bg = p.bg })              -- Keys
  hl("WhichKeyGroup", { fg = p.function_ })                 -- Group names
  hl("WhichKeyDesc", { fg = p.white_text })                 -- Command description
  hl("WhichKeySeparator", { fg = p.divider })               -- "➜" separator
  hl("WhichKeyFloat", { bg = p.bg_panel })                  -- Background of the floating window
  hl("WhichKeyBorder", { fg = p.divider, bg = p.bg_panel }) -- Border of the floating window

  -- Floating windows (used by Which-Key, etc.)
  hl("NormalFloat", { fg = p.white_text, bg = p.bg_panel }) -- ← this is the key
  hl("FloatBorder", { fg = p.divider, bg = p.bg_panel })    -- Border of floating windows


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
