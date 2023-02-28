local colors = require("oneokai.palette")

local function select_colors()
	local selected = { none = "none" }
	selected = vim.tbl_extend("force", selected, colors[vim.g.oneokai_config.style])
	selected = vim.tbl_extend("force", selected, vim.g.oneokai_config.colors)
	return selected
end

return select_colors()
