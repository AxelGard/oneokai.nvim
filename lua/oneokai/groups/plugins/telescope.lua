return function(c, cfg, colors)
    return {
        TelescopeBorder = colors.LightGrey,
        TelescopePromptBorder = colors.LightGrey,
        TelescopeResultsBorder = colors.LightGrey,
        TelescopePreviewBorder = colors.LightGrey,
        TelescopeMatching = { fg = c.purple, fmt = "bold" },
        TelescopePromptPrefix = colors.Red,
        TelescopeSelection = { bg = c.bg2 },
        TelescopeSelectionCaret = colors.Yellow
    }
end
