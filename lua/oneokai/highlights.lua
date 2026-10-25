local c = require('oneokai.colors')
local cfg = vim.g.oneokai_config

local M = {}

-- Convert a group's settings into an nvim_set_hl spec.
-- Settings are { fg, bg, sp, fmt } where fmt is a comma separated list ("bold,italic"),
-- or { link = "OtherGroup" } to link to another group.
local function to_hl_spec(settings)
    if settings.link then return { link = settings.link } end
    local spec = { fg = settings.fg, bg = settings.bg, sp = settings.sp }
    if settings.fmt and settings.fmt ~= "none" then
        for attr in settings.fmt:gmatch("[^,%s]+") do spec[attr] = true end
    end
    return spec
end

local function vim_highlights(highlights)
    for group_name, group_settings in pairs(highlights) do
        vim.api.nvim_set_hl(0, group_name, to_hl_spec(group_settings))
    end
end

function M.setup()
    local groups = require("oneokai.groups").get(c, cfg)

    -- user defined highlights: colors can reference the palette with "$name"
    local function replace_color(color_name)
        if not color_name or color_name:sub(1, 1) ~= '$' then return color_name end
        local name = color_name:sub(2, -1)
        if not c[name] then
            vim.schedule(function()
                vim.notify('oneokai.nvim: unknown color "' .. name .. '"', vim.log.levels.ERROR,
                    { title = "oneokai.nvim" })
            end)
        end
        return c[name]
    end

    for group_name, group_settings in pairs(cfg.highlights) do
        local user = {
            fg = replace_color(group_settings.fg),
            bg = replace_color(group_settings.bg),
            sp = replace_color(group_settings.sp),
            fmt = group_settings.fmt,
            link = group_settings.link,
        }
        -- only the given attributes are overridden, the rest are kept from the theme
        local base = groups[group_name] or {}
        if base.link and not user.link then base = {} end
        groups[group_name] = vim.tbl_extend("force", base, user)
    end

    vim_highlights(groups)
end

return M
