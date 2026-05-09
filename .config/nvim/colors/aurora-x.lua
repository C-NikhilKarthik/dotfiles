-- Aurora X colorscheme for Neovim
vim.opt.background = "dark"
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end
vim.g.colors_name = "aurora-x"

local c = {
	bg          = "#07090F",
	bg_alt      = "#15182B",
	bg_dark     = "#01030b",
	bg_panel    = "#0C0E19",
	selection   = "#262E47",
	fg          = "#A8BEFF",
	fg_dim      = "#576daf",
	fg_bright   = "#C7D5FF",
	fg_var      = "#EEFFFF",
	accent      = "#86A5FF",
	accent_hi   = "#A8BEFF",
	comment     = "#546E7A",
	keyword     = "#C792EA",
	func        = "#82AAFF",
	string      = "#C3E88D",
	class       = "#FFCB6B",
	number      = "#F78C6C",
	tag         = "#f07178",
	operator    = "#89DDFF",
	error       = "#FF5370",
	red         = "#dd5074",
	green       = "#64d389",
	purple      = "#c778db",
	yellow      = "#e6db7f",
	type        = "#B2CCD6",
}

local transparent = true -- set to false if you want the bg color
local bg = transparent and "NONE" or c.bg

local hl = function(group, opts) vim.api.nvim_set_hl(0, group, opts) end

-- Editor UI
hl("Normal",         { fg = c.fg,        bg = bg })
hl("NormalFloat",    { fg = c.fg,        bg = transparent and "NONE" or c.bg_alt })
hl("FloatBorder",    { fg = c.fg_dim,    bg = "NONE" })
hl("Cursor",         { fg = c.bg,        bg = c.accent })
hl("CursorLine",     { bg = transparent and "NONE" or c.bg_alt })
hl("CursorLineNr",   { fg = c.accent,    bold = true })
hl("LineNr",         { fg = c.fg_dim })
hl("SignColumn",     { bg = "NONE" })
hl("ColorColumn",    { bg = c.bg_alt })
hl("Visual",         { bg = c.selection })
hl("Search",         { fg = c.bg,        bg = c.accent })
hl("IncSearch",      { fg = c.bg,        bg = c.accent_hi })
hl("MatchParen",     { fg = c.accent,    bold = true, underline = true })
hl("Pmenu",          { fg = c.fg,        bg = c.bg_alt })
hl("PmenuSel",       { fg = c.accent,    bg = c.selection, bold = true })
hl("PmenuSbar",      { bg = c.bg_alt })
hl("PmenuThumb",     { bg = c.fg_dim })
hl("StatusLine",     { fg = c.bg,        bg = c.accent })
hl("StatusLineNC",   { fg = c.fg_dim,    bg = c.bg_alt })
hl("VertSplit",      { fg = c.bg_alt })
hl("WinSeparator",   { fg = c.bg_alt })
hl("TabLine",        { fg = c.fg_dim,    bg = c.bg })
hl("TabLineSel",     { fg = c.fg_bright, bg = c.bg, bold = true })
hl("TabLineFill",    { bg = c.bg })
hl("Folded",         { fg = c.fg_dim,    bg = c.bg_alt })
hl("FoldColumn",     { fg = c.fg_dim,    bg = "NONE" })
hl("NonText",        { fg = c.fg_dim })
hl("SpecialKey",     { fg = c.fg_dim })
hl("Title",          { fg = c.accent,    bold = true })
hl("Directory",      { fg = c.accent })
hl("EndOfBuffer",    { fg = c.bg })

-- Syntax
hl("Comment",        { fg = c.comment,   italic = true })
hl("Constant",       { fg = c.number })
hl("String",         { fg = c.string })
hl("Character",      { fg = c.string })
hl("Number",         { fg = c.number })
hl("Boolean",        { fg = c.number })
hl("Float",          { fg = c.number })
hl("Identifier",     { fg = c.fg_var })
hl("Function",       { fg = c.func })
hl("Statement",      { fg = c.keyword })
hl("Conditional",    { fg = c.keyword })
hl("Repeat",         { fg = c.keyword })
hl("Label",          { fg = c.keyword })
hl("Operator",       { fg = c.operator })
hl("Keyword",        { fg = c.keyword })
hl("Exception",      { fg = c.keyword })
hl("PreProc",        { fg = c.keyword })
hl("Include",        { fg = c.keyword })
hl("Define",         { fg = c.keyword })
hl("Macro",          { fg = c.keyword })
hl("Type",           { fg = c.class })
hl("StorageClass",   { fg = c.keyword })
hl("Structure",      { fg = c.class })
hl("Typedef",        { fg = c.class })
hl("Special",        { fg = c.operator })
hl("SpecialChar",    { fg = c.operator })
hl("Tag",            { fg = c.tag })
hl("Delimiter",      { fg = c.operator })
hl("SpecialComment", { fg = c.comment,   italic = true })
hl("Underlined",     { fg = c.accent,    underline = true })
hl("Error",          { fg = c.error })
hl("Todo",           { fg = c.yellow,    bold = true })

