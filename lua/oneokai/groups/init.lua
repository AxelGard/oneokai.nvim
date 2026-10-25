-- Highlight groups, one module per area.
-- Each module returns `function(c, cfg, fg)` that returns a table of { GroupName = settings }.
-- `c.red` is a palette color ("#e86671"), `fg.red` is the group { fg = c.red }.
-- To add a plugin or language: create the file and add its name to the list below.
local M = {}

M.modules = {
    "editor",
    "syntax",
    "treesitter",
    "lsp",

    "langs.bash",
    "langs.c",
    "langs.c_sharp",
    "langs.cpp",
    "langs.html",
    "langs.java",
    "langs.json",
    "langs.kotlin",
    "langs.markdown",
    "langs.php",
    "langs.python",
    "langs.scala",
    "langs.tex",
    "langs.tsx",
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

-- Wrap a table so looking up a key that doesn't exist (e.g. `c.Red` instead of `c.red`)
-- warns with the file and line, instead of silently giving nil.
local warned = {}
local function strict(t, label)
    return setmetatable({}, {
        __index = function(_, key)
            local value = t[key]
            if value == nil then
                local info = debug.getinfo(2, "Sl")
                local where = info.short_src:gsub("^.*lua/oneokai/", "") .. ":" .. info.currentline
                local msg = string.format('oneokai.nvim: unknown color %s.%s (%s)', label, tostring(key), where)
                if not warned[msg] then
                    warned[msg] = true
                    vim.schedule(function() vim.notify(msg, vim.log.levels.WARN, { title = "oneokai.nvim" }) end)
                end
            end
            return value
        end,
    })
end

---Build all theme highlight groups
---@param c table palette colors
---@param cfg table oneokai config
---@return table groups
function M.get(c, cfg)
    -- fg.<color> is shorthand for a group that only sets that foreground color: fg.red == { fg = c.red }
    local fg = {}
    for name, color in pairs(c) do fg[name] = { fg = color } end

    local strict_c, strict_fg = strict(c, "c"), strict(fg, "fg")
    local groups = {}
    for _, name in ipairs(M.modules) do
        groups = vim.tbl_extend("force", groups, require("oneokai.groups." .. name)(strict_c, cfg, strict_fg))
    end
    return groups
end

return M
