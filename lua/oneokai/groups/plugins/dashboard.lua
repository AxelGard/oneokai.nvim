return function(c, cfg, colors)
    return {
        DashboardShortCut = colors.Yellow,
        DashboardHeader = colors.Green,
        DashboardCenter = colors.Cyan,
        DashboardFooter = { fg = c.green, fmt = "italic" }
    }
end