-- Treesitter
hl("@variable",          { fg = c.fg_var })
hl("@variable.builtin",  { fg = c.error,    italic = true })
hl("@variable.parameter",{ fg = c.number })
hl("@function",          { fg = c.func })
hl("@function.call",     { fg = c.func })
hl("@function.builtin",  { fg = c.func })
hl("@method",            { fg = c.func })
hl("@keyword",           { fg = c.keyword })
hl("@keyword.return",    { fg = c.keyword,  italic = true })
hl("@string",            { fg = c.string })
hl("@number",            { fg = c.number })
hl("@boolean",           { fg = c.number })
hl("@type",              { fg = c.class })
hl("@type.builtin",      { fg = c.type })
hl("@constant",          { fg = c.number })
hl("@constant.builtin",  { fg = c.number })
hl("@property",          { fg = c.tag })
hl("@field",             { fg = c.tag })
hl("@tag",               { fg = c.tag })
hl("@tag.attribute",     { fg = c.class,    italic = true })
hl("@punctuation",       { fg = c.operator })
hl("@operator",          { fg = c.operator })
hl("@comment",           { fg = c.comment,  italic = true })

-- Diagnostics
hl("DiagnosticError",    { fg = c.error })
hl("DiagnosticWarn",     { fg = c.yellow })
hl("DiagnosticInfo",     { fg = c.accent })
hl("DiagnosticHint",     { fg = c.operator })
hl("DiagnosticUnderlineError", { sp = c.error,  undercurl = true })
hl("DiagnosticUnderlineWarn",  { sp = c.yellow, undercurl = true })
hl("DiagnosticUnderlineInfo",  { sp = c.accent, undercurl = true })
hl("DiagnosticUnderlineHint",  { sp = c.operator, undercurl = true })

-- Git
hl("DiffAdd",        { fg = c.green,    bg = "#64d389" })
hl("DiffChange",     { fg = c.purple,   bg = "#15182B" })
hl("DiffDelete",     { fg = c.red,      bg = "#dd5074" })
hl("DiffText",       { fg = c.purple,   bg = c.selection })
hl("GitSignsAdd",    { fg = c.green })
hl("GitSignsChange", { fg = c.purple })
hl("GitSignsDelete", { fg = c.red })

-- Telescope
hl("TelescopeNormal",        { fg = c.fg,     bg = "NONE" })
hl("TelescopeBorder",        { fg = c.fg_dim, bg = "NONE" })
hl("TelescopeSelection",     { fg = c.accent, bg = c.selection, bold = true })
hl("TelescopeMatching",      { fg = c.accent_hi, bold = true })
hl("TelescopePromptPrefix",  { fg = c.accent })

-- Neo-tree
hl("NeoTreeNormal",       { fg = c.fg,     bg = "NONE" })
hl("NeoTreeNormalNC",     { fg = c.fg,     bg = "NONE" })
hl("NeoTreeEndOfBuffer",  { fg = c.bg,     bg = "NONE" })
hl("NeoTreeWinSeparator", { fg = c.bg_alt, bg = "NONE" })
hl("NeoTreeVertSplit",    { fg = c.bg_alt, bg = "NONE" })
hl("NeoTreeFloatBorder",  { fg = c.fg_dim, bg = "NONE" })
hl("NeoTreeRootName",     { fg = c.accent, bold = true })
hl("NeoTreeDirectoryName",{ fg = c.accent })
hl("NeoTreeDirectoryIcon",{ fg = c.accent })
hl("NeoTreeFileName",     { fg = c.fg })
hl("NeoTreeGitModified",  { fg = c.purple })
hl("NeoTreeGitAdded",     { fg = c.green })
hl("NeoTreeGitDeleted",   { fg = c.red })

-- Markdown
hl("@markup.heading",       { fg = c.string,    bold = true })
hl("@markup.italic",        { fg = c.tag,       italic = true })
hl("@markup.strong",        { fg = c.tag,       bold = true })
hl("@markup.link",          { fg = c.func })
hl("@markup.raw",           { fg = c.keyword })
hl("@markup.list",          { fg = c.fg_var })
