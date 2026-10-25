return function(c, cfg, fg)
    return {
        TelescopeBorder = fg.light_grey,
        TelescopePromptBorder = fg.light_grey,
        TelescopeResultsBorder = fg.light_grey,
        TelescopePreviewBorder = fg.light_grey,
        TelescopeMatching = { fg = c.purple, fmt = "bold" },
        TelescopePromptPrefix = fg.red,
        TelescopeSelection = { bg = c.bg2 },
        TelescopeSelectionCaret = fg.yellow
    }
end
