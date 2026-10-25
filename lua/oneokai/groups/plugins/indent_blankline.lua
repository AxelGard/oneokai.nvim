return function(c, cfg, fg)
    return {
        IndentBlanklineIndent1 = fg.green,
        IndentBlanklineIndent2 = fg.yellow,
        IndentBlanklineIndent3 = fg.cyan,
        IndentBlanklineIndent4 = fg.light_grey,
        IndentBlanklineIndent5 = fg.orange,
        IndentBlanklineIndent6 = fg.orange,
        IndentBlanklineChar = { fg = c.bg1, gui = "nocombine" },
        IndentBlanklineContext = { fg = c.purple, bg = c.bg3, bold = true },
        IndentBlanklineContextChar = { fg = c.bg1, gui = "nocombine" },
        IndentBlanklineContextStart = { sp = c.bg1, gui = "underline" },
        IndentBlanklineContextSpaceChar = { gui = "nocombine" },
    }
end
