return function(c, cfg, colors)
    local groups = {
        CmpItemAbbr = colors.Fg,
        CmpItemAbbrDeprecated = { fg = c.light_grey, fmt = "strikethrough" },
        CmpItemAbbrMatch = colors.Cyan,
        CmpItemAbbrMatchFuzzy = { fg = c.cyan, fmt = "underline" },
        CmpItemMenu = colors.LightGrey,
        CmpItemKind = { fg = c.orange, fmt = cfg.cmp_itemkind_reverse and "reverse" },
    }

    for kind, color in pairs(require("oneokai.groups.kinds")(c)) do
        groups["CmpItemKind" .. kind] = { fg = color, fmt = cfg.cmp_itemkind_reverse and "reverse" }
    end

    return groups
end
