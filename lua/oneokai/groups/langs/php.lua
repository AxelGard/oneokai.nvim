return function(c, cfg, colors)
    return {
        phpFunctions = { fg = c.fg, fmt = cfg.code_style.functions },
        phpMethods = colors.Green,
        phpStructure = colors.Red,
        phpOperator = colors.Red,
        phpMemberSelector = colors.Fg,
        phpVarSelector = { fg = c.purple, fmt = cfg.code_style.variables },
        phpIdentifier = { fg = c.purple, fmt = cfg.code_style.variables },
        phpBoolean = colors.Cyan,
        phpNumber = colors.Purple,
        phpHereDoc = colors.Yellow,
        phpNowDoc = colors.Yellow,
        phpSCKeyword = { fg = c.red, fmt = cfg.code_style.keywords },
        phpFCKeyword = { fg = c.red, fmt = cfg.code_style.keywords },
        phpRegion = colors.Green
    }
end
