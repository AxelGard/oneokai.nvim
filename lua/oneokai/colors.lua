local colors = require("oneokai.palette")
local util = require("oneokai.util")

local function select_colors()
	local selected = { none = "none" }
	local palette = colors[vim.g.oneokai_config.style] or colors.dark
	selected = vim.tbl_extend("force", selected, palette)
	selected = vim.tbl_extend("force", selected, vim.g.oneokai_config.colors)
	-- palettes can set their own dark_orange, otherwise it is derived from orange
	selected.dark_orange = selected.dark_orange or util.darken(selected.orange, 0.65)
	return selected
end

return select_colors()
