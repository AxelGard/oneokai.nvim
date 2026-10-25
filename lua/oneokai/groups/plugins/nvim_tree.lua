return function(c, cfg, fg)
    return {
        NvimTreeNormal = { fg = c.fg, bg = cfg.transparent and c.none or c.bg_d },
        NvimTreeVertSplit = { fg = c.bg_d, bg = cfg.transparent and c.none or c.bg_d },
        NvimTreeEndOfBuffer = { fg = cfg.ending_tildes and c.bg2 or c.bg_d, bg = cfg.transparent and c.none or c.bg_d },
        NvimTreeRootFolder = { fg = c.purple, fmt = "bold" },
        NvimTreeGitDirty = fg.yellow,
        NvimTreeGitNew = fg.green,
        NvimTreeGitDeleted = fg.orange,
        NvimTreeSpecialFile = { fg = c.yellow, fmt = "underline" },
        NvimTreeIndentMarker = fg.fg,
        NvimTreeImageFile = { fg = c.purple },
        NvimTreeSymlink = fg.orange,
        NvimTreeFolderName = fg.blue,
    }
end
