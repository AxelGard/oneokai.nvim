local M = {}

M.styles_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light', 'idea_dark' }

-- other names for a style
M.style_aliases = { light = 'notdark' }

-- styles that use a light background
M.light_styles = { paper = true, notdark = true }

---Resolve a style name through the aliases ('light' -> 'notdark')
function M.resolve_style(style)
    return M.style_aliases[style] or style
end

M.config = {
    -- Main options --
    style = 'dark',    -- any style in palette.lua, e.g. 'dark', 'darker', 'idea_dark', or the light styles 'paper' and 'notdark' ('light' is the same as 'notdark')
    toggle_style_key = nil,
    toggle_style_list = M.styles_list,
    transparent = false,     -- don't set background
    term_colors = true,      -- if true enable the terminal
    ending_tildes = false,    -- show the end-of-buffer tildes
    cmp_itemkind_reverse = false,    -- reverse item kind highlights in cmp menu

    -- Changing Formats --
    code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },

    -- Lualine options --
    lualine = {
        transparent = false, -- center bar (c) transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Related --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl for diagnostics
        background = true,    -- use background color for virtual text
    },
}

return M;
