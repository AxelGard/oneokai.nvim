return function(c, cfg, fg)
    local groups = {
        CmpItemAbbr = fg.fg,
        CmpItemAbbrDeprecated = { fg = c.light_grey, fmt = "strikethrough" },
        CmpItemAbbrMatch = fg.cyan,
        CmpItemAbbrMatchFuzzy = { fg = c.cyan, fmt = "underline" },
        CmpItemMenu = fg.light_grey,
        CmpItemKind = { fg = c.orange, fmt = cfg.cmp_itemkind_reverse and "reverse" },
    }

    for kind, color in pairs(require("oneokai.groups.kinds")(c)) do
        groups["CmpItemKind" .. kind] = { fg = color, fmt = cfg.cmp_itemkind_reverse and "reverse" }
    end

    return groups
end
