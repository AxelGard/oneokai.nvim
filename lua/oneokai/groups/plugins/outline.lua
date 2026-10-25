return function(c, cfg, fg)
    local groups = {
        FocusedSymbol = { fg = c.orange, bg = c.bg2, fmt = "bold" },
        AerialLine = { fg = c.orange, bg = c.bg2, fmt = "bold" },
    }

    for kind, color in pairs(require("oneokai.groups.kinds")(c)) do
        groups["Aerial" .. kind .. "Icon"] = { fg = color }
    end

    return groups
end
