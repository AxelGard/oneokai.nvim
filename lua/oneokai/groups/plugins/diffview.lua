return function(c, cfg, fg)
    return {
        DiffviewFilePanelTitle = { fg = c.green, fmt = "bold" },
        DiffviewFilePanelCounter = { fg = c.orange, fmt = "bold" },
        DiffviewFilePanelFileName = fg.fg,
        DiffviewNormal = { link = "Normal" },
        DiffviewCursorLine = { link = "CursorLine" },
        DiffviewVertSplit = { link = "VertSplit" },
        DiffviewSignColumn = { link = "SignColumn" },
        DiffviewStatusLine = { link = "StatusLine" },
        DiffviewStatusLineNC = { link = "StatusLineNC" },
        DiffviewEndOfBuffer = { link = "EndOfBuffer" },
        DiffviewFilePanelRootPath = fg.grey,
        DiffviewFilePanelPath = fg.grey,
        DiffviewFilePanelInsertions = fg.yellow,
        DiffviewFilePanelDeletions = fg.orange,
        DiffviewStatusAdded = fg.yellow,
        DiffviewStatusUntracked = fg.green,
        DiffviewStatusModified = fg.green,
        DiffviewStatusRenamed = fg.green,
        DiffviewStatusCopied = fg.green,
        DiffviewStatusTypeChange = fg.green,
        DiffviewStatusUnmerged = fg.green,
        DiffviewStatusUnknown = fg.orange,
        DiffviewStatusDeleted = fg.orange,
        DiffviewStatusBroken = fg.orange
    }
end
