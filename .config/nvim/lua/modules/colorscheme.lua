vim.opt.background = "dark"
-- require("tokyonight").setup({
-- 	style = "moon",
-- 	transparent = true,
-- 	terminal_colors = true,
-- })
vim.cmd([[colorscheme aurora-x]])

local transparent_groups = {

	-- neo-tree
	"NeoTreeNormal",
 	"NeoTreeNormalNC",
 	"NeoTreeEndOfBuffer",
  	"NeoTreeWinSeparator",
  	"NeoTreeVertSplit",
  	"NeoTreeFloatBorder",

	-- telescope
	"TelescopeNormal",
	"TelescopeBorder",
}

for _, group in ipairs(transparent_groups) do
	vim.api.nvim_set_hl(0, group, { bg = "none" })
end
