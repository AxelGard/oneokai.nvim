return function(c, cfg, colors)
    return {
        BufferCurrent = { fmt = "bold" },
        BufferCurrentMod = { fg = c.purple, fmt = "bold,italic" },
        BufferCurrentSign = { fg = c.orange },
        BufferInactiveMod = { fg = c.light_grey, bg = c.bg1, fmt = "italic" },
        BufferVisible = { fg = c.light_grey, bg = c.bg0 },
        BufferVisibleMod = { fg = c.yellow, bg = c.bg0, fmt = "italic" },
        BufferVisibleIndex = { fg = c.light_grey, bg = c.bg0 },
        BufferVisibleSign = { fg = c.light_grey, bg = c.bg0 },
        BufferVisibleTarget = { fg = c.light_grey, bg = c.bg0 },
    }
end
