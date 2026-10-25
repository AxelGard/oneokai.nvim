return function(c, cfg, colors)
    return {
        DiffviewFilePanelTitle = { fg = c.green, fmt = "bold" },
        DiffviewFilePanelCounter = { fg = c.orange, fmt = "bold" },
        DiffviewFilePanelFileName = colors.Fg,
        DiffviewNormal = { link = "Normal" },
        DiffviewCursorLine = { link = "CursorLine" },
        DiffviewVertSplit = { link = "VertSplit" },
        DiffviewSignColumn = { link = "SignColumn" },
        DiffviewStatusLine = { link = "StatusLine" },
        DiffviewStatusLineNC = { link = "StatusLineNC" },
        DiffviewEndOfBuffer = { link = "EndOfBuffer" },
        DiffviewFilePanelRootPath = colors.Grey,
        DiffviewFilePanelPath = colors.Grey,
        DiffviewFilePanelInsertions = colors.Yellow,
        DiffviewFilePanelDeletions = colors.Orange,
        DiffviewStatusAdded = colors.Yellow,
        DiffviewStatusUntracked = colors.Green,
        DiffviewStatusModified = colors.Green,
        DiffviewStatusRenamed = colors.Green,
        DiffviewStatusCopied = colors.Green,
        DiffviewStatusTypeChange = colors.Green,
        DiffviewStatusUnmerged = colors.Green,
        DiffviewStatusUnknown = colors.Orange,
        DiffviewStatusDeleted = colors.Orange,
        DiffviewStatusBroken = colors.Orange
    }
end
