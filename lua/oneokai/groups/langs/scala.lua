return function(c, cfg, colors)
    return {
        scalaNameDefinition = colors.Fg,
        scalaInterpolationBoundary = colors.Orange,
        scalaInterpolation = colors.Orange,
        scalaTypeOperator = colors.Orange,
        scalaOperator = colors.Orange,
        scalaKeywordModifier = { fg = c.orange, fmt = cfg.code_style.keywords },
    }
end
