return function(c, cfg, colors)
    return {
        IndentBlanklineIndent1 = colors.Green,
        IndentBlanklineIndent2 = colors.Yellow,
        IndentBlanklineIndent3 = colors.Cyan,
        IndentBlanklineIndent4 = colors.LightGrey,
        IndentBlanklineIndent5 = colors.Orange,
        IndentBlanklineIndent6 = colors.Orange,
        IndentBlanklineChar = { fg = c.bg1, gui = "nocombine" },
        IndentBlanklineContext = { fg = c.purple, bg = c.bg3, bold = true },
        IndentBlanklineContextChar = { fg = c.bg1, gui = "nocombine" },
        IndentBlanklineContextStart = { sp = c.bg1, gui = "underline" },
        IndentBlanklineContextSpaceChar = { gui = "nocombine" },
    }
end
