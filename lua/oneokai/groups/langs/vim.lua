return function(c, cfg, fg)
    return {
        vimOption = fg.orange,
        vimSetEqual = fg.yellow,
        vimMap = fg.orange,
        vimMapModKey = fg.purple,
        vimNotation = fg.orange,
        vimMapLhs = fg.fg,
        vimMapRhs = fg.green,
        vimVar = { fg = c.fg, fmt = cfg.code_style.variables },
        vimCommentTitle = { fg = c.light_grey, fmt = cfg.code_style.comments },
    }
end
