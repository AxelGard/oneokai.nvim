return function(c, cfg, colors)
    return {
        NvimTreeNormal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
        NvimTreeVertSplit = { fg = c.bg_d, bg = cfg.transparent and c.none or c.bg_d },
        NvimTreeEndOfBuffer = { fg = cfg.ending_tildes and c.bg2 or c.bg_d, bg = cfg.transparent and c.none or c.bg_d },
        NvimTreeRootFolder = { fg = c.purple, fmt = "bold" },
        NvimTreeGitDirty = colors.Yellow,
        NvimTreeGitNew = colors.Green,
        NvimTreeGitDeleted = colors.Orange,
        NvimTreeSpecialFile = { fg = c.yellow, fmt = "underline" },
        NvimTreeIndentMarker = colors.Fg,
        NvimTreeImageFile = { fg = c.purple },
        NvimTreeSymlink = colors.Orange,
        NvimTreeFolderName = colors.Blue,
    }
end
