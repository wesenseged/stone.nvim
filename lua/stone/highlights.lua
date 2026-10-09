-- stone/highlights.lua
local M = {}

local function hl(group, props)
  vim.api.nvim_set_hl(0, group, props)
end

local function has_style(styles, category, style)
  return styles[category]
      and vim.tbl_contains(styles[category], style)
      or false
end

function M.apply(p, styles)
  styles = styles or {}

  -- Editor UI
  hl("Normal", { fg = p.white_text, bg = p.bg })
  hl("NormalNC", { fg = p.white_text, bg = p.bg })
  hl("NormalFloat", { fg = p.white_text, bg = p.bg_panel })
  hl("FloatBorder", { fg = p.divider, bg = p.bg_panel })
  hl("WinSeparator", { fg = p.divider })
  hl("VertSplit", { fg = p.divider })

  hl("SignColumn", { fg = p.subtle_text, bg = p.bg })
  hl("FoldColumn", { fg = p.subtle_text, bg = p.bg })
  hl("Folded", { fg = p.subtle_text, bg = p.bg_panel })

  hl("StatusLine", { fg = p.subtle_text, bg = p.bg_panel })
  hl("StatusLineNC", { fg = p.divider, bg = p.bg_panel })
  hl("TabLine", { fg = p.subtle_text, bg = p.bg_panel })
  hl("TabLineFill", { bg = p.bg })
  hl("TabLineSel", { fg = p.white_text, bg = p.bg })

  hl("LineNr", { fg = p.divider })
  hl("CursorLine", { bg = p.cursor_line })
  hl("CursorLineNr", { fg = p.white_text, bold = true })
  hl("CursorColumn", { bg = p.cursor_line })
  hl("ColorColumn", { bg = p.cursor_line })
  hl("Cursor", { reverse = true })
  hl("lCursor", { reverse = true })
  hl("MatchParen", { fg = p.accent, bold = true })

  hl("Visual", { bg = p.divider })
  hl("VisualNOS", { bg = p.divider })
  hl("Search", { fg = p.bg, bg = p.accent })
  hl("IncSearch", { fg = p.bg, bg = p.special })
  hl("CurSearch", { fg = p.bg, bg = p.special })
  hl("Substitute", { fg = p.bg, bg = p.modified })

  hl("Pmenu", { fg = p.white_text, bg = p.bg_panel })
  hl("PmenuSel", { fg = p.bg, bg = p.accent })
  hl("PmenuSbar", { bg = p.divider })
  hl("PmenuThumb", { bg = p.subtle_text })
  hl("WildMenu", { fg = p.bg, bg = p.accent })

  hl("NonText", { fg = p.divider })
  hl("SpecialKey", { fg = p.divider })
  hl("Whitespace", { fg = p.divider })
  hl("EndOfBuffer", { fg = p.bg, bg = p.bg })
  hl("Directory", { fg = p.accent })
  hl("Title", { fg = p.white_text, bold = true })
  hl("Question", { fg = p.special })
  hl("MoreMsg", { fg = p.add })
  hl("ModeMsg", { fg = p.white_text })
  hl("WarningMsg", { fg = p.accent })
  hl("ErrorMsg", { fg = p.delete, bold = true })

  -- Basic syntax
  hl("Comment", {
    fg = p.subtle_text,
    italic = has_style(styles, "comments", "italic"),
  })
  hl("Constant", { fg = p.constant })
  hl("String", { fg = p.string })
  hl("Character", { fg = p.string })
  hl("Number", { fg = p.constant })
  hl("Boolean", { fg = p.constant })
  hl("Float", { fg = p.constant })

  hl("Identifier", { fg = p.variable })
  hl("Function", {
    fg = p.function_,
    bold = has_style(styles, "functions", "bold"),
  })

  hl("Statement", { fg = p.keyword })
  hl("Conditional", { fg = p.keyword })
  hl("Repeat", { fg = p.keyword })
  hl("Label", { fg = p.accent })
  hl("Operator", { fg = p.constant })
  hl("Keyword", { fg = p.keyword })
  hl("Exception", { fg = p.keyword })

  hl("PreProc", { fg = p.keyword })
  hl("Include", { fg = p.keyword })
  hl("Define", { fg = p.keyword })
  hl("Macro", { fg = p.special })
  hl("PreCondit", { fg = p.keyword })

  hl("Type", { fg = p.function_ })
  hl("StorageClass", { fg = p.keyword })
  hl("Structure", { fg = p.function_ })
  hl("Typedef", { fg = p.function_ })

  hl("Special", { fg = p.special })
  hl("SpecialChar", { fg = p.accent })
  hl("Delimiter", { fg = p.divider })
  hl("Underlined", { fg = p.accent, underline = true })
  hl("Error", { fg = p.delete, bold = true })
  hl("Todo", { fg = p.accent, bold = true })

  -- Diagnostics
  hl("DiagnosticError", { fg = p.delete })
  hl("DiagnosticWarn", { fg = p.accent })
  hl("DiagnosticInfo", { fg = p.modified })
  hl("DiagnosticHint", { fg = p.special })
  hl("DiagnosticOk", { fg = p.add })

  hl("DiagnosticVirtualTextError", { fg = p.delete })
  hl("DiagnosticVirtualTextWarn", { fg = p.accent })
  hl("DiagnosticVirtualTextInfo", { fg = p.modified })
  hl("DiagnosticVirtualTextHint", { fg = p.special })

  hl("DiagnosticUnderlineError", { undercurl = true, sp = p.delete })
  hl("DiagnosticUnderlineWarn", { undercurl = true, sp = p.accent })
  hl("DiagnosticUnderlineInfo", { undercurl = true, sp = p.modified })
  hl("DiagnosticUnderlineHint", { undercurl = true, sp = p.special })

  hl("DiagnosticSignError", { fg = p.delete })
  hl("DiagnosticSignWarn", { fg = p.accent })
  hl("DiagnosticSignInfo", { fg = p.modified })
  hl("DiagnosticSignHint", { fg = p.special })

  -- Diff and Git
  hl("DiffAdd", { fg = p.add })
  hl("DiffDelete", { fg = p.delete })
  hl("DiffChange", { fg = p.modified })
  hl("DiffText", { fg = p.modified, bold = true })

  hl("Added", { fg = p.add })
  hl("Removed", { fg = p.delete })
  hl("Changed", { fg = p.modified })

  hl("GitSignsAdd", { fg = p.add })
  hl("GitSignsChange", { fg = p.modified })
  hl("GitSignsDelete", { fg = p.delete })

  -- Tree-sitter comments
  hl("@comment", {
    fg = p.subtle_text,
    italic = has_style(styles, "comments", "italic"),
  })
  hl("@comment.documentation", { fg = p.subtle_text, italic = true })
  hl("@comment.error", { fg = p.delete, bold = true })
  hl("@comment.warning", { fg = p.accent, bold = true })
  hl("@comment.todo", { fg = p.accent, bold = true })
  hl("@comment.note", { fg = p.special, bold = true })

  -- Tree-sitter keywords
  for _, group in ipairs({
    "@keyword",
    "@keyword.conditional",
    "@keyword.repeat",
    "@keyword.return",
    "@keyword.exception",
    "@keyword.function",
    "@keyword.import",
    "@keyword.type",
    "@keyword.modifier",
    "@keyword.coroutine",
    "@keyword.debug",
    "@keyword.directive",
    "@keyword.directive.define",
  }) do
    hl(group, { fg = p.keyword })
  end
  hl("@keyword.operator", { fg = p.constant })

  -- Tree-sitter functions
  hl("@function", {
    fg = p.function_,
    bold = has_style(styles, "functions", "bold"),
  })
  hl("@function.call", { fg = p.function_ })
  hl("@function.builtin", { fg = p.special })
  hl("@function.method", { fg = p.function_ })
  hl("@function.method.call", { fg = p.function_ })
  hl("@function.macro", { fg = p.special })
  hl("@method", { fg = p.function_ })
  hl("@method.call", { fg = p.function_ })
  hl("@constructor", { fg = p.function_ })

  -- Tree-sitter variables and fields
  hl("@variable", { fg = p.variable })
  hl("@variable.builtin", { fg = p.special })
  hl("@variable.parameter", { fg = p.variable })
  hl("@variable.parameter.builtin", { fg = p.special })
  hl("@variable.member", { fg = p.variable })
  hl("@property", { fg = p.variable })
  hl("@field", { fg = p.variable })
  hl("@label", { fg = p.accent })

  -- Tree-sitter types
  hl("@type", { fg = p.function_ })
  hl("@type.builtin", { fg = p.special })
  hl("@type.definition", { fg = p.function_ })
  hl("@type.qualifier", { fg = p.keyword })
  hl("@type.parameter", { fg = p.special })
  hl("@namespace", { fg = p.accent })
  hl("@module", { fg = p.accent })
  hl("@class", { fg = p.function_ })
  hl("@struct", { fg = p.function_ })
  hl("@enum", { fg = p.function_ })
  hl("@interface", { fg = p.function_ })
  hl("@typedef", { fg = p.function_ })
  hl("@storageclass", { fg = p.keyword })
  hl("@attribute", { fg = p.special })

  -- Tree-sitter literals
  hl("@constant", { fg = p.constant })
  hl("@constant.builtin", { fg = p.special })
  hl("@constant.macro", { fg = p.special })
  hl("@boolean", { fg = p.constant })
  hl("@number", { fg = p.constant })
  hl("@number.float", { fg = p.constant })
  hl("@character", { fg = p.string })
  hl("@character.special", { fg = p.accent })

  hl("@string", { fg = p.string })
  hl("@string.documentation", { fg = p.string, italic = true })
  hl("@string.escape", { fg = p.accent })
  hl("@string.special", { fg = p.accent })
  hl("@string.regexp", { fg = p.special })

  hl("@operator", { fg = p.constant })
  hl("@punctuation", { fg = p.divider })
  hl("@punctuation.bracket", { fg = p.divider })
  hl("@punctuation.delimiter", { fg = p.divider })
  hl("@punctuation.special", { fg = p.accent })

  hl("@preproc", { fg = p.keyword })
  hl("@define", { fg = p.keyword })
  hl("@macro", { fg = p.special })

  -- Markup and Markdown
  hl("@tag", { fg = p.variable })
  hl("@tag.builtin", { fg = p.special })
  hl("@tag.attribute", { fg = p.accent })
  hl("@tag.delimiter", { fg = p.divider })

  hl("@text", { fg = p.white_text })
  hl("@text.title", { fg = p.string, bold = true })
  hl("@text.title.1", { fg = p.string, bold = true })
  hl("@text.title.2", { fg = p.string, bold = true })
  hl("@text.title.3", { fg = p.string, bold = true })
  hl("@text.literal", { fg = p.special })
  hl("@text.uri", { fg = p.accent, underline = true })
  hl("@text.reference", { fg = p.accent })
  hl("@text.emphasis", { italic = true })
  hl("@text.strong", { bold = true })
  hl("@text.strike", { strikethrough = true })
  hl("@text.math", { fg = p.special })
  hl("@text.environment", { fg = p.accent })
  hl("@text.environment.name", { fg = p.function_ })
  hl("@text.todo", { fg = p.accent, bold = true })

  hl("@markup.heading", { fg = p.string, bold = true })
  hl("@markup.strong", { bold = true })
  hl("@markup.italic", { italic = true })
  hl("@markup.strikethrough", { strikethrough = true })
  hl("@markup.underline", { underline = true })
  hl("@markup.link", { fg = p.accent, underline = true })
  hl("@markup.link.url", { fg = p.accent, underline = true })
  hl("@markup.raw", { fg = p.special })
  hl("@markup.quote", { fg = p.subtle_text, italic = true })
  hl("@markup.list", { fg = p.accent })

  hl("@diff.plus", { fg = p.add })
  hl("@diff.minus", { fg = p.delete })
  hl("@diff.delta", { fg = p.modified })

  -- C and C++ Tree-sitter captures
  hl("@keyword.import.c", { fg = p.keyword })
  hl("@keyword.import.cpp", { fg = p.keyword })
  hl("@type.builtin.c", { fg = p.special })
  hl("@type.builtin.cpp", { fg = p.special })
  hl("@type.qualifier.c", { fg = p.keyword })
  hl("@type.qualifier.cpp", { fg = p.keyword })
  hl("@function.call.cpp", { fg = p.function_ })
  hl("@function.method.call.cpp", { fg = p.function_ })
  hl("@variable.member.cpp", { fg = p.variable })
  hl("@property.cpp", { fg = p.variable })
  hl("@constant.macro.cpp", { fg = p.special })
  hl("@preproc.cpp", { fg = p.keyword })
  hl("@module.cpp", { fg = p.accent })
  hl("@namespace.cpp", { fg = p.accent })

  -- LSP semantic tokens
  hl("@lsp.type.class", { fg = p.function_ })
  hl("@lsp.type.struct", { fg = p.function_ })
  hl("@lsp.type.enum", { fg = p.function_ })
  hl("@lsp.type.interface", { fg = p.function_ })
  hl("@lsp.type.type", { fg = p.function_ })
  hl("@lsp.type.typeParameter", { fg = p.special })
  hl("@lsp.type.namespace", { fg = p.accent })
  hl("@lsp.type.function", { fg = p.function_ })
  hl("@lsp.type.method", { fg = p.function_ })
  hl("@lsp.type.macro", { fg = p.special })
  hl("@lsp.type.parameter", { fg = p.variable })
  hl("@lsp.type.variable", { fg = p.variable })
  hl("@lsp.type.property", { fg = p.variable })
  hl("@lsp.type.enumMember", { fg = p.constant })
  hl("@lsp.type.typeAlias", { fg = p.function_ })
  hl("@lsp.type.operator", { fg = p.constant })
  hl("@lsp.type.decorator", { fg = p.special })
  hl("@lsp.type.comment", { fg = p.subtle_text, italic = true })

  hl("@lsp.mod.deprecated", { strikethrough = true })
  hl("@lsp.mod.readonly", { italic = true })
  hl("@lsp.mod.static", { italic = true })
  hl("@lsp.mod.abstract", { italic = true })
  hl("@lsp.mod.defaultLibrary", { fg = p.special })
  hl("@lsp.mod.definition", { bold = true })

  -- Legacy C and C++ syntax groups
  hl("cBlock", { link = "Keyword" })
  hl("cType", { link = "Type" })
  hl("cStatement", { link = "Keyword" })
  hl("cConditional", { link = "Conditional" })
  hl("cRepeat", { link = "Repeat" })
  hl("cStorageClass", { link = "StorageClass" })
  hl("cStructure", { link = "Type" })
  hl("cInclude", { link = "Include" })
  hl("cPreProc", { link = "PreProc" })
  hl("cDefine", { link = "Define" })
  hl("cConstant", { link = "Constant" })
  hl("cString", { link = "String" })
  hl("cCharacter", { link = "Character" })
  hl("cNumber", { link = "Number" })
  hl("cOperator", { link = "Operator" })
  hl("cSpecial", { link = "Special" })
  hl("cComment", { link = "Comment" })

  hl("cppModifier", { link = "Keyword" })
  hl("cppStatement", { link = "Keyword" })
  hl("cppType", { link = "Type" })
  hl("cppAccess", { link = "Keyword" })
  hl("cppExceptions", { link = "Keyword" })
  hl("cppOperator", { link = "Operator" })
  hl("cppStructure", { link = "Structure" })

  -- TypeScript
  hl("typescriptImport", { link = "Include" })
  hl("typescriptKeyword", { link = "Keyword" })
  hl("typescriptFunction", { link = "Function" })

  -- C++ and QML semantic token variants
  hl("@lsp.type.variable.cpp", { link = "@lsp.type.variable" })
  hl("@lsp.type.property.qml", { link = "@lsp.type.property" })
  hl("@lsp.type.function.cpp", { link = "@lsp.type.function" })
  hl("@lsp.type.method.cpp", { link = "@lsp.type.method" })
  hl("@lsp.type.class.cpp", { link = "@lsp.type.class" })
  hl("@lsp.type.struct.cpp", { link = "@lsp.type.struct" })
  hl("@lsp.type.parameter.cpp", { link = "@lsp.type.parameter" })

  hl("@lsp.mod.declaration", {})
  hl("@lsp.mod.functionScope", {})
  hl("@lsp.typemod.variable.declaration", {})
  hl("@lsp.typemod.variable.definition", {})
  hl("@lsp.typemod.variable.functionScope", {})

  hl("qmlBindingProperty", { fg = p.variable })
end

return M
