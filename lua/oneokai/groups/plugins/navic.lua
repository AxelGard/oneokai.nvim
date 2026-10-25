return function(c, cfg, fg)
    local groups = {
        NavicText = { fg = c.fg },
        NavicSeparator = { fg = c.light_grey },
    }

    for kind, color in pairs(require("oneokai.groups.kinds")(c)) do
        groups["NavicIcons" .. kind] = { fg = color }
    end

    return groups
end
