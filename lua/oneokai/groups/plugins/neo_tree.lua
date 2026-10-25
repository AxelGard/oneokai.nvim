return function(c, cfg, colors)
    return {
        NeoTreeNormal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
        NeoTreeNormalNC = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
        NeoTreeVertSplit = { fg = c.bg1, bg = cfg.transparent and c.none or c.bg1 },
        NeoTreeWinSeparator = { fg = c.bg1, bg = cfg.transparent and c.none or c.bg1 },
        NeoTreeEndOfBuffer = { fg = cfg.ending_tildes and c.bg2 or c.bg_d, bg = cfg.transparent and c.none or c.bg_d },
        NeoTreeRootName = { fg = c.purple, fmt = "bold" },
        NeoTreeGitAdded = colors.Yellow,
        NeoTreeGitDeleted = colors.Orange,
        NeoTreeGitModified = colors.Yellow,
        NeoTreeGitConflict = { fg = c.orange, fmt = "bold,italic" },
        NeoTreeGitUntracked = { fg = c.orange, fmt = "italic" },
        NeoTreeIndentMarker = colors.Grey,
        NeoTreeSymbolicLinkTarget = colors.Orange,
    }
end
