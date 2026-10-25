return function(c, cfg, fg)
    return {
        phpFunctions = { fg = c.fg, fmt = cfg.code_style.functions },
        phpMethods = fg.green,
        phpStructure = fg.red,
        phpOperator = fg.red,
        phpMemberSelector = fg.fg,
        phpVarSelector = { fg = c.purple, fmt = cfg.code_style.variables },
        phpIdentifier = { fg = c.purple, fmt = cfg.code_style.variables },
        phpBoolean = fg.cyan,
        phpNumber = fg.purple,
        phpHereDoc = fg.yellow,
        phpNowDoc = fg.yellow,
        phpSCKeyword = { fg = c.red, fmt = cfg.code_style.keywords },
        phpFCKeyword = { fg = c.red, fmt = cfg.code_style.keywords },
        phpRegion = fg.green
    }
end
