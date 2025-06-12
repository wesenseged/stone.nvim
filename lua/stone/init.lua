local palettes = require("stone.palettes")
local highlights = require("stone.highlights")

local M = {}


local function hl(group, props)
  vim.api.nvim_set_hl(0, group, props)
end

function M.setup(opts)
  opts = opts or {}

  vim.opt.termguicolors = true

  -- Determine variant
  local variant = opts.variant or "base"
  local palette = palettes[variant] or palettes.base

  -- Apply transparent background if requested
  if opts.transparent_background then
    palette.bg = "NONE"
    palette.bg_panel = "NONE"
    palette.cursor_line = "NONE"
  end

  -- Apply color overrides
  if opts.color_overrides then
    for key, val in pairs(opts.color_overrides) do
      palette[key] = val
    end
  end

  -- Set background option for Neovim
  if variant == "dark" then
    vim.o.background = "dark"
  elseif variant == "light" then
    vim.o.background = "light"
  end

  vim.g.colors_name = "stone-" .. variant

  -- Apply styles (italic, bold) for specific groups
  highlights.apply(palette, opts.styles or {})

  -- Setup integrations if needed
  if opts.integrations then
    if opts.integrations.nvimtree then
      hl("NvimTreeNormal", { fg = palette.white_text, bg = palette.bg })
      hl("NvimTreeNormalNC", { fg = palette.white_text, bg = palette.bg })
      hl("NvimTreeEndOfBuffer", { fg = palette.bg, bg = palette.bg })
      hl("NvimTreeVertSplit", { fg = palette.bg, bg = palette.bg })
    end
    if opts.integrations.mason then
      hl("MasonNormal", { fg = palette.white_text, bg = palette.bg })
      hl("MasonHeader", { fg = palette.bg, bg = palette.accent, bold = true })
      hl("MasonHeaderSecondary", { fg = palette.accent, bg = palette.bg_panel, bold = true })
      hl("MasonHighlight", { fg = palette.accent })
      hl("MasonHighlightBlock", { fg = palette.bg, bg = palette.accent, bold = true })
      hl("MasonHighlightBlockBold", { fg = palette.bg, bg = palette.accent, bold = true })
      hl("MasonMuted", { fg = palette.subtle_text })
      hl("MasonMutedBlock", { fg = palette.subtle_text, bg = palette.bg_panel })
      hl("MasonError", { fg = palette.delete })
      hl("MasonWarning", { fg = palette.accent })
      hl("MasonInfo", { fg = palette.modified })
    end
    if opts.integrations.lazy then
      hl("LazyNormal", { fg = palette.white_text })
      hl("LazyProgressDone", { fg = palette.accent })
      hl("LazyProgressTodo", { fg = palette.divider })
      hl("LazyReasonStart", { fg = palette.accent })
      hl("LazyReasonPlugin", { fg = palette.function_ })
      hl("LazyReasonEvent", { fg = palette.constant })
      hl("LazyReasonCmd", { fg = palette.keyword })
      hl("LazyReasonFt", { fg = palette.variable })
      hl("LazyReasonKeys", { fg = palette.special })
      hl("LazyReasonRuntime", { fg = palette.constant })
      hl("LazyReasonSource", { fg = palette.string })
      hl("LazyReasonRequires", { fg = palette.subtle_text })
    end
    if opts.integrations.telescope then
      hl("TelescopeNormal", { fg = palette.white_text, bg = palette.bg_panel })
      hl("TelescopeBorder", { fg = palette.accent, bg = palette.bg_panel })
      hl("TelescopePromptBorder", { fg = palette.accent, bg = palette.bg_panel })
      hl("TelescopeResultsBorder", { fg = palette.accent, bg = palette.bg_panel })
      hl("TelescopePreviewBorder", { fg = palette.accent, bg = palette.bg_panel })
      hl("TelescopePromptTitle", { fg = palette.accent, bg = palette.bg_panel, bold = true })
      hl("TelescopeResultsTitle", { fg = palette.subtle_text, bg = palette.bg_panel })
      hl("TelescopePreviewTitle", { fg = palette.subtle_text, bg = palette.bg_panel })
      hl("TelescopeSelection", { fg = palette.white_text, bg = palette.cursor_line })
      hl("TelescopeMatching", { fg = palette.accent, bold = true })
      hl("TelescopePromptPrefix", { fg = palette.accent, bg = palette.bg_panel })
    end
    if opts.integrations.which_key then
      hl("WhichKey", { fg = palette.accent, bg = palette.bg })              -- Keys
      hl("WhichKeyGroup", { fg = palette.function_ })                       -- Group names
      hl("WhichKeyDesc", { fg = palette.special })                          -- Descriptions
      hl("WhichKeySeparator", { fg = palette.divider })                     -- Separator
      hl("WhichKeyFloat", { bg = palette.bg_panel })                        -- Background for the popup
      hl("NormalFloat", { fg = palette.white_text, bg = palette.bg_panel }) -- ← this is the key
      hl("FloatBorder", { fg = palette.divider, bg = palette.bg_panel })    -- Border of floating windows
    end
  end
end

return M
