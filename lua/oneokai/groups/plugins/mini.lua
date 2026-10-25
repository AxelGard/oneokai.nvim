return function(c, cfg, colors)
    return {
        MiniCompletionActiveParameter = { fmt = "underline" },

        MiniCursorword = { fmt = "underline" },
        MiniCursorwordCurrent = { fmt = "underline" },

        MiniIndentscopeSymbol = { fg = c.grey },
        MiniIndentscopePrefix = { fmt = "nocombine" }, -- Make it invisible

        MiniJump = { fg = c.orange, fmt = "underline", sp = c.orange },

        MiniJump2dSpot = { fg = c.orange, fmt = "bold,nocombine" },

        MiniStarterCurrent = { fmt = "nocombine" },
        MiniStarterFooter = { fg = c.orange, fmt = "italic" },
        MiniStarterHeader = colors.Yellow,
        MiniStarterInactive = { fg = c.grey, fmt = cfg.code_style.comments },
        MiniStarterItem = { fg = c.fg, bg = cfg.transparent and c.none or c.bg0 },
        MiniStarterItemBullet = { fg = c.grey },
        MiniStarterItemPrefix = { fg = c.yellow },
        MiniStarterSection = colors.LightGrey,
        MiniStarterQuery = { fg = c.cyan },

        MiniStatuslineDevinfo = { fg = c.fg, bg = c.bg2 },
        MiniStatuslineFileinfo = { fg = c.fg, bg = c.bg2 },
        MiniStatuslineFilename = { fg = c.grey, bg = c.bg1 },
        MiniStatuslineInactive = { fg = c.grey, bg = c.bg0 },
        MiniStatuslineModeCommand = { fg = c.bg0, bg = c.yellow, fmt = "bold" },
        MiniStatuslineModeInsert = { fg = c.bg0, bg = c.green, fmt = "bold" },
        MiniStatuslineModeNormal = { fg = c.bg0, bg = c.yellow, fmt = "bold" },
        MiniStatuslineModeOther = { fg = c.bg0, bg = c.cyan, fmt = "bold" },
        MiniStatuslineModeReplace = { fg = c.bg0, bg = c.orange, fmt = "bold" },
        MiniStatuslineModeVisual = { fg = c.bg0, bg = c.orange, fmt = "bold" },

        MiniSurround = { fg = c.bg0, bg = c.purple },

        MiniTablineCurrent = { fmt = "bold" },
        MiniTablineFill = { fg = c.grey, bg = c.bg1 },
        MiniTablineHidden = { fg = c.fg, bg = c.bg1 },
        MiniTablineModifiedCurrent = { fg = c.purple, fmt = "bold,italic" },
        MiniTablineModifiedHidden = { fg = c.light_grey, bg = c.bg1, fmt = "italic" },
        MiniTablineModifiedVisible = { fg = c.yellow, bg = c.bg0, fmt = "italic" },
        MiniTablineTabpagesection = { fg = c.bg0, bg = c.bg_yellow },
        MiniTablineVisible = { fg = c.light_grey, bg = c.bg0 },

        MiniTestEmphasis = { fmt = "bold" },
        MiniTestFail = { fg = c.orange, fmt = "bold" },
        MiniTestPass = { fg = c.yellow, fmt = "bold" },

        MiniTrailspace = { bg = c.orange },
    }
end
