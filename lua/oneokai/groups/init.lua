-- Highlight groups, one module per area.
-- Each module returns `function(c, cfg, colors)` that returns a table of { GroupName = settings }.
-- To add a plugin or language: create the file and add its name to the list below.
local M = {}

M.modules = {
    "editor",
    "syntax",
    "treesitter",
    "lsp",

    "langs.c",
    "langs.cpp",
    "langs.html",
    "langs.java",
    "langs.kotlin",
    "langs.markdown",
    "langs.php",
    "langs.python",
    "langs.scala",
    "langs.tex",
    "langs.vim",

    "plugins.ale",
    "plugins.barbar",
    "plugins.cmp",
    "plugins.coc",
    "plugins.dashboard",
    "plugins.diffview",
    "plugins.gitgutter",
    "plugins.gitsigns",
    "plugins.hop",
    "plugins.indent_blankline",
    "plugins.mini",
    "plugins.navic",
    "plugins.neo_tree",
    "plugins.neotest",
    "plugins.nvim_tree",
    "plugins.outline",
    "plugins.telescope",
    "plugins.ts_rainbow",
    "plugins.whichkey",
}

---Build all theme highlight groups
---@param c table palette colors
---@param cfg table oneokai config
---@return table groups
function M.get(c, cfg)
    -- shorthands for groups that only set a foreground color
    local colors = {
        Fg = { fg = c.fg },
        LightGrey = { fg = c.light_grey },
        Grey = { fg = c.grey },
        Red = { fg = c.red },
        Cyan = { fg = c.cyan },
        Yellow = { fg = c.yellow },
        Orange = { fg = c.orange },
        Green = { fg = c.green },
        Blue = { fg = c.blue },
        Purple = { fg = c.purple }
    }

    local groups = {}
    for _, name in ipairs(M.modules) do
        groups = vim.tbl_extend("force", groups, require("oneokai.groups." .. name)(c, cfg, colors))
    end
    return groups
end

return M
