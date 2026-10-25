return function(c, cfg, fg)
    return {
        latexTSInclude         = fg.red,
        latexTSFuncMacro       = { fg = c.fg, fmt = cfg.code_style.functions },
        latexTSEnvironment     = { fg = c.cyan, fmt = "bold" },
        latexTSEnvironmentName = fg.yellow,
        texCmdEnv              = fg.green,
        texEnvArgName          = fg.yellow,
        latexTSTitle           = fg.yellow,
        latexTSType            = fg.green,
        latexTSMath            = fg.purple,
        texMathZoneX           = fg.purple,
        texMathZoneXX          = fg.purple,
        texMathDelimZone       = fg.light_grey,
        texMathDelim           = fg.orange,
        texMathOper            = fg.orange,
        texCmd                 = fg.orange,
        texCmdPart             = fg.green,
        texCmdPackage          = fg.green,
        texPgfType             = fg.yellow,
    }
end
