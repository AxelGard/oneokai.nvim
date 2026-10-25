return function(c, cfg, colors)
    return {
        latexTSInclude         = colors.Red,
        latexTSFuncMacro       = { fg = c.fg, fmt = cfg.code_style.functions },
        latexTSEnvironment     = { fg = c.cyan, fmt = "bold" },
        latexTSEnvironmentName = colors.Yellow,
        texCmdEnv              = colors.Green,
        texEnvArgName          = colors.Yellow,
        latexTSTitle           = colors.Yellow,
        latexTSType            = colors.Green,
        latexTSMath            = colors.Purple,
        texMathZoneX           = colors.Purple,
        texMathZoneXX          = colors.Purple,
        texMathDelimZone       = colors.LightGrey,
        texMathDelim           = colors.Orange,
        texMathOper            = colors.Orange,
        texCmd                 = colors.Orange,
        texCmdPart             = colors.Green,
        texCmdPackage          = colors.Green,
        texPgfType             = colors.Yellow,
    }
end
