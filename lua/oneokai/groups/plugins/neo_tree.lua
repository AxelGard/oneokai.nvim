return function(c, cfg, fg)
    return {
        NeoTreeNormal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
        NeoTreeNormalNC = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
        NeoTreeVertSplit = { fg = c.bg1, bg = cfg.transparent and c.none or c.bg1 },
        NeoTreeWinSeparator = { fg = c.bg1, bg = cfg.transparent and c.none or c.bg1 },
        NeoTreeEndOfBuffer = { fg = cfg.ending_tildes and c.bg2 or c.bg_d, bg = cfg.transparent and c.none or c.bg_d },
        NeoTreeRootName = { fg = c.purple, fmt = "bold" },
        NeoTreeGitAdded = fg.yellow,
        NeoTreeGitDeleted = fg.orange,
        NeoTreeGitModified = fg.yellow,
        NeoTreeGitConflict = { fg = c.orange, fmt = "bold,italic" },
        NeoTreeGitUntracked = { fg = c.orange, fmt = "italic" },
        NeoTreeIndentMarker = fg.grey,
        NeoTreeSymbolicLinkTarget = fg.orange,
    }
end
