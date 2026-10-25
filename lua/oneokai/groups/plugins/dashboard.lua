return function(c, cfg, fg)
    return {
        DashboardShortCut = fg.yellow,
        DashboardHeader = fg.green,
        DashboardCenter = fg.cyan,
        DashboardFooter = { fg = c.green, fmt = "italic" }
    }
end
