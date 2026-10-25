local colors = require("oneokai.palette")

local function select_colors()
	local selected = { none = "none" }
	local palette = colors[vim.g.oneokai_config.style] or colors.dark
	selected = vim.tbl_extend("force", selected, palette)
	selected = vim.tbl_extend("force", selected, vim.g.oneokai_config.colors)
	return selected
end

return select_colors()
