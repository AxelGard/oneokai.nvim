return function(c, cfg, colors)
    return {
        vimOption = colors.Orange,
        vimSetEqual = colors.Yellow,
        vimMap = colors.Orange,
        vimMapModKey = colors.Purple,
        vimNotation = colors.Orange,
        vimMapLhs = colors.Fg,
        vimMapRhs = colors.Green,
        vimVar = { fg = c.fg, fmt = cfg.code_style.variables },
        vimCommentTitle = { fg = c.light_grey, fmt = cfg.code_style.comments },
    }
end
