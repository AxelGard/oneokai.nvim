return function(c, cfg, colors)
    return {
        NeotestAdapterName = { fg = c.orange, fmt = "bold" },
        NeotestDir = colors.Cyan,
        NeotestExpandMarker = colors.Grey,
        NeotestFailed = colors.Orange,
        NeotestFile = colors.Cyan,
        NeotestFocused = { fmt = "bold,italic" },
        NeotestIndent = colors.Grey,
        NeotestMarked = { fg = c.purple, fmt = "bold" },
        NeotestNamespace = colors.Green,
        NeotestPassed = colors.Yellow,
        NeotestRunning = colors.Yellow,
        NeotestWinSelect = { fg = c.cyan, fmt = "bold" },
        NeotestSkipped = colors.LightGrey,
        NeotestTarget = colors.Orange,
        NeotestTest = colors.Fg,
        NeotestUnknown = colors.LightGrey,
    }
end
