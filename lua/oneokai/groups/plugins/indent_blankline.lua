return function(c, cfg, fg)
    return {
        IndentBlanklineIndent1 = fg.green,
        IndentBlanklineIndent2 = fg.yellow,
        IndentBlanklineIndent3 = fg.cyan,
        IndentBlanklineIndent4 = fg.light_grey,
        IndentBlanklineIndent5 = fg.orange,
        IndentBlanklineIndent6 = fg.orange,
        IndentBlanklineChar = { fg = c.bg1, fmt = "nocombine" },
        IndentBlanklineContext = { fg = c.purple, bg = c.bg3, fmt = "bold" },
        IndentBlanklineContextChar = { fg = c.bg1, fmt = "nocombine" },
        IndentBlanklineContextStart = { sp = c.bg1, fmt = "underline" },
        IndentBlanklineContextSpaceChar = { fmt = "nocombine" },
    }
end
