return function(c, cfg, fg)
    return {
        NeotestAdapterName = { fg = c.orange, fmt = "bold" },
        NeotestDir = fg.cyan,
        NeotestExpandMarker = fg.grey,
        NeotestFailed = fg.orange,
        NeotestFile = fg.cyan,
        NeotestFocused = { fmt = "bold,italic" },
        NeotestIndent = fg.grey,
        NeotestMarked = { fg = c.purple, fmt = "bold" },
        NeotestNamespace = fg.green,
        NeotestPassed = fg.yellow,
        NeotestRunning = fg.yellow,
        NeotestWinSelect = { fg = c.cyan, fmt = "bold" },
        NeotestSkipped = fg.light_grey,
        NeotestTarget = fg.orange,
        NeotestTest = fg.fg,
        NeotestUnknown = fg.light_grey,
    }
end
