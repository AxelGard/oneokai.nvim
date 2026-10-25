return function(c, cfg, fg)
    return {
        scalaNameDefinition = fg.fg,
        scalaInterpolationBoundary = fg.orange,
        scalaInterpolation = fg.orange,
        scalaTypeOperator = fg.orange,
        scalaOperator = fg.orange,
        scalaKeywordModifier = { fg = c.orange, fmt = cfg.code_style.keywords },
    }
end
